/**
 * Helper class for loading and managing message templates
 */
class MessageLoaderClass {
    /**
     * Loads a template file and returns its contents
     * 
     * @param path Path to the template file
     * @return String containing the template content
     */
    private static String loadTemplate(String path) {
        def file = new File(path)
        if (!file.exists()) {
            throw new Exception("Prompt template missing: ${file.name}")
        }
        return file.text.trim()
    }

    /**
     * Loads message templates for node comparison
     * 
     * @param config The Freeplane config object
     * @return Map containing system and user message templates
     */
    static Map loadComparisonMessages(config) {
        def addonsDir = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn"
        def libPath = "${addonsDir}/lib"
        
        return [
            systemTemplate: loadTemplate("${libPath}/compareNodesSystem.txt"),
            userTemplate: loadTemplate("${libPath}/compareNodesUserMessage.txt"),
            dimensionSystemTemplate: loadTemplate("${libPath}/generateComparativeDimensionSystem.txt")
        ]
    }
}

// Return the class for use in scripts
return MessageLoaderClass
