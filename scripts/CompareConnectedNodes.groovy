import groovy.swing.SwingBuilder
import org.freeplane.features.map.NodeModel
import javax.swing.*
import java.awt.*

// --- Load Core Dependencies ---
def addonsDir = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn"

// Load the ConfigLoader
def ConfigManager = new GroovyShell(this.class.classLoader).evaluate(
    new File("${addonsDir}/lib/ConfigLoader.groovy")
)
// Get configuration values
def configMap = ConfigManager.loadBaseConfig(config)
def apiKey = configMap.apiKey
def model = configMap.model
def maxTokens = configMap.maxTokens
def temperature = configMap.temperature
def provider = configMap.provider
def systemMessageIndex = configMap.systemMessageIndex

// Load the DependencyLoader
def dependencyLoader = new GroovyShell(this.class.classLoader).evaluate(
    new File("${addonsDir}/lib/DependencyLoader.groovy")
)
// Load all dependencies
def deps = dependencyLoader.loadDependencies(config, logger, ui)

// Extract specific functions from dependencies
def make_openai_call = deps.apiCaller.make_openai_call
def make_openrouter_call = deps.apiCaller.make_openrouter_call
def getBindingMap = deps.messageExpander.getBindingMap
def parseAnalysis = deps.responseParser.parseAnalysis

// Load the DialogHelper
def DialogHelperClass = new GroovyShell(this.class.classLoader).evaluate(
    new File("${addonsDir}/lib/DialogHelper.groovy")
)

// Load custom exceptions
def exceptions = new GroovyShell(this.class.classLoader).evaluate(
    new File("${addonsDir}/lib/Exceptions.groovy")
)
def ValidationException = exceptions.ValidationException

// Load the NodeHelper
def nodeHelper = new GroovyShell(this.class.classLoader).evaluate(
    new File("${addonsDir}/lib/NodeHelper.groovy")
)

// Load the MessageLoader
def messageLoader = new GroovyShell(this.class.classLoader).evaluate(
    new File("${addonsDir}/lib/MessageLoader.groovy")
)
def messages = messageLoader.loadComparisonMessages(config)
def systemMessageTemplate = messages.systemTemplate
def compareNodesUserMessageTemplate = messages.userTemplate

// --- Main Script Logic ---

// Wrap the entire script in a try-catch block for better error handling
try {
    // 1. Check API Key
    if (apiKey.isEmpty()) {
        if (provider == 'openrouter') {
            java.awt.Desktop.desktop.browse(new URI("https://openrouter.ai/keys"))
        } else {
            java.awt.Desktop.desktop.browse(new URI("https://platform.openai.com/account/api-keys"))
        }
        throw new ValidationException("API key is missing. Please configure it first via the LLM menu.")
    }

    // Check if templates are loaded
    if (systemMessageTemplate.isEmpty() || compareNodesUserMessageTemplate.isEmpty()) {
        throw new ValidationException("System message template or the dedicated compareNodesUserMessage.txt is missing or empty. Please check configuration or files.")
    }

    // 2. Get Selected Nodes and Find Connector Between Them
    def selectedNodes = c.selecteds
    if (selectedNodes.size() != 2) {
        throw new ValidationException("Please select exactly two nodes to compare.")
    }

    def sourceNode = selectedNodes[0]
    def targetNode = selectedNodes[1]

    // Find connectors between nodes (in either direction)
    def connectorsOut = sourceNode.connectorsOut.findAll { it.target == targetNode }
    def connectorsIn = sourceNode.connectorsIn.findAll { it.source == targetNode }
    def allConnectorsBetween = connectorsOut + connectorsIn

    if (allConnectorsBetween.size() == 0) {
        throw new ValidationException("The two selected nodes are not connected. Please add a connector between them.")
    }

    if (allConnectorsBetween.size() > 1) {
        throw new ValidationException("There are multiple connectors between the selected nodes. Please ensure there is only one.")
    }

    // Log successful connection validation
    logger.info("Found connector between selected nodes: ${sourceNode.text} and ${targetNode.text}")

    // 3. Get Comparison Type from User
    def dialogMessage = "Nodes '${sourceNode.text}' and '${targetNode.text}' are connected.\nEnter the type of comparison (e.g., 'Pros and Cons', 'Compare and Contrast', 'Strengths vs Weaknesses'):"
    def defaultComparisonTypes = ["Pros and Cons", "Compare and Contrast", "Strengths vs Weaknesses", "Advantages and Disadvantages"]
    def comparisonTypesConfigKey = "promptLlmAddOn.comparisonTypes"

    String comparisonType = DialogHelperClass.showComparisonDialog(
        ui, 
        config, 
        sourceNode.delegate, 
        dialogMessage,
        defaultComparisonTypes,
        comparisonTypesConfigKey
    )

    if (comparisonType == null || comparisonType.trim().isEmpty()) {
        logger.info("User cancelled comparison input.")
        return
    }
    comparisonType = comparisonType.trim()

    // 4. Prepare Prompts using loaded templates
    logger.info("CompareNodes: Final userMessageTemplate for expansion:\n---\n${compareNodesUserMessageTemplate}\n---")

    // --- Prepare source node prompt ---
    def sourceBinding = getBindingMap(sourceNode)
    sourceBinding['comparisonType'] = comparisonType
    logger.info("CompareNodes: Source Binding Map: ${sourceBinding}")
    def sourceEngine = new groovy.text.SimpleTemplateEngine()
    def sourceUserPrompt = sourceEngine.createTemplate(compareNodesUserMessageTemplate).make(sourceBinding).toString()
    logger.info("CompareNodes: Source User Prompt:\n${sourceUserPrompt}")

    // --- Prepare target node prompt ---
    def targetBinding = getBindingMap(targetNode)
    targetBinding['comparisonType'] = comparisonType
    logger.info("CompareNodes: Target Binding Map: ${targetBinding}")
    def targetEngine = new groovy.text.SimpleTemplateEngine()
    def targetUserPrompt = targetEngine.createTemplate(compareNodesUserMessageTemplate).make(targetBinding).toString()
    logger.info("CompareNodes: Target User Prompt:\n${targetUserPrompt}")

    // 5. Show Progress Dialog
    def progressMessage = "Requesting analysis for '${sourceNode.text}' and '${targetNode.text}' based on '${comparisonType}'. Please wait..."
    def dialog = DialogHelperClass.createProgressDialog(ui, "Analyzing Nodes with LLM...", progressMessage)
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
                    [role: 'system', content: systemMessageTemplate],
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
                    [role: 'system', content: systemMessageTemplate],
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
            if (!sourceResponseContent?.trim()) throw new Exception("Empty content in source response. Model may have hit token limit.")

            def targetJsonResponse = jsonSlurper.parseText(targetApiResponse)
            def targetResponseContent = targetJsonResponse?.choices[0]?.message?.content
            if (!targetResponseContent?.trim()) throw new Exception("Empty content in target response. Model may have hit token limit.")

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
                        // Add analysis branches to nodes
                        nodeHelper.addAnalysisToNodeAsBranch(sourceNode, sourceAnalysis, comparisonType, model, logger)
                        nodeHelper.addAnalysisToNodeAsBranch(targetNode, targetAnalysis, comparisonType, model, logger)
                        ui.informationMessage("Comparison analysis added to both nodes.")
                    } catch (Exception e) {
                        logger.error("Error during addAnalysisToNodeAsBranch calls on EDT", e as Throwable)
                        ui.errorMessage("Failed to add analysis results to the map. Check logs. Error: ${e.message}")
                    }
                }
            }

        } catch (Exception e) {
            logger.error("LLM Comparison failed", e as Throwable)
            errorMessage = "LLM Comparison Error: ${e.message}"
            // Ensure dialog is closed and error shown on EDT
            SwingUtilities.invokeLater {
                dialog.dispose()
                ui.errorMessage(errorMessage)
            }
        }
    })
    workerThread.setContextClassLoader(this.class.classLoader)
    workerThread.start()

} catch (ValidationException e) {
    // Handle expected validation errors
    ui.errorMessage(e.message)
} catch (Exception e) {
    // Handle unexpected errors
    logger.error("Unexpected error in CompareConnectedNodes script", e as Throwable)
    ui.errorMessage("An unexpected error occurred: ${e.message}")
}
