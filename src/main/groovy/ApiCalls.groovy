// ApiCalls.groovy
import groovy.json.JsonOutput
import groovy.json.JsonSlurper

class ApiCalls {

    static String call_openai_chat(String apiUrl, String apiKey, List<Map<String, String>> messages,
                                   String model, logger) {
        Double temperature = 0.7
        Integer max_tokens = 200
        Double top_p = 1
        Integer n = 1
        Boolean stream = false
        Integer logprobs = null
        List<String> stop = null
        Double presence_penalty = 0
        Double frequency_penalty = 0
        Map<String, Integer> logit_bias = null
        String user = null

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

        def responseText = make_api_call(apiUrl, apiKey, payloadMap, logger)

        def jsonSlurper = new JsonSlurper()
        def jsonResponse = jsonSlurper.parseText(responseText)
        def assistantMessage = jsonResponse.choices[0].message.content

        return assistantMessage
    }


    static String make_api_call(String apiUrl, String apiKey, Map<String, Object> payloadMap, logger) {
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
            } else if (postRC.equals(401)) {
                logger.error("Invalid authentication or incorrect API key provided.")
            } else if (postRC.equals(404)) {
                logger.error("You must be a member of an organization to use the API.")
            } else if (postRC.equals(429)) {
                logger.error("Rate limit reached for requests or current quota exceeded.")
            } else {
                logger.error("Unhandled error code returned from API.")
            }

        } catch (Exception e) {
            println("ERROR: " + e.toString())
        }

        return responseText
    }

    static void generate_ideas(String apiUrl, String apiKey, Object node, String prompt, model, logger) {
        String currentNodeText = node.getText()

        List<Map<String, String>> messages = [
                [role: 'user', content: prompt]
        ]

        def response = call_openai_chat(apiUrl, apiKey, messages, model, logger)
        logger.info("GPT response: $response")

        def ideas = response.split('\n')
        ideas.each { idea ->
            def newNode = node.createChild(idea.trim())
        }
    }

}





