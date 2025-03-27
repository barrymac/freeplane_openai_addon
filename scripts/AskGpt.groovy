import groovy.swing.SwingBuilder

import javax.swing.*
import java.awt.*

String apiKey = config.getProperty('openai.key', '')
String gptModel = config.getProperty('openai.gpt_model', 'gpt-3.5-turbo')
int maxResponseLength = config.getProperty('openai.max_response_length', 1000)
double temperature = config.getProperty('openai.temperature', 0.7)
int selectedSystemMessageIndex = config.getProperty('openai.system_message_index', 0)
int selectedUserMessageIndex = config.getProperty('openai.user_message_index', 0)
String apiProvider = config.getProperty('openai.api_provider', 'openrouter')

String systemMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptSystemMessages.txt"
String userMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptUserMessages.txt"
String defaultSystemMessagesFilePath = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultSystemMessages.txt"
String defaultUserMessagesFilePath = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultUserMessages.txt"

String defaultSystemMessages = new File(defaultSystemMessagesFilePath).text.trim()
String userSystemMessages = new File(defaultUserMessagesFilePath).text.trim()

// Load the message expander function from external file
def expandMessage = new GroovyShell(this.class.classLoader).evaluate(
        new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageExpander.groovy")
)

// Load the branch generator function from external file
def createBranchGenerator = new GroovyShell(this.class.classLoader).evaluate(
        new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/BranchGenerator.groovy")
)

// Load the API caller functions from external file
def createApiCaller = new GroovyShell(this.class.classLoader).evaluate(
        new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/ApiCaller.groovy")
)
def apiCaller = createApiCaller([logger: logger, ui: ui, config: config])
def make_openai_call = apiCaller.make_openai_call
def make_openrouter_call = apiCaller.make_openrouter_call

// Load the message file handler functions from external file
def messageFileHandler = new GroovyShell(this.class.classLoader).evaluate(
        new File("${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageFileHandler.groovy")
)
def loadMessagesFromFile = messageFileHandler.loadMessagesFromFile
def saveMessagesToFile = messageFileHandler.saveMessagesToFile


// Initialize the branch generator with necessary dependencies
def generateBranches = createBranchGenerator([
        c                   : c,
        ui                  : ui,
        logger              : logger,
        make_openai_call    : make_openai_call,
        make_openrouter_call: make_openrouter_call
])


class MessageItem {
    String value

    MessageItem(String value) {
        this.value = value.replaceAll(/\s+/, ' ').take(120)
    }

    @Override
    boolean equals(Object o) {
        return this.is(o)
    }

    @Override
    int hashCode() {
        return System.identityHashCode(this)
    }

    @Override
    String toString() {
        return value
    }
}


class MessageArea {
    JTextArea textArea
    JComboBox comboBox

    void updateSelectedItemFromTextArea() {
        int selectedIndex = comboBox.selectedIndex
        def text = textArea.text
        comboBox.removeItemAt(selectedIndex)
        comboBox.insertItemAt(new MessageItem(text), selectedIndex)
        comboBox.selectedIndex = selectedIndex
    }
}

MessageArea createMessageSection(def swingBuilder, def messages, def title, int initialIndex, def constraints, def weighty) {
    def comboBoxModel = new DefaultComboBoxModel()
    messages.each { comboBoxModel.addElement(new MessageItem(it)) }
    def messageComboBox, messageText
    def selectedIndex = initialIndex

    constraints.gridy++
    swingBuilder.label("${title}:", constraints: constraints)
    constraints.gridy++
    messageComboBox = swingBuilder.comboBox(model: comboBoxModel, constraints: constraints)
    messageComboBox.selectedIndex = initialIndex

    constraints.gridy++
    constraints.weighty = 1.0 * weighty
    swingBuilder.scrollPane(constraints: constraints) {
        messageText = textArea(rows: 5 * weighty, columns: 80, tabSize: 3, lineWrap: true, wrapStyleWord: true, text: messages[initialIndex], caretPosition: 0) {}
    }
    messageComboBox.addActionListener { actionEvent ->
        if (selectedIndex != -1 && messageComboBox.selectedIndex != selectedIndex) {
            messages[selectedIndex] = messageText.text
            comboBoxModel.removeElementAt(selectedIndex)
            comboBoxModel.insertElementAt(new MessageItem(messages[selectedIndex]), selectedIndex)
        }
        selectedIndex = messageComboBox.selectedIndex
        if (messageText.text != messages[selectedIndex]) {
            messageText.text = messages[selectedIndex]
            messageText.caretPosition = 0
        }
    }
    constraints.gridy++
    constraints.weighty = 0.0
    swingBuilder.panel(layout: new FlowLayout(), constraints: constraints) {
        button(action: swingBuilder.action(name: "Reset ${title}".toString()) {
            messageText.text = messages[selectedIndex]
            messageText.caretPosition = 0
        })
        button(action: swingBuilder.action(name: "Duplicate ${title}".toString()) {
            messages.add(messageText.text)
            comboBoxModel.addElement(new MessageItem(messageText.text))
            messageText.text = messages[selectedIndex]
            messageComboBox.selectedIndex = selectedIndex = messageComboBox.itemCount - 1
        })
        button(action: swingBuilder.action(name: "Delete ${title}".toString()) {
            if (selectedIndex != -1) {
                messages.remove(selectedIndex)
                comboBoxModel.removeElementAt(selectedIndex)
                selectedIndex = -1
            }
        })
    }
    return new MessageArea(textArea: messageText, comboBox: messageComboBox)
}

def swingBuilder = new SwingBuilder()
swingBuilder.edt { // edt method makes sure the GUI is built on the Event Dispatch Thread.
    def dialog = swingBuilder.dialog(title: 'Chat GPT Communicator', owner: ui.currentFrame) {
        swingBuilder.panel(layout: new GridBagLayout()) {
            def constraints = new GridBagConstraints()
            constraints.fill = GridBagConstraints.BOTH
            constraints.weightx = 1.0
            constraints.gridx = 0
            constraints.gridy = -1  // Will be incremented to 0 in the first call to createSection
            def systemMessages = loadMessagesFromFile(systemMessagesFilePath, defaultSystemMessages)
            def userMessages = loadMessagesFromFile(userMessagesFilePath, userSystemMessages)
            MessageArea systemMessageArea = createMessageSection(swingBuilder, systemMessages, "System Message", selectedSystemMessageIndex, constraints, 4)
            MessageArea userMessageArea = createMessageSection(swingBuilder, userMessages, "User Message", selectedUserMessageIndex, constraints, 1)
            constraints.gridy++
            def apiKeyField
            def responseLengthField
            def gptModelBox
            def temperatureSlider
            swingBuilder.panel(constraints: constraints, layout: new GridBagLayout()) {
                def c = new GridBagConstraints()
                c.fill = GridBagConstraints.BOTH
                c.weightx = 1.0
                c.weighty = 1.0
                c.gridx = 0
                c.gridy = 0
                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder('API Key')) {
                    apiKeyField = passwordField(columns: 10, text: apiKey)
                }
                c.gridx++
                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder('Max Response Length'), toolTipText: 'Maximum Response Length') {
                    responseLengthField = formattedTextField(columns: 5, value: maxResponseLength)
                }
                c.gridx++
                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder('Language Model')) {
                    gptModelBox = comboBox(items: [
                            'meta-llama/llama-3.2-1b-instruct',
                            'deepseek/deepseek-r1-zero:free',
                            'deepseek/deepseek-r1',
                            'anthropic/claude-3-opus',
                            'anthropic/claude-3-sonnet',
                            'anthropic/claude-3-haiku',
                            'google/gemini-pro',
                            'meta-llama/llama-3-70b-instruct',
                            'gpt-3.5-turbo',
                            'gpt-4',
                    ], selectedItem: gptModel, prototypeDisplayValue: 'anthropic/claude-3-opus-12345')
                }
                c.gridx++
                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder('API Provider')) {
                    apiProviderBox = comboBox(items: ['openai', 'openrouter'], selectedItem: apiProvider)
                }
                c.gridx++
                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder('Randomness')) {
                    temperatureSlider = slider(minimum: 0, maximum: 100, minorTickSpacing: 5, majorTickSpacing: 50, snapToTicks: true,
                            paintTicks: true, paintLabels: true, value: (int) (temperature * 100.0 + 0.5))
                }
            }
            constraints.gridy++
            swingBuilder.panel(constraints: constraints) {
                def askGptButton = swingBuilder.button(constraints: c, action: swingBuilder.action(name: 'Prompt LLM') {
                    generateBranches(String.valueOf(apiKeyField.password),
                            systemMessageArea.textArea.text,
                            expandMessage(userMessageArea.textArea.text, c.selected),
                            gptModelBox.selectedItem,
                            responseLengthField.value,
                            temperatureSlider.value / 100.0,
                            apiProviderBox.selectedItem)
                })
                askGptButton.rootPane.defaultButton = askGptButton
                swingBuilder.button(constraints: c, action: swingBuilder.action(name: 'Save Changes') {
                    systemMessages[systemMessageArea.comboBox.selectedIndex] = systemMessageArea.textArea.text
                    userMessages[userMessageArea.comboBox.selectedIndex] = userMessageArea.textArea.text
                    saveMessagesToFile(systemMessagesFilePath, systemMessages)
                    saveMessagesToFile(userMessagesFilePath, userMessages)
                    config.setProperty('openai.key', String.valueOf(apiKeyField.password))
                    config.setProperty('openai.gpt_model', gptModelBox.selectedItem)
                    config.setProperty('openai.max_response_length', responseLengthField.value)
                    config.setProperty('openai.temperature', temperatureSlider.value / 100.0)
                    config.setProperty('openai.system_message_index', systemMessageArea.comboBox.selectedIndex)
                    config.setProperty('openai.user_message_index', userMessageArea.comboBox.selectedIndex)
                    config.setProperty('openai.api_provider', apiProviderBox.selectedItem)
                    systemMessageArea.updateSelectedItemFromTextArea()
                    userMessageArea.updateSelectedItemFromTextArea()
                })
            }
        }
    }
    dialog.pack()
    ui.setDialogLocationRelativeTo(dialog, ui.currentFrame)
    dialog.show()
}
