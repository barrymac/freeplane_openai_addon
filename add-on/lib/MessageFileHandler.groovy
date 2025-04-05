def loadMessagesFromFile(String filePath, String fallback) {
    def messages
    def fileContent
    try {
        fileContent = new File(filePath).text
    } catch (Exception e) {
        fileContent = fallback
        new File(filePath).write(fallback)
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
