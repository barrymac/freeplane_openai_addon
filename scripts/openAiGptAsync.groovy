
@Grab(group = 'org.codehaus.gpars', module = 'gpars', version = '1.2.1')

import groovy.json.JsonOutput
import groovy.json.JsonSlurper
import groovyx.gpars.GParsPool

String apiUrl = "https://api.openai.com/v1/chat/completions"
String apiKey = config.getProperty('openai_key')

// Get the current node text
def currentNode = node.getText()

def call_openai_chat(String apiUrl, String apiKey, List<Map<String, String>> messages,
                     String model = 'gpt-3.5-turbo', Double temperature = 0.7,
                     Integer max_tokens = 200, Double top_p = 1, Integer n = 1, Boolean stream = false,
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

    def responseText = make_api_call(apiUrl, apiKey, payloadMap)

    def jsonSlurper = new JsonSlurper()
    def jsonResponse = jsonSlurper.parseText(responseText)
    def assistantMessage = jsonResponse.choices[0].message.content

    return assistantMessage
}

//// Function to generate ideas and create child nodes
def generate_ideas(apiUrl, apiKey, parentNode) {
    String currentNodeText = parentNode.getText()

    List<Map<String, String>> messages = [
            [role: 'user', content: "Please generate a list of ideas related to this: $currentNodeText in the context of $node.mindMap.root.text. Separate each idea with a newline."]
    ]

    def response = call_openai_chat(apiUrl, apiKey, messages)
    logger.info("GPT response: $response")

    def ideas = response.split('\n')
    ideas.each { idea ->
        def newNode = parentNode.createChild(idea.trim())
    }
}

def generateIdeasConcurrently = { parent ->
    GParsPool.withPool {
        {generate_ideas(apiUrl, apiKey, parent)}.callAsync()
    }
}

// Generate ideas for the current node
def rootNodeFuture = generateIdeasConcurrently(node)

// Generate ideas for each child of the current node (one level of nesting) concurrently
def childIdeasFutures = node.children.collect { child ->
    generateIdeasConcurrently(child)
}

childIdeasFutures.metaClass.methods*.name.sort().unique().each { methodName ->
    println methodName
    logger.info("childIdeasFutures methods $methodName")
}

// Wait for all the idea generation to complete
rootNodeFuture.get()
childIdeasFutures*.get()



def listGParsPoolMethods() {
    GParsPool.metaClass.methods*.name.sort().unique().each { methodName ->
        println methodName
        logger.info("Gpars methods $methodName")
    }
}

// Function to make the API call
def make_api_call(String apiUrl, String apiKey, Map<String, Object> payloadMap) {
    def responseText = ""

    try {
        // Create connection
        def post = new URL(apiUrl).openConnection()
        post.setRequestMethod("POST")
        post.setDoOutput(true)
        post.setRequestProperty("Content-Type", "application/json")
        post.setRequestProperty("Authorization", "Bearer " + apiKey)

        def payload = JsonOutput.toJson(payloadMap)
        post.getOutputStream().write(payload.getBytes("UTF-8"))

        def postRC = post.getResponseCode()
        if (postRC.equals(200)) {
            responseText = post.getInputStream().getText()
            logger.info("GPT response: $responseText")
        }
    } catch (Exception e) {
        println("ERROR: " + e.toString())
    }

    return responseText
}

