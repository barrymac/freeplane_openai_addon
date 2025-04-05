import groovy.swing.SwingBuilder
import javax.swing.JOptionPane

// Load DependencyLoader first
def addonsDir = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn"
def dependencyLoader = new GroovyShell(this.class.classLoader).evaluate(
    new File("${addonsDir}/lib/DependencyLoader.groovy")
)
// Load all dependencies
def deps = dependencyLoader.loadDependencies(config, logger, ui)

// Extract needed functions/classes from deps
def ConfigManager = deps.configManager
def expandMessage = deps.messageExpander.expandMessage
def loadMessagesFromFile = deps.messageFileHandler.loadMessagesFromFile

// Load the branch generator function
def createBranchGenerator = new GroovyShell(this.class.classLoader).evaluate(
    new File("${addonsDir}/lib/BranchGenerator.groovy")
)

// Load configuration using ConfigManager
def configMap = ConfigManager.loadBaseConfig(config)
def apiKey = configMap.apiKey
def model = configMap.model
def maxTokens = configMap.maxTokens
def temperature = configMap.temperature
def provider = configMap.provider
def systemMessageIndex = config.getProperty('openai.system_message_index', 0) as int
def userMessageIndex = config.getProperty('openai.user_message_index', 0) as int

// Initialize the branch generator with necessary dependencies
def generateBranches = createBranchGenerator([
        c      : c,
        ui     : ui,
        logger : logger,
        config : config
], deps) // Pass the loaded dependencies map

// Load message templates
def systemMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptSystemMessages.txt"
def userMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptUserMessages.txt"
def defaultSystemMessagesFilePath = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultSystemMessages.txt"
def defaultUserMessagesFilePath = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultUserMessages.txt"

def defaultSystemMessages = new File(defaultSystemMessagesFilePath).text.trim()
def userSystemMessages = new File(defaultUserMessagesFilePath).text.trim()

def systemMessages = loadMessagesFromFile(systemMessagesFilePath, defaultSystemMessages)
def userMessages = loadMessagesFromFile(userMessagesFilePath, userSystemMessages)

// Validate and fallback to defaults if needed
def systemMessage = systemMessageIndex < systemMessages.size() ? systemMessages[systemMessageIndex] : systemMessages[0]
def userMessageTemplate = userMessageIndex < userMessages.size() ? userMessages[userMessageIndex] : userMessages[0]

if (!apiKey) {
    JOptionPane.showMessageDialog(ui.currentFrame, 
        "Please configure API settings first via the LLM menu",
        "Configuration Required",
        JOptionPane.WARNING_MESSAGE)
    return
}

try {
    def expandedUserMessage = expandMessage(userMessageTemplate, c.selected)
    generateBranches(apiKey, systemMessage, expandedUserMessage, model, maxTokens, temperature, provider)
} catch (Exception e) {
    logger.error("Quick prompt failed", e)
    ui.errorMessage("Quick prompt error: ${e.message}")
}
