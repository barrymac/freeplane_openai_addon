import groovy.json.JsonOutput
import groovy.json.JsonSlurper
import groovy.swing.SwingBuilder

import javax.swing.*
import java.awt.*
import java.util.List

String apiKey = config.getProperty('openai.key', '')
String gptModel = config.getProperty('openai.gpt_model', 'gpt-3.5-turbo')
int maxResponseLength = config.getProperty('openai.max_response_length', 1000)
double temperature = config.getProperty('openai.temperature', 0.7)
int selectedSystemMessageIndex = config.getProperty('openai.system_message_index', 0)
int selectedUserMessageIndex = config.getProperty('openai.user_message_index', 0)
String apiProvider = config.getProperty('openai.api_provider', 'openai')

String systemMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptSystemMessages.txt"
String userMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptUserMessages.txt"
String defaultSystemMessagesFilePath = "${config.freeplaneUserDirectory}/addons/askGPTAddOn/lib/defaultSystemMessages.txt"
String defaultUserMessagesFilePath = "${config.freeplaneUserDirectory}/addons/askGPTAddOn/lib/defaultUserMessages.txt"

String defaultSystemMessages = new File(defaultSystemMessagesFilePath).text.trim()
String userSystemMessages = new File(defaultUserMessagesFilePath).text.trim()

def expandMessage(String message) {
    def node = c.selected
    def pathToRoot = node.pathToRoot
    pathToRoot = pathToRoot.take(pathToRoot.size() - 1)
    String ancestorContents = pathToRoot*.plainText.join('\n')
    String siblingContents = node.isRoot() ? '' : node.parent.children.findAll { it != node }*.plainText.join('\n')
    def binding = [
            nodeContent     : node.plainText,
            ancestorContents: ancestorContents,
            siblingContents : siblingContents
    ]
    def engine = new groovy.text.SimpleTemplateEngine()
    def template = engine.createTemplate(message).make(binding)
    def expandedMessage = template.toString()
    return expandedMessage
}

def generateBranches(String apiKey, String systemMessage, String userMessage, String model, Integer maxTokens, Double temperature, String provider) {
    if (apiKey.isEmpty()) {
        if (provider == 'openrouter') {
            java.awt.Desktop.desktop.browse(new URI("https://openrouter.ai/keys"))
        } else {
            java.awt.Desktop.desktop.browse(new URI("https://platform.openai.com/account/api-keys"))
        }
        ui.errorMessage("Invalid authentication or incorrect API key provided.")
        return;
    }

    List<Map<String, String>> messages = [
            [role: 'system', content: systemMessage],
            [role: 'user', content: userMessage]
    ]
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
        def response = call_chat_api(apiKey, messages, model, maxTokens, temperature, provider)
        logger.info("GPT response: $response")
        SwingUtilities.invokeLater {
            dialog.dispose()
            node.appendTextOutlineAsBranch(response)
        }
    })
    workerThread.setContextClassLoader(getClass().classLoader)
    workerThread.start()
}


def call_chat_api(String apiKey, List<Map<String, String>> messages,
                     String model,
                     Integer max_tokens,
                     Double temperature,
                     String provider,
                     Double top_p = 1, Integer n = 1, Boolean stream = false,
                     Integer logprobs = null, Boolean echo = false, List<String> stop = null,
                     Double presence_penalty = 0, Double frequency_penalty = 0,
                     Integer best_of = 1, Map<String, Integer> logit_bias = null,
                     String user = null) {

    def payloadMap = [
            'model'            : model,
            'messages'         : messages,
            'temperature'      : temperature,
            'max_tokens'       : max_tokens,
            'top_p'            : top_p,
            'n'                : n,
            'stream'           : stream,
//            'echo'             : echo,
            'presence_penalty' : presence_penalty,
            'frequency_penalty': frequency_penalty,
//            'best_of'          : best_of
    ]

    if (logprobs != null) payloadMap['logprobs'] = logprobs
    if (stop != null) payloadMap['stop'] = stop
    if (logit_bias != null) payloadMap['logit_bias'] = logit_bias
    if (user != null) payloadMap['user'] = user

    def responseText
    if (provider == 'openrouter') {
        responseText = make_openrouter_call(apiKey, payloadMap)
    } else {
        responseText = make_openai_call(apiKey, payloadMap)
    }

    if (responseText.isEmpty())
        return ""

    def jsonSlurper = new JsonSlurper()
    def jsonResponse = jsonSlurper.parseText(responseText)
    def assistantMessage = jsonResponse.choices[0].message.content
    println(assistantMessage)
    return assistantMessage
}

// Function to make the OpenAI API call
def make_openai_call(String apiKey, Map<String, Object> payloadMap) {
    def responseText = ""

    try {
        String apiUrl = 'https://api.openai.com/v1/chat/completions'
        def post = new URL(apiUrl).openConnection()
        post.setRequestMethod("POST")
        post.setDoOutput(true)
        post.setRequestProperty("Content-Type", "application/json")
        post.setRequestProperty("Authorization", "Bearer " + apiKey)

        def payload = JsonOutput.toJson(payloadMap)
        post.getOutputStream().write(payload.getBytes("UTF-8"))

        def postRC = post.getResponseCode()

        if (postRC.equals(200)) {
            responseText = post.getInputStream().getText("UTF-8")
            logger.info("GPT response: $responseText")
        } else if (postRC.equals(401)) {
            java.awt.Desktop.desktop.browse(new URI("https://platform.openai.com/account/api-keys"))
            ui.errorMessage("Invalid authentication or incorrect API key provided.")
        } else if (postRC.equals(404)) {
            ui.errorMessage("You must be a member of an organization to use the API.")
        } else if (postRC.equals(429)) {
            ui.errorMessage("Rate limit reached for requests or current quota exceeded.")
        } else {
            ui.errorMessage("Unhandled error code $postRC returned from API.")
        }

    } catch (Exception e) {
        ui.errorMessage(e.toString())
    }

    return responseText
}

// Function to make the OpenRouter API call
def make_openrouter_call(String apiKey, Map<String, Object> payloadMap) {
    def responseText = ""

    try {
        String apiUrl = 'https://openrouter.ai/api/v1/chat/completions'
        def post = new URL(apiUrl).openConnection()
        post.setRequestMethod("POST")
        post.setDoOutput(true)
        post.setRequestProperty("Content-Type", "application/json")
        post.setRequestProperty("Authorization", "Bearer " + apiKey)
        post.setRequestProperty("HTTP-Referer", "${config.freeplaneUserDirectory}")
        post.setRequestProperty("X-Title", "Freeplane GPT AddOn")

        def payload = JsonOutput.toJson(payloadMap)
        post.getOutputStream().write(payload.getBytes("UTF-8"))

        def postRC = post.getResponseCode()

        if (postRC.equals(200)) {
            responseText = post.getInputStream().getText("UTF-8")
            logger.info("OpenRouter response: $responseText")
        } else if (postRC.equals(401)) {
            java.awt.Desktop.desktop.browse(new URI("https://openrouter.ai/keys"))
            ui.errorMessage("Invalid authentication or incorrect API key provided.")
        } else if (postRC.equals(404)) {
            ui.errorMessage("Endpoint not found. Check your OpenRouter configuration.")
        } else if (postRC.equals(429)) {
            ui.errorMessage("Rate limit reached for requests or current quota exceeded.")
        } else {
            ui.errorMessage("Unhandled error code $postRC returned from OpenRouter API.")
        }

    } catch (Exception e) {
        ui.errorMessage(e.toString())
    }

    return responseText
}


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
                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder('GPT Model')) {
                    gptModelBox = comboBox(items: [
                        'gpt-3.5-turbo', 
                        'gpt-4',
                        'openai/gpt-3.5-turbo', 
                        'openai/gpt-4',
                        'openai/gpt-4o',
                        'anthropic/claude-3-opus',
                        'anthropic/claude-3-sonnet',
                        'anthropic/claude-3-haiku',
                        'google/gemini-pro',
                        'meta-llama/llama-3-70b-instruct'
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
                def askGptButton = swingBuilder.button(constraints: c, action: swingBuilder.action(name: 'Ask GPT') {
                    generateBranches(String.valueOf(apiKeyField.password),
                            systemMessageArea.textArea.text,
                            expandMessage(userMessageArea.textArea.text),
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
