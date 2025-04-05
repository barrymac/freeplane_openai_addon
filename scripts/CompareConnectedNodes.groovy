import groovy.swing.SwingBuilder
import org.freeplane.features.map.NodeModel

import javax.swing.*
import java.awt.* // Needed for BorderLayout, GridBagLayout etc.

// --- Configuration and Dependencies ---

// Load the API caller functions from external file
def createApiCaller = new GroovyShell(this.class.classLoader).evaluate(
    new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/ApiCaller.groovy")
)
def apiCallerFunctions = createApiCaller([logger: logger, ui: ui, config: config])
def make_openai_call = apiCallerFunctions.make_openai_call
def make_openrouter_call = apiCallerFunctions.make_openrouter_call

// Load the message expander function from external file
def expandMessageLoader = new GroovyShell(this.class.classLoader).evaluate(
    new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageExpander.groovy")
)
def expandMessage = expandMessageLoader.expandMessage
def getBindingMap = expandMessageLoader.getBindingMap // Get the new helper function

// Load the message file handler functions from external file
def messageFileHandler = new GroovyShell(this.class.classLoader).evaluate(
    new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageFileHandler.groovy")
)
def loadMessagesFromFile = messageFileHandler.loadMessagesFromFile

// Load saved configuration
def apiKey = config.getProperty('openai.key', '')
def model = config.getProperty('openai.gpt_model', 'gpt-3.5-turbo')
def maxTokens = config.getProperty('openai.max_response_length', 1000) as int
def temperature = config.getProperty('openai.temperature', 0.7) as double
def provider = config.getProperty('openai.api_provider', 'openrouter')
def systemMessageIndex = config.getProperty('openai.system_message_index', 0) as int
// userMessageIndex is no longer needed here

// Define message file paths
def systemMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptSystemMessages.txt"
// userMessagesFilePath is no longer needed here
def defaultSystemMessagesFilePath = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultSystemMessages.txt"
// defaultUserMessagesFilePath is no longer needed here
def compareNodesUserMessageFilePath = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/compareNodesUserMessage.txt"

// --- Helper Functions ---

/**
 * Parses LLM response text into categories and points.
 * Assumes simple structure: "Category:\n- Point 1\n- Point 2" or just lines of text.
 */
def parseAnalysis(String analysisText) {
    def results = [:] // Map to store results, e.g., ["Pros": ["Point 1", "Point 2"], "Cons": ["Point A"]]
    def currentCategory = null
    def potentialPoints = []

    analysisText.eachLine { line ->
        line = line.trim()
        if (line.isEmpty()) return // continue

        // Basic heading detection (ends with ':')
        if (line.endsWith(':') && line.length() > 1) {
            // Store previous points if any
            if (currentCategory != null && !potentialPoints.isEmpty()) {
                results[currentCategory] = potentialPoints
            }
            // Start new category
            currentCategory = line.substring(0, line.length() - 1).trim()
            results[currentCategory] = [] // Initialize category
            potentialPoints = [] // Reset points buffer
        } else {
            // Assume it's a point for the current category or general analysis
            def point = line.replaceAll(/^[-*+•·]\s*/, '').trim() // Remove common leading bullets
            if (!point.isEmpty()) {
                potentialPoints.add(point)
            }
        }
    }

    // Add any remaining points under the last category
    if (currentCategory != null && !potentialPoints.isEmpty()) {
       results[currentCategory] = (results[currentCategory] ?: []) + potentialPoints
    }

    // Handle cases where no headings were found - treat the whole text as one category
    if (results.isEmpty() && !potentialPoints.isEmpty()) {
        results["Analysis"] = potentialPoints
    } else if (results.isEmpty() && !analysisText.trim().isEmpty()) {
        // Fallback if potentialPoints is also empty but text exists
         results["Analysis"] = analysisText.trim().split('\n').collect { it.trim() }.findAll { !it.isEmpty() }
    }

    // Filter out empty categories
    results = results.findAll { category, points -> !points.isEmpty() }

    return results
}

// Helper function to recursively add a tag to a node and its children
def addTagRecursively(node, tagName, logger) { // Added logger parameter
    if (node == null) return
    try {
        node.tags.add(tagName)
        node.children.each { child -> addTagRecursively(child, tagName, logger) } // Pass logger recursively
    } catch (Exception e) {
        // Log error if tagging fails for any reason
        logger.error("Failed to add tag '${tagName}' to node ${node.text}", e)
    }
}

/**
 * Formats the analysis map into an indented string and adds it as a branch.
 */
def addAnalysisToNodeAsBranch(def nodeProxy, Map analysisMap, String comparisonType) { // Accept NodeProxy
    logger.info("Attempting to add analysis to node: ${nodeProxy.text}")
    if (analysisMap.isEmpty()) {
        logger.warn("No analysis data to add for node: ${nodeProxy.text}")
        return
    }

    // Format the map into an indented string
    def builder = new StringBuilder()
    builder.append("Comparison (${comparisonType})\n") // Root of the new branch
    analysisMap.each { category, points ->
        builder.append("    ${category}\n") // Indent level 1 for category
        points.each { point ->
            builder.append("        ${point}\n") // Indent level 2 for points
        }
    }
    def formattedAnalysis = builder.toString().trim()
    logger.info("Formatted analysis string for node ${nodeProxy.text}:\n---\n${formattedAnalysis}\n---")

    // Add the formatted string as a new branch (this is undoable)
    try {
        // Get the set of children *before* adding
        def childrenBeforeSet = nodeProxy.children.toSet()
        nodeProxy.appendTextOutlineAsBranch(formattedAnalysis) // Call method on the NodeProxy
        // Get the set of children *after* adding
        def childrenAfterSet = nodeProxy.children.toSet()
        // Find the newly added root node (difference between the sets)
        def addedBranchRoot = (childrenAfterSet - childrenBeforeSet).find { true } // Get the single added node

        logger.info("Successfully called appendTextOutlineAsBranch for node: ${nodeProxy.text}")
        if (addedBranchRoot) {
            addTagRecursively(addedBranchRoot, "LLM_Generated", logger) // Add tag recursively, passing logger
            logger.info("CompareNodes: Tag 'LLM_Generated' applied to comparison branch starting with node: ${addedBranchRoot.text}")
        } else {
            logger.warn("CompareNodes: Could not identify newly added comparison branch root for tagging on node: ${nodeProxy.text}")
        }
    } catch (Exception e) {
        logger.error("Error calling appendTextOutlineAsBranch or tagging for node ${nodeProxy.text}", e) // Updated error message
        // Optionally, inform the user via ui.errorMessage if needed, but logging might be sufficient
    }
}
 
// --- Function to show custom comparison type dialog ---
def showComparisonDialog(NodeModel contextNode, String message, java.util.List<String> defaultTypes, String configKey) { // Use fully qualified java.util.List
    // Load previously saved custom types
    def savedTypesString = config.getProperty(configKey, '')
    def customTypes = savedTypesString ? savedTypesString.split('\\|').toList() : []
    customTypes = customTypes.findAll { !it.trim().isEmpty() } // Remove empty entries

    // Combine defaults and custom, ensuring defaults come first and no duplicates
    def allTypes = (defaultTypes + customTypes).unique()

    def selectedType = null // Variable to store the result
    def swing = new SwingBuilder()

    // Build the dialog
    def dialog = swing.dialog(
        title: "Define Comparison Type",
        modal: true, // Make it modal
        owner: ui.currentFrame, // Parent frame
        pack: true, // Size based on content
        locationRelativeTo: ui.currentFrame // Center on frame
    ) {
        panel(layout: new BorderLayout(5, 5), border: BorderFactory.createEmptyBorder(10, 10, 10, 10)) {
            // Message Label
            label(text: "<html>${message.replaceAll('\n', '<br>')}</html>", constraints: BorderLayout.NORTH) // Use HTML for multi-line

            // Editable ComboBox
            comboBox(id: 'typeCombo',
                     items: allTypes,
                     editable: true,
                     selectedItem: allTypes.isEmpty() ? "" : allTypes[0], // Select first item or empty
                     constraints: BorderLayout.CENTER)

            // Button Panel
            panel(layout: new FlowLayout(FlowLayout.RIGHT), constraints: BorderLayout.SOUTH) {
                button(text: 'OK', defaultButton: true, actionPerformed: {
                    // Get selected/entered item
                    selectedType = typeCombo.editor.item?.toString()?.trim() ?: ""
                    if (!selectedType.isEmpty()) {
                        // Check if it's a new custom type
                        if (!defaultTypes.contains(selectedType) && !customTypes.contains(selectedType)) {
                            customTypes.add(selectedType)
                            // Save updated custom types list
                            config.setProperty(configKey, customTypes.join('|'))
                            logger.info("Saved new custom comparison type: ${selectedType}")
                        }
                    }
                    // Get the button source, find its window (the dialog), and dispose it
                    SwingUtilities.getWindowAncestor(it.source).dispose()
                })
                button(text: 'Cancel', actionPerformed: {
                    selectedType = null // Indicate cancellation
                    // Get the button source, find its window (the dialog), and dispose it
                    SwingUtilities.getWindowAncestor(it.source).dispose()
                })
            }
        }
    }

    // Show the dialog (it's modal, so execution waits here)
    dialog.visible = true

    // Return the selected type (or null if cancelled)
    return selectedType
}


// --- Main Script Logic ---

// Load message templates using the handler
def defaultSystemMessages = new File(defaultSystemMessagesFilePath).text.trim()
// Load system messages as before (user might want to configure the general system persona)
def systemMessages = loadMessagesFromFile(systemMessagesFilePath, defaultSystemMessages)
// Load the specific user message template for this script directly
def compareNodesUserMessageTemplate = new File(compareNodesUserMessageFilePath).text.trim()


// Select the configured system template (with fallback)
logger.info("CompareNodes: Configured systemMessageIndex: ${systemMessageIndex}")
def systemMessageTemplate = systemMessageIndex < systemMessages.size() ? systemMessages[systemMessageIndex] : (systemMessages.isEmpty() ? "" : systemMessages[0])

logger.info("CompareNodes: Selected systemMessageTemplate:\n---\n${systemMessageTemplate}\n---")
logger.info("CompareNodes: Using dedicated userMessageTemplate from ${compareNodesUserMessageFilePath}:\n---\n${compareNodesUserMessageTemplate}\n---")

// 1. Check API Key
if (apiKey.isEmpty()) {
    if (provider == 'openrouter') {
        java.awt.Desktop.desktop.browse(new URI("https://openrouter.ai/keys"))
    } else {
        java.awt.Desktop.desktop.browse(new URI("https://platform.openai.com/account/api-keys"))
    }
    ui.errorMessage("API key is missing. Please configure it first via the LLM menu.")
    return
}

// Check if templates are loaded
if (systemMessageTemplate.isEmpty() || compareNodesUserMessageTemplate.isEmpty()) {
    ui.errorMessage("System message template or the dedicated compareNodesUserMessage.txt is missing or empty. Please check configuration or files.")
    return;
}

// 2. Get Selected Nodes and Find Connector Between Them
def selectedNodes = c.selecteds // Use 'selecteds' (plural) to get the list of selected nodes
if (selectedNodes.size() != 2) {
    ui.errorMessage("Please select exactly two nodes to compare.")
    return
}

def node1 = selectedNodes[0]
def node2 = selectedNodes[1]

// Find connectors between node1 and node2 (in either direction)
def connectorsOut = node1.connectorsOut.findAll { it.target == node2 }
def connectorsIn = node1.connectorsIn.findAll { it.source == node2 }
def allConnectorsBetween = connectorsOut + connectorsIn

if (allConnectorsBetween.size() == 0) {
    ui.errorMessage("The two selected nodes are not connected. Please add a connector between them.")
    return
}

if (allConnectorsBetween.size() > 1) {
    ui.errorMessage("There are multiple connectors between the selected nodes. Please ensure there is only one.")
    return
}

// We have exactly one connector, proceed. We don't strictly need the connector object itself
// for the current logic, but we've validated the connection exists.
def connector = allConnectorsBetween[0] // Optional: if we need connector info later (e.g., label)
logger.info("Found connector between selected nodes: ${node1.text} and ${node2.text}")

// Assign source/target based on selection order for consistency in prompts/output
def sourceNode = node1
def targetNode = node2

// --- Debugging Output ---
logger.info("CompareNodes: ui object type: ${ui.getClass().getName()}")
logger.info("CompareNodes: sourceNode object type: ${sourceNode.getClass().getName()}, value: ${sourceNode}")
logger.info("CompareNodes: sourceNode.delegate object type: ${sourceNode.delegate?.getClass()?.getName()}, value: ${sourceNode.delegate}") // Log delegate type
logger.info("CompareNodes: targetNode object type: ${targetNode.getClass().getName()}, value: ${targetNode}")
def dialogMessage = "Nodes '${sourceNode.text}' and '${targetNode.text}' are connected.\nEnter the type of comparison (e.g., 'Pros and Cons', 'Compare and Contrast', 'Strengths vs Weaknesses'):"
logger.info("CompareNodes: Dialog message: ${dialogMessage.toString()}") // Ensure it's logged as String

// Define default comparison types and config key
def defaultComparisonTypes = ["Pros and Cons", "Compare and Contrast", "Strengths vs Weaknesses", "Advantages and Disadvantages"]
def comparisonTypesConfigKey = "promptLlmAddOn.comparisonTypes"

// --- End Debugging Output ---

// 3. Get Comparison Type from User
// Use the custom dialog
String comparisonType = showComparisonDialog(
    sourceNode.delegate, // Provide NodeModel context (though not strictly used by custom dialog)
    dialogMessage.toString(),
    defaultComparisonTypes,
    comparisonTypesConfigKey
)

if (comparisonType == null || comparisonType.trim().isEmpty()) {
    // User cancelled or entered nothing
    logger.info("User cancelled comparison input.")
    return
}
comparisonType = comparisonType.trim()

// 4. Prepare Prompts using loaded templates
// System message is used directly
def systemPrompt = systemMessageTemplate

// Use the specific template loaded earlier
def mutableUserMessageTemplate = compareNodesUserMessageTemplate as String
// No need to check for $comparisonType placeholder, as we control this file.
logger.info("CompareNodes: Final userMessageTemplate for expansion:\n---\n${mutableUserMessageTemplate}\n---")

// --- Inline expansion for source node ---
def sourceBinding = getBindingMap(sourceNode) // Call the standalone function
sourceBinding['comparisonType'] = comparisonType // Add specific variable
logger.info("CompareNodes: Source Binding Map: ${sourceBinding}")
def sourceEngine = new groovy.text.SimpleTemplateEngine()
def sourceUserPrompt = sourceEngine.createTemplate(mutableUserMessageTemplate).make(sourceBinding).toString()
logger.info("CompareNodes: Source User Prompt:\n${sourceUserPrompt}") // Log generated prompt

// --- Inline expansion for target node ---
def targetBinding = getBindingMap(targetNode) // Call the standalone function
targetBinding['comparisonType'] = comparisonType // Add specific variable
logger.info("CompareNodes: Target Binding Map: ${targetBinding}")
def targetEngine = new groovy.text.SimpleTemplateEngine()
def targetUserPrompt = targetEngine.createTemplate(mutableUserMessageTemplate).make(targetBinding).toString()
logger.info("CompareNodes: Target User Prompt:\n${targetUserPrompt}") // Log generated prompt

// 5. Show Progress Dialog
def swingBuilder = new SwingBuilder()
def dialog = swingBuilder.dialog(title: "Analyzing Nodes with LLM...",
        owner: ui.currentFrame,
        modal: false, // Non-modal
        resizable: false,
        defaultCloseOperation: javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE) { // Prevent manual closing - Use fully qualified name
    swingBuilder.panel(layout: new java.awt.BorderLayout()) { // Use fully qualified name
        label(text: "Requesting analysis for '${sourceNode.text}' and '${targetNode.text}' based on '${comparisonType}'. Please wait...", constraints: java.awt.BorderLayout.CENTER) // Use fully qualified name
    }
}
dialog.pack()
ui.setDialogLocationRelativeTo(dialog, ui.currentFrame) // Center on frame
dialog.setVisible(true)

// 6. Run API Calls in Background Thread
def workerThread = new Thread({
    String sourceApiResponse = null
    String targetApiResponse = null
    String errorMessage = null

    try {
        // --- Call API for Source Node ---
        def sourcePayloadMap = [
            'model': model,
            'messages': [
                [role: 'system', content: systemPrompt],
                [role: 'user', content: sourceUserPrompt]
            ],
            'temperature': temperature,
            'max_tokens': maxTokens
        ]
        logger.info("Requesting analysis for source node: ${sourceNode.text}")
        sourceApiResponse = (provider == 'openrouter') ?
            make_openrouter_call(apiKey, sourcePayloadMap) :
            make_openai_call(apiKey, sourcePayloadMap)

        if (sourceApiResponse == null || sourceApiResponse.isEmpty()) {
            throw new Exception("Received empty or null response for source node.")
        }

        // --- Call API for Target Node ---
         def targetPayloadMap = [
            'model': model,
            'messages': [
                [role: 'system', content: systemPrompt],
                [role: 'user', content: targetUserPrompt]
            ],
            'temperature': temperature,
            'max_tokens': maxTokens
        ]
        logger.info("Requesting analysis for target node: ${targetNode.text}")
        targetApiResponse = (provider == 'openrouter') ?
            make_openrouter_call(apiKey, targetPayloadMap) :
            make_openai_call(apiKey, targetPayloadMap)

        if (targetApiResponse == null || targetApiResponse.isEmpty()) {
            throw new Exception("Received empty or null response for target node.")
        }

        // --- Process Responses ---
        def jsonSlurper = new groovy.json.JsonSlurper()

        def sourceJsonResponse = jsonSlurper.parseText(sourceApiResponse)
        def sourceResponseContent = sourceJsonResponse?.choices[0]?.message?.content
        if (!sourceResponseContent) throw new Exception("Could not extract content from source response: ${sourceApiResponse}")

        def targetJsonResponse = jsonSlurper.parseText(targetApiResponse)
        def targetResponseContent = targetJsonResponse?.choices[0]?.message?.content
        if (!targetResponseContent) throw new Exception("Could not extract content from target response: ${targetApiResponse}")

        logger.info("Source Node Analysis:\n${sourceResponseContent}")
        logger.info("Target Node Analysis:\n${targetResponseContent}")

        // Parse responses
        def sourceAnalysis = parseAnalysis(sourceResponseContent)
        def targetAnalysis = parseAnalysis(targetResponseContent)

        // --- Update Map on EDT ---
        SwingUtilities.invokeLater {
            dialog.dispose() // Close progress dialog first
           if (sourceAnalysis.isEmpty() && targetAnalysis.isEmpty()) {
                ui.informationMessage("The LLM analysis did not yield structured results for either node.")
           } else {
                try {
                    // Call the standalone function, passing the node proxy
                    addAnalysisToNodeAsBranch(sourceNode, sourceAnalysis, comparisonType) // Call function directly
                    addAnalysisToNodeAsBranch(targetNode, targetAnalysis, comparisonType) // Call function directly
                    ui.informationMessage("Comparison analysis added to both nodes.") // Show success only if no exceptions during add
                } catch (Exception e) {
                    // Catch any unexpected errors during the add process on the EDT
                    logger.error("Error during addAnalysisToNodeAsBranch calls on EDT", e)
                    ui.errorMessage("Failed to add analysis results to the map. Check logs. Error: ${e.message}")
                }
           }
       }

    } catch (Exception e) {
        logger.error("LLM Comparison failed", e as Throwable) // Cast Exception to Throwable for logger
        errorMessage = "LLM Comparison Error: ${e.message}"
        // Ensure dialog is closed and error shown on EDT
        SwingUtilities.invokeLater {
            dialog.dispose()
            ui.errorMessage(errorMessage)
        }
    }
})
workerThread.setContextClassLoader(this.class.classLoader) // Important for GroovyShell dependencies
workerThread.start()
