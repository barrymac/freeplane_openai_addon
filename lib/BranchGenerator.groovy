import groovy.swing.SwingBuilder
// Function to create a branch generator with necessary dependencies
def createGenerateBranches(closures) {
    return { apiKey, systemMessage, userMessage, model, maxTokens, temperature, provider ->
        def c = closures.c
        def ui = closures.ui
        def logger = closures.logger
        def SwingUtilities = javax.swing.SwingUtilities
        def WindowConstants = javax.swing.WindowConstants
        def BorderLayout = java.awt.BorderLayout
        def SwingBuilder = groovy.swing.SwingBuilder
        def make_openai_call = closures.make_openai_call
        def make_openrouter_call = closures.make_openrouter_call
        
        if (apiKey.isEmpty()) {
            if (provider == 'openrouter') {
                java.awt.Desktop.desktop.browse(new URI("https://openrouter.ai/keys"))
            } else {
                java.awt.Desktop.desktop.browse(new URI("https://platform.openai.com/account/api-keys"))
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
                    node.appendTextOutlineAsBranch(response)
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
