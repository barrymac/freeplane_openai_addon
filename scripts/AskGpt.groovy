import groovy.swing.SwingBuilder
import java.awt.GridBagConstraints
import java.awt.GridBagLayout
import java.awt.FlowLayout
import java.awt.BorderLayout
import javax.swing.*
import java.nio.file.*
import groovy.json.JsonOutput
import groovy.json.JsonSlurper

String apiKey = config.getProperty('openai.key', '')
String gptModel = config.getProperty('openai.gpt_model', 'gpt-3.5-turbo')
int maxResponseLength = config.getProperty('openai.max_response_length', 1000)
double temperature = config.getProperty('openai.temperature', 0.7)
int selectedSystemMessageIndex = config.getProperty('openai.system_message_index', 0)
int selectedUserMessageIndex = config.getProperty('openai.user_message_index', 0)

String systemMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptSystemMessages.txt"
String userMessagesFilePath = "${config.freeplaneUserDirectory}/chatGptUserMessages.txt"

String defaultSystemMessages = '''
You are creative assistent.
Please generate ideas related to the topic given by user.
Separate each idea with a newline.

Don't give it any heading like "Ideas".
Don't enumerate generated ideas.
Don't use any indentation characters like bullet points, asterics or minus characters.
Write your ideas one per line.
Don't repeat known facts.
Don't comment the task itself.

Concentrate on the topic only.
Cover as many aspects of the topic as possible as deeply as possible.

Example:

Go to the theater
Go to the museum
Stay at home
======
Learn the format "outline" from the example below and create similar outlines for topics given by the user.
Strictly follow the format.  Use multiple nested levels. Start a new paragraph for each new sentence. Suppress any bullet points or other characters like - at the beginning of the list, use just the formatting as in the example

Don't give it any title.

Concentrate on the topic only. Cover as many aspects of the topic as possible as deeply as possible.

Don't repeat known facts.

Don't comment the task itself.

Topis: Discovery of Space

Example:
Introduction
    The discovery of space refers to the exploration of the universe beyond Earth, including celestial bodies such as planets, stars, and galaxies.
Historical Background
    The first known observation of space was made by ancient civilizations, including the Greeks and Egyptians, who used the stars for navigation and as a basis for their calendars.
    In 1957, the Soviet Union launched the first artificial satellite, Sputnik 1, sparking the Space Race between the United States and the Soviet Union.
Major Accomplishments
    1961 - Yuri Gagarin becomes the first human to travel to space.
    1969 - Neil Armstrong and Buzz Aldrin become the first humans to walk on the Moon.
    1971 - The Soviet Union launches the first space station, Salyut 1.
    1998 - The first components of the International Space Station (ISS) are launched into orbit.
Space Agencies
    National Aeronautics and Space Administration (NASA) - United States
    Roscosmos - Russia
    European Space Agency (ESA) - Europe
    China National Space Administration (CNSA) - China
    Indian Space Research Organisation (ISRO) - India
Spacecraft and Technology
    Satellites - used for communication, navigation, and observation of Earth and space.
    Space Probes - used for exploration and data collection of celestial bodies.
    Space Shuttles - reusable spacecraft used for carrying crew and cargo to and from space.
    Rockets - used for launching spacecraft into orbit and beyond.
Challenges and Risks
    Space exploration poses various challenges and risks, including:
        Exposure to radiation and microgravity can have negative effects on human health.
        Space debris can pose a threat to spacecraft and astronauts.
        The high cost of space exploration and the risk of equipment failure.
Benefits and Impact
    Space exploration has led to numerous scientific discoveries and technological advancements, including:
        Improved weather forecasting and disaster management.
        Development of new materials and technologies for use on Earth.
        Advancements in medical research and technology.
        Increased understanding of the universe and our place in it.
    The space industry also provides economic benefits, generating jobs and revenue for countries involved in space exploration.
======
Learn the format "trigger word outline" from the example below and create similar trigger word outlines for topics given by the user.
Strictly follow the format.  Use multiple nested levels. Always break sentences. Put each word on its own line. Use no '-' characters or bullet points.

Don't give it any title.

Concentrate on the topic only. Cover as many aspects of the topic as possible as deeply as possible.

Don't repeat known facts.

Don't comment the task itself.

Split each sentence into multiple parts separating parts of the sentence as in the example.

Topic: War on Another Planet

Example:
Time Line
    2150
        Humans
            Discover
                Planet Z
                    Rich in Resources
                        Gold
                        Diamond
                        Oil
                    Inhabited by
                        Aliens
                            Peaceful at First
                                Welcome Humans
                            Later
                                Start Claiming Resources
    2155
        Humans
            Start Mining Operations
                Aliens
                    Protest
                        Humans
                            Ignore
                                Tensions Rise
    2160
        Aliens
            Attack
                Human Mining Facilities
                    Humans
                        Respond with Force
                            War Breaks Out
Where
    On Planet Z
        Terrain
            Mostly Desert
                Harsh Conditions
            Few Oases
                Strategic Importance
        Underground Tunnels
            Used for
                Transport
                Communication
                Hiding
        Skies
            Filled with
                Alien Aircrafts
                    Advanced Technology
                        Hard to Defeat
                Human Ships
                    More Numerous
                    Less Advanced
                        Cheaply Produced
    Other Planets
        Allies
            Humans
                Seek Help from
                    Other Colonized Planets
                        Mostly Friendly
        Enemies
            Aliens
                Also Have Allies
                    Powerful and Dangerous
        Space Battles
            Happen in
                Open Space
                Near Planets
                Near Moons
Impact
    Can Determine
        The Outcome of the War
        The Fate of the Galaxy
           '''.trim();
           def userSystemMessages = '''
Known facts:
$ancestorContents
$siblingContents

Topic: $nodeContent

Language: English
            '''.trim();

def expandMessage(String message) {
    def node = c.selected
    def pathToRoot = node.pathToRoot
    pathToRoot = pathToRoot.take(pathToRoot.size() - 1)
    String ancestorContents = pathToRoot*.plainText.join('\n')
    String siblingContents = node.isRoot()?'': node.parent.children.findAll { it != node } *.plainText.join('\n')
    def binding = [
        nodeContent: node.plainText,
        ancestorContents: ancestorContents,
        siblingContents:siblingContents
        ]
    def engine = new groovy.text.SimpleTemplateEngine()
    def template = engine.createTemplate(message).make(binding)
    def expandedMessage = template.toString()
    return expandedMessage
}

def generateBranches(String apiKey, String systemMessage, String userMessage, String model, Integer maxTokens, Double temperature) {
    if(apiKey.isEmpty()){
        java.awt.Desktop.desktop.browse(new URI("https://platform.openai.com/account/api-keys"))
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
        def response = call_openai_chat(apiKey, messages, model, maxTokens, temperature)
        logger.info("GPT response: $response")
        SwingUtilities.invokeLater {
            dialog.dispose()
            node.appendTextOutlineAsBranch(response)
        }
    })
    workerThread.setContextClassLoader(getClass().classLoader)
    workerThread.start()
}


def call_openai_chat(String apiKey, List<Map<String, String>> messages,
                     String model,
                     Integer max_tokens,
                     Double temperature,
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

    def responseText = make_api_call(apiKey, payloadMap)

    if(responseText.isEmpty())
        return ""

    def jsonSlurper = new JsonSlurper()
    def jsonResponse = jsonSlurper.parseText(responseText)
    def assistantMessage = jsonResponse.choices[0].message.content
    println(assistantMessage)
    return assistantMessage
}

// Function to make the API call
def make_api_call(String apiKey, Map<String, Object> payloadMap) {
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

    void updateSelectedItemFromTextArea(){
        int selectedIndex = comboBox.selectedIndex
        def text = textArea.text
        comboBox.removeItemAt(selectedIndex)
        comboBox.insertItemAt(new MessageItem(text), selectedIndex)
        comboBox.selectedIndex = selectedIndex
    }
}

MessageArea createMessageSection(def swingBuilder, def messages, def title, int initialIndex, def constraints, def weighty) {
    def comboBoxModel = new DefaultComboBoxModel()
    messages.each { comboBoxModel.addElement(new MessageItem(it))}
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
        if(messageText.text != messages[selectedIndex]){
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
                    gptModelBox = comboBox(items: ['gpt-3.5-turbo', 'gpt-4'], selectedItem: gptModel, prototypeDisplayValue: 'gpt-3.5-turbo-12345')
                }
                c.gridx++
                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder('Randomness')) {
                    temperatureSlider = slider(minimum: 0, maximum: 100, minorTickSpacing: 5, majorTickSpacing: 50, snapToTicks: true,
                        paintTicks: true, paintLabels: true, value : (int) (temperature * 100.0 + 0.5))
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
                    temperatureSlider.value / 100.0)
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
