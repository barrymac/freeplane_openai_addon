import com.barrymac.freeplane.addons.llm.DependencyLoaderClass
import groovy.json.JsonSlurper
import groovy.text.SimpleTemplateEngine

import javax.swing.*
import java.awt.*

// Helper function to parse generated dimension from LLM response
def parseGeneratedDimension(String response) {
    // More flexible regex pattern
    def pattern = ~/(?i)(Pole\s*1:\s*([^;]+?)\s*;\s*Pole\s*2:\s*([^\n]+?))\s*$/
    def matcher = pattern.matcher(response)
    
    if (matcher.find()) {
        def pole1 = matcher[0][2].trim().replaceAll(/["']/, '')
        def pole2 = matcher[0][3].trim().replaceAll(/["']/, '')
        return [pole1, pole2]
    }
    
    // Try alternative patterns if initial fails
    def altPatterns = [
        ~/([A-Z][\w\s]+?)\s*\/\/\s*([A-Z][\w\s]+)/,
        ~/(.+)\s+vs\s+(.+)/,
        ~/^([^;]+);([^;]+)$/
    ]
    
    for (p in altPatterns) {
        matcher = p.matcher(response)
        if (matcher.find() && matcher.groupCount() >= 2) {
            return [matcher[0][1].trim(), matcher[0][2].trim()]
        }
    }
    
    throw new Exception("""Invalid dimension format. Received: '$response'
        Expected format: 'Pole 1: [concept]; Pole 2: [concept]'""")
}

// --- Load Core Dependencies ---
// Import the compiled DependencyLoaderClass

// Load all dependencies
// Call static method directly
def deps = DependencyLoaderClass.loadDependencies(config, logger, ui)

// Extract needed functions/classes from deps
def ConfigManager = deps.configManager
def make_api_call = deps.apiCaller.make_api_call
def getBindingMap = deps.messageExpander.getBindingMap
def parseAnalysis = deps.responseParser.&parseAnalysis
def DialogHelper = deps.dialogHelper
def NodeHelper = deps.nodeHelperUtils // Get the NodeHelperClass directly
def addAnalysisToNodeAsBranch = NodeHelper.&addAnalysisToNodeAsBranch // Get method reference from the class
def MessageLoader = deps.messageLoader
def addModelTagRecursively = deps.nodeTagger

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
            Desktop.desktop.browse(new URI("https://openrouter.ai/keys"))
        } else {
            Desktop.desktop.browse(new URI("https://platform.openai.com/account/api-keys"))
        }
        throw new Exception("API key is missing. Please configure it first via the LLM menu.")
    }

    // Check if templates are loaded
    if (systemMessageTemplate.isEmpty() || compareNodesUserMessageTemplate.isEmpty()) {
        throw new Exception("System message template or the dedicated compareNodesUserMessage.txt is missing or empty. Please check configuration or files.")
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

    // 4. Show Progress Dialog
    def progressMessage = "Generating '${comparisonType}' analysis framework..."
    def dialog = DialogHelper.createProgressDialog(ui, "Analyzing Nodes with LLM...", progressMessage)
    dialog.setVisible(true)

    // 6. Run API Calls in Background Thread
    def workerThread = new Thread({
        String errorMessage = null

        try {
            // --- Generate Comparative Dimension with Validation ---
            def dimensionPayload = [
                'model': model,
                'messages': [
                    [role: 'system', content: messages.dimensionSystemTemplate],
                    [role: 'user', content: "Create a focused comparative dimension for analyzing: ${comparisonType}"]
                ],
                'temperature': 0.2,
                'max_tokens': 100
            ]
            
            logger.info("Generating comparative dimension for: ${comparisonType}")
            
            def maxRetries = 2
            def attempts = 0
            def comparativeDimension = null
            def dimensionContent = null
            
            while (attempts <= maxRetries) {
                try {
                    def dimensionResponse = make_api_call(provider, apiKey, dimensionPayload)
                    dimensionContent = new JsonSlurper().parseText(dimensionResponse)?.choices[0]?.message?.content
                    def (pole1, pole2) = parseGeneratedDimension(dimensionContent)
                    comparativeDimension = "${pole1} vs ${pole2}"
                    logger.info("Generated comparative dimension: ${comparativeDimension}")
                    break
                } catch (Exception e) {
                    attempts++
                    if (attempts > maxRetries) throw e
                    
                    // Add correction attempt
                    dimensionPayload.messages.add([role: 'assistant', content: dimensionContent])
                    dimensionPayload.messages.add([role: 'user', content: """
                        Format was incorrect. Please STRICTLY follow:
                        Pole 1: [2-3 words]; Pole 2: [2-3 words]
                        No other text. Just the poles in this format.
                    """])
                }
            }
            
            // --- Prepare Prompts with Generated Dimension ---
            logger.info("CompareNodes: Final userMessageTemplate for expansion:\n---\n${compareNodesUserMessageTemplate}\n---")
            
            // --- Prepare source node prompt ---
            def sourceBinding = getBindingMap(sourceNode)
            sourceBinding['comparisonType'] = comparativeDimension
            logger.info("CompareNodes: Source Binding Map: ${sourceBinding}")
            def sourceEngine = new SimpleTemplateEngine()
            def sourceUserPrompt = sourceEngine.createTemplate(compareNodesUserMessageTemplate).make(sourceBinding).toString()
            logger.info("CompareNodes: Source User Prompt:\n${sourceUserPrompt}")
            
            // --- Prepare target node prompt ---
            def targetBinding = getBindingMap(targetNode)
            targetBinding['comparisonType'] = comparativeDimension
            logger.info("CompareNodes: Target Binding Map: ${targetBinding}")
            def targetEngine = new SimpleTemplateEngine()
            def targetUserPrompt = targetEngine.createTemplate(compareNodesUserMessageTemplate).make(targetBinding).toString()
            logger.info("CompareNodes: Target User Prompt:\n${targetUserPrompt}")
            
            // Update progress dialog
            SwingUtilities.invokeLater {
                dialog.setMessage("Analyzing '${sourceNode.text}' and '${targetNode.text}' using '${comparativeDimension}' framework...")
            }

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
            def jsonSlurper = new JsonSlurper()

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
                        // Add analysis branches, passing the tagging function and using the generated dimension
                        addAnalysisToNodeAsBranch(sourceNode, sourceAnalysis, comparativeDimension, model, logger, addModelTagRecursively)
                        addAnalysisToNodeAsBranch(targetNode, targetAnalysis, comparativeDimension, model, logger, addModelTagRecursively)
                        ui.informationMessage("Comparison analysis using '${comparativeDimension}' framework added to both nodes.")
                    } catch (Exception e) {
                        logger.warn("Error during addAnalysisToNodeAsBranch calls on EDT".toString(), e as Throwable)
                        ui.errorMessage("Failed to add analysis results to the map. Check logs. Error: ${e.message}")
                    }
                }
            }

        } catch (Exception e) {
            // Ensure message is String and exception is Throwable
            logger.warn("LLM Comparison failed: ${e.message}".toString(), (Throwable)e)
            errorMessage = "Comparison Error: ${e.message.split('\n').head()}"
            // Ensure dialog is closed and error shown on EDT
            SwingUtilities.invokeLater {
                dialog.dispose()
                ui.errorMessage(errorMessage)
            }
        }
    })
    // Use the classloader of a known compiled class from the JAR
    workerThread.setContextClassLoader(DependencyLoaderClass.class.classLoader)
    workerThread.start()

} catch (Exception e) {
    // Handle all errors with a simple message
    ui.errorMessage(e.message)
    // Ensure message is String and exception is Throwable
    logger.warn("Error in CompareConnectedNodes: ${e.message}".toString(), (Throwable)e)
}
