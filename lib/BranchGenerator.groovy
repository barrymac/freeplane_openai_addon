import groovy.swing.SwingBuilder

import javax.swing.*
import java.awt.*

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
                    def childrenBefore = node.children.size()
                    node.appendTextOutlineAsBranch(response) // Add the branch
                    def childrenAfter = node.children.size()
                    def addedBranchRoot = null
                    if (childrenAfter > childrenBefore) {
                        // Assume the last child is the root of the newly added branch
                        addedBranchRoot = node.children.last()
                        // Recursively add the tag, passing the logger
                        addTagRecursively(addedBranchRoot, "LLM_Generated", logger)
                    }

                    // Add logging to confirm tagging for Quick Prompt
                    logger.info("BranchGenerator: Tag 'LLM_Generated' applied to branch starting with node: ${addedBranchRoot?.text}")
                }
            } catch (Exception e) {
                logger.error("API call failed", e)
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
