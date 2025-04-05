import groovy.swing.SwingBuilder
import org.freeplane.features.map.NodeModel
import javax.swing.*
import java.awt.*

// --- Load Core Dependencies ---
def addonsDir = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn"

// Load DependencyLoader first
def dependencyLoader = new GroovyShell(this.class.classLoader).evaluate(
    new File("${addonsDir}/lib/DependencyLoader.groovy")
)
// Load all dependencies
def deps = dependencyLoader.loadDependencies(config, logger, ui)

// Extract needed functions/classes from deps
def ConfigManager = deps.configManager
def make_api_call = deps.apiCaller.make_api_call
def getBindingMap = deps.messageExpander.getBindingMap
def parseAnalysis = deps.responseParser.parseAnalysis
def DialogHelper = deps.dialogHelper
def NodeHelper = deps.nodeHelperUtils.NodeHelper
def addAnalysisToNodeAsBranch = deps.nodeHelperUtils.NodeHelper.&addAnalysisToNodeAsBranch
def MessageLoader = deps.messageLoader
def addModelTagRecursively = deps.nodeTagger.addModelTagRecursively
def ValidationExceptionClass = deps.exceptions

// Load configuration using ConfigManager
def configMap = ConfigManager.loadBaseConfig(config)
def apiKey = configMap.apiKey
def model = configMap.model
def maxTokens = configMap.maxTokens
def temperature = configMap.temperature
def provider = configMap.provider

// Load comparison messages using MessageLoader from deps
def messages = MessageLoader.loadComparisonMessages(config)
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
        throw new ValidationExceptionClass("API key is missing. Please configure it first via the LLM menu.")
    }

    // Check if templates are loaded
    if (systemMessageTemplate.isEmpty() || compareNodesUserMessageTemplate.isEmpty()) {
        throw new ValidationExceptionClass("System message template or the dedicated compareNodesUserMessage.txt is missing or empty. Please check configuration or files.")
    }

    // 2. Get Selected Nodes and Validate Connection (Use NodeHelper class from deps)
    def selectedNodes = c.selecteds
    // Use the static method directly via the class obtained from deps
    def (sourceNode, targetNode) = NodeHelper.validateAndGetConnectedNodes(selectedNodes) // This might throw ValidationException

    logger.info("Found connector between selected nodes: ${sourceNode.text} and ${targetNode.text}")

    // 3. Get Comparison Type from User
    def dialogMessage = "Nodes '${sourceNode.text}' and '${targetNode.text}' are connected.\nEnter the type of comparison (e.g., 'Pros and Cons', 'Compare and Contrast', 'Strengths vs Weaknesses'):"
    def defaultComparisonTypes = ["Pros and Cons", "Compare and Contrast", "Strengths vs Weaknesses", "Advantages and Disadvantages"]
    def comparisonTypesConfigKey = "promptLlmAddOn.comparisonTypes"

    String comparisonType = DialogHelper.showComparisonDialog(
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
    def dialog = DialogHelper.createProgressDialog(ui, "Analyzing Nodes with LLM...", progressMessage)
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
            // Use the unified API call function from deps
            sourceApiResponse = make_api_call(provider, apiKey, sourcePayloadMap)

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
            // Use the unified API call function from deps
            targetApiResponse = make_api_call(provider, apiKey, targetPayloadMap)

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
                        // Add analysis branches, passing the tagging function
                        addAnalysisToNodeAsBranch(sourceNode, sourceAnalysis, comparisonType, model, logger, addModelTagRecursively)
                        addAnalysisToNodeAsBranch(targetNode, targetAnalysis, comparisonType, model, logger, addModelTagRecursively)
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

} catch (Exception e) {
    if (e.class == ValidationExceptionClass) {
        // Handle expected validation errors
        ui.errorMessage(e.message)
    } else {
        // Handle unexpected errors
        logger.error("Unexpected error in CompareConnectedNodes script", e as Throwable)
        ui.errorMessage("An unexpected error occurred: ${e.message}")
    }
}
