import groovy.swing.SwingBuilder
import javax.swing.JOptionPane
import javax.swing.SwingUtilities
import javax.swing.WindowConstants
import java.awt.BorderLayout
import org.freeplane.features.map.NodeModel
import org.freeplane.features.map.mindmap.MindMapController
import org.freeplane.features.mode.Controller
import org.freeplane.features.undo.mindmap.AddNodeTransaction

// --- Configuration and Dependencies ---

// Load the API caller functions from external file
def createApiCaller = new GroovyShell(this.class.classLoader).evaluate(
    new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/ApiCaller.groovy")
)
def apiCallerFunctions = createApiCaller([logger: logger, ui: ui, config: config])
def make_openai_call = apiCallerFunctions.make_openai_call
def make_openrouter_call = apiCallerFunctions.make_openrouter_call

// Load saved configuration
def apiKey = config.getProperty('openai.key', '')
def model = config.getProperty('openai.gpt_model', 'gpt-3.5-turbo')
def maxTokens = config.getProperty('openai.max_response_length', 1000) as int
def temperature = config.getProperty('openai.temperature', 0.7) as double
def provider = config.getProperty('openai.api_provider', 'openrouter')

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

/**
 * Adds the parsed analysis map as child nodes to the given node.
 */
def addAnalysisToNode(NodeModel node, Map analysisMap, String comparisonType) {
    if (analysisMap.isEmpty()) {
        logger.warn("No analysis data to add for node: ${node.text}")
        return
    }

    // Use transaction for undo support
    MindMapController mmc = Controller.currentModeController.mindMapController
    mmc.changeSupport.fireMapChanging(mmc.map)
    AddNodeTransaction transaction = new AddNodeTransaction(node.mindMap)
    try {
        // Create a root node for this comparison
        NodeModel comparisonRoot = node.createChild()
        comparisonRoot.text = "Comparison (${comparisonType})"
        comparisonRoot.style = 'bubble' // Optional styling
        transaction.addNode(comparisonRoot, node, node.children.size(), false)

        analysisMap.each { category, points ->
            if (!points.isEmpty()) {
                NodeModel categoryNode = comparisonRoot.createChild()
                categoryNode.text = category
                transaction.addNode(categoryNode, comparisonRoot, comparisonRoot.children.size(), false)
                points.each { point ->
                    NodeModel pointNode = categoryNode.createChild()
                    pointNode.text = point
                    transaction.addNode(pointNode, categoryNode, categoryNode.children.size(), false)
                }
            }
        }
        transaction.commit()
        c.select(comparisonRoot) // Select the newly added comparison root
    } catch (Exception e) {
        logger.error("Failed to add analysis nodes transactionally", e)
        transaction.rollback()
        ui.errorMessage("Failed to add analysis nodes: ${e.message}")
    } finally {
        mmc.changeSupport.fireMapChanged(mmc.map)
    }
}


// --- Main Script Logic ---

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

// 2. Get Selected Connector and Nodes
def connectors = c.getSelectedConnectors()
if (connectors.size() != 1) {
    ui.errorMessage("Please select exactly one connector between two nodes.")
    return
}
def connector = connectors.get(0)
def sourceNode = connector.getSource()
def targetNode = connector.getTarget()

if (sourceNode == null || targetNode == null) {
    ui.errorMessage("The selected connector is not properly linked between two nodes.")
    return
}

// 3. Get Comparison Type from User
String comparisonType = ui.showInputDialog(
    ui.currentFrame, // Parent window context
    "Enter the type of comparison (e.g., 'Pros and Cons', 'Compare and Contrast', 'Strengths vs Weaknesses'):", // Message
    "Define Comparison Type", // Title
    JOptionPane.PLAIN_MESSAGE, // Message type
    null, // Icon (null for default)
    null, // Selection values (null for free text)
    "Pros and Cons" // Initial value
)

if (comparisonType == null || comparisonType.trim().isEmpty()) {
    // User cancelled or entered nothing
    logger.info("User cancelled comparison input.")
    return
}
comparisonType = comparisonType.trim()

// 4. Prepare Prompts (using a simple system message)
def systemMessage = """
You are an analytical assistant. Analyze the provided topic based on the requested comparison type.
Structure your response clearly using the comparison terms as headings (e.g., "Pros:", "Cons:").
Provide concise points under each heading.
"""

def sourceUserMessage = """
Analyze the following topic based on the comparison type "${comparisonType}".

Topic:
${sourceNode.plainText}
"""

def targetUserMessage = """
Analyze the following topic based on the comparison type "${comparisonType}".

Topic:
${targetNode.plainText}
"""

// 5. Show Progress Dialog
def swingBuilder = new SwingBuilder()
def dialog = swingBuilder.dialog(title: "Analyzing Nodes with LLM...",
        owner: ui.currentFrame,
        modal: false, // Non-modal
        resizable: false,
        defaultCloseOperation: WindowConstants.DO_NOTHING_ON_CLOSE) { // Prevent manual closing
    swingBuilder.panel(layout: new BorderLayout()) {
        label(text: "Requesting analysis for '${sourceNode.text}' and '${targetNode.text}' based on '${comparisonType}'. Please wait...", constraints: BorderLayout.CENTER)
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
                [role: 'system', content: systemMessage],
                [role: 'user', content: sourceUserMessage]
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
                [role: 'system', content: systemMessage],
                [role: 'user', content: targetUserMessage]
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
                addAnalysisToNode(sourceNode, sourceAnalysis, comparisonType)
                addAnalysisToNode(targetNode, targetAnalysis, comparisonType)
                ui.informationMessage("Comparison analysis added to both nodes.")
            }
        }

    } catch (Exception e) {
        logger.error("LLM Comparison failed", e)
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
