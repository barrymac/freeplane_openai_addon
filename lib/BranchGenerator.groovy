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

        // Load the tagging function using the provided addonsDir
        def nodeTaggerLoader = new GroovyShell(this.class.classLoader).evaluate(
            new File("${addonsDir}/lib/NodeTagger.groovy")
        )
        def addModelTagRecursively = nodeTaggerLoader.addModelTagRecursively
        // Note: Making addModelTagRecursively available via closures might be useful elsewhere,
        // but it's not strictly necessary for the current BranchGenerator logic itself.
        // closures.addModelTagRecursively = addModelTagRecursively

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
        def swingBuilder = new SwingBuilder()
        def dialog = swingBuilder.dialog(title: 'I am asking your question. Wait for the response.',
                owner: ui.currentFrame,
                modal: false,
                resizable: true,
                defaultCloseOperation: WindowConstants.DISPOSE_ON_CLOSE) {
            swingBuilder.scrollPane(constraints: BorderLayout.CENTER) {
                swingBuilder.textArea(rows: 10, columns: 60, lineWrap: true, wrapStyleWord: true, editable: false, text: userMessage)
            }
        }
        dialog.pack()
        ui.setDialogLocationRelativeTo(dialog, node.delegate)
        dialog.setVisible(true)
        logger.info(userMessage)
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
                    logger.info("BranchGenerator: Tag 'LLM:${model.replace('/','_')}' applied to ${newlyAddedNodes.size()} newly added top-level node(s).") // Update log message
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
    }
}

// Return the function as closure
return this.&createGenerateBranches
