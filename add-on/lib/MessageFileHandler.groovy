/**
 * Loads messages from a user-specific file, falling back to a default resource from the JAR.
 * If the user file doesn't exist, it's created with the default content.
 *
 * @param filePath Path to the user-specific message file (e.g., ".../chatGptSystemMessages.txt").
 * @param defaultResourcePath Path to the default resource within the JAR (e.g., "/defaultSystemMessages.txt").
 * @param defaultLoaderFunc A function (like MessageLoader.loadDefaultMessages) to load the default resource.
 * @return A list of messages split by '======'.
 */
def loadMessagesFromFile(String filePath, String defaultResourcePath, Closure defaultLoaderFunc) {
    def messages
    def fileContent
    try {
        fileContent = new File(filePath).text
    } catch (Exception e) {
        fileContent = defaultLoaderFunc(defaultResourcePath) // Load default from JAR
        new File(filePath).write(fileContent) // Write default content to user file
    }
    messages = fileContent.split(/======+\n/)*.trim()
    return messages
}

def saveMessagesToFile(String filePath, List messages) {
    def fileContent = messages.join("\n======\n")
    new File(filePath).write(fileContent)
}

return [
    loadMessagesFromFile: this.&loadMessagesFromFile,
    saveMessagesToFile: this.&saveMessagesToFile
]
