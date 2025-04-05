import groovy.swing.SwingBuilder
import javax.swing.*
import java.awt.*

// Function to create a branch generator with necessary dependencies
def createGenerateBranches(closures) {
    return { apiKey, systemMessage, userMessage, model, maxTokens, temperature, provider ->
        def c = closures.c
        def ui = closures.ui
        def logger = closures.logger
        def SwingUtilities = SwingUtilities
        def WindowConstants = WindowConstants
        def BorderLayout = BorderLayout
        def SwingBuilder = SwingBuilder
        def make_openai_call = closures.make_openai_call
        def make_openrouter_call = closures.make_openrouter_call
        def addonsDir = closures.addonsDir // Get add-on directory from closures

        try {
            // Load configuration manager
            def ConfigManager = new GroovyShell(this.class.classLoader).evaluate(
                new File("${addonsDir}/lib/ConfigLoader.groovy")
            )
            
            // Load the tagging function using the provided addonsDir
            def nodeTaggerLoader = new GroovyShell(this.class.classLoader).evaluate(
                new File("${addonsDir}/lib/NodeTagger.groovy")
            )
            def addModelTagRecursively = nodeTaggerLoader.addModelTagRecursively
            
            // Load DialogHelper for consistent UI
            def dialogHelper = new GroovyShell(this.class.classLoader).evaluate(
                new File("${addonsDir}/lib/DialogHelper.groovy")
            )

            // Validate API key
            if (apiKey.isEmpty()) {
                if (provider == 'openrouter') {
                    Desktop.desktop.browse(new URI("https://openrouter.ai/keys"))
                } else {
                    Desktop.desktop.browse(new URI("https://platform.openai.com/account/api-keys"))
                }
                ui.errorMessage("Invalid authentication or incorrect API key provided.")
                return;
            }
            
            def node = c.selected
            
            // Create progress dialog
            def dialog = dialogHelper.createProgressDialog(
                ui, 
                'I am asking your question. Wait for the response.',
                userMessage
            )
            ui.setDialogLocationRelativeTo(dialog, node.delegate)
            dialog.setVisible(true)
            logger.info(userMessage)
            
            // Run API call in background thread
            def workerThread = new Thread({
                try {
                    def payloadMap = [
                        'model': model,
                        'messages': [
                            [role: 'system', content: systemMessage],
                            [role: 'user', content: userMessage]
                        ],
                        'temperature': temperature,
                        'max_tokens': maxTokens
                    ]
                    
                    def responseText = (provider == 'openrouter') ? 
                        make_openrouter_call(apiKey, payloadMap) :
                        make_openai_call(apiKey, payloadMap)
                    
                    if (responseText.isEmpty()) {
                        return
                    }
                    
                    def jsonSlurper = new groovy.json.JsonSlurper()
                    def jsonResponse = jsonSlurper.parseText(responseText)
                    def response = jsonResponse.choices[0].message.content
                    
                    logger.info("GPT response: $response")
                    SwingUtilities.invokeLater {
                        dialog.dispose()
                        // Get the set of children *before* adding
                        def childrenBeforeSet = node.children.toSet()
                        node.appendTextOutlineAsBranch(response) // Add the branch
                        // Get the set of children *after* adding
                        def childrenAfterSet = node.children.toSet()

                        // Find the newly added nodes (difference between the sets)
                        def newlyAddedNodes = childrenAfterSet - childrenBeforeSet

                        if (!newlyAddedNodes.isEmpty()) {
                            // Recursively add the tag, passing the logger
                            newlyAddedNodes.each { newNode -> addModelTagRecursively(newNode, model, logger) } // Pass model name
                        }
                        // Add logging to confirm tagging for Quick Prompt
                        logger.info("BranchGenerator: Tag 'LLM:${model.replace('/','_')}' applied to ${newlyAddedNodes.size()} newly added top-level node(s).")
                    }
                } catch (Exception e) {
                    logger.error("API call failed", e as Throwable)
                    SwingUtilities.invokeLater {
                        dialog.dispose()
                        ui.errorMessage("API Error: ${e.message}")
                    }
                }
            })
            workerThread.setContextClassLoader(this.class.classLoader)
            workerThread.start()
        } catch (Exception e) {
            logger.error("Error in BranchGenerator setup", e as Throwable)
            ui.errorMessage("Setup Error: ${e.message}")
        }
    }
}

// Return the function as closure
return this.&createGenerateBranches
