/**
 * Helper class for loading and managing message templates
 */
class MessageLoaderClass {
    /**
     * Loads message templates for node comparison
     * 
     * @param config The Freeplane config object
     * @return Map containing system and user message templates
     */
    static Map loadComparisonMessages(config) {
        def addonsDir = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn"
        
        // Define message file paths
        def systemMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptSystemMessages.txt"
        def defaultSystemMessagesFilePath = "${addonsDir}/lib/defaultSystemMessages.txt"
        def compareNodesUserMessageFilePath = "${addonsDir}/lib/compareNodesUserMessage.txt"
        
        // Load the message file handler
        def messageFileHandler = new GroovyShell(MessageLoader.class.classLoader).evaluate(
            new File("${addonsDir}/lib/MessageFileHandler.groovy")
        )
        
        // Load message templates
        def defaultSystemMessages = new File(defaultSystemMessagesFilePath).text.trim()
        def systemMessages = messageFileHandler.loadMessagesFromFile(systemMessagesFilePath, defaultSystemMessages)
        def compareNodesUserMessageTemplate = new File(compareNodesUserMessageFilePath).text.trim()
        
        // Select the configured system template (with fallback)
        def systemMessageIndex = config.getProperty('openai.system_message_index', 0) as int
        def systemMessageTemplate = systemMessageIndex < systemMessages.size() ? 
            systemMessages[systemMessageIndex] : 
            (systemMessages.isEmpty() ? "" : systemMessages[0])
            
        return [
            systemTemplate: systemMessageTemplate,
            userTemplate: compareNodesUserMessageTemplate
        ]
    }
}

// Return the class for use in scripts
return MessageLoaderClass
