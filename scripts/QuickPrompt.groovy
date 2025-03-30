import groovy.swing.SwingBuilder
import javax.swing.JOptionPane

// Load dependencies from external files
def expandMessage = new GroovyShell(this.class.classLoader).evaluate(
    new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageExpander.groovy")
)

// Load the API caller functions
def createApiCaller = new GroovyShell(this.class.classLoader).evaluate(
    new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/ApiCaller.groovy")
)
def apiCaller = createApiCaller([logger: logger, ui: ui, config: config])
def make_openai_call = apiCaller.make_openai_call
def make_openrouter_call = apiCaller.make_openrouter_call

// Load the branch generator function
def createBranchGenerator = new GroovyShell(this.class.classLoader).evaluate(
    new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/BranchGenerator.groovy")
)

// Initialize the branch generator with necessary dependencies
def generateBranches = createBranchGenerator([
        c                   : c,
        ui                  : ui,
        logger              : logger,
        make_openai_call    : make_openai_call,
        make_openrouter_call: make_openrouter_call
])

// Load saved configuration
def apiKey = config.getProperty('openai.key', '')
def model = config.getProperty('openai.gpt_model', 'gpt-3.5-turbo')
def maxTokens = config.getProperty('openai.max_response_length', 1000) as int
def temperature = config.getProperty('openai.temperature', 0.7) as double
def provider = config.getProperty('openai.api_provider', 'openrouter')
def systemMessageIndex = config.getProperty('openai.system_message_index', 0) as int
def userMessageIndex = config.getProperty('openai.user_message_index', 0) as int

// Load message templates
def systemMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptSystemMessages.txt"
def userMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptUserMessages.txt"
def defaultSystemMessagesFilePath = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultSystemMessages.txt"
def defaultUserMessagesFilePath = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultUserMessages.txt"

// Load the message file handler functions from external file
def messageFileHandler = new GroovyShell(this.class.classLoader).evaluate(
    new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageFileHandler.groovy")
)
def loadMessagesFromFile = messageFileHandler.loadMessagesFromFile

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
