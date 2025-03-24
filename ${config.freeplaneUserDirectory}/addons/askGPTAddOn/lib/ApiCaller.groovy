def createApiCaller(closures) {
    def logger = closures.logger
    def ui = closures.ui
    def config = closures.config
    
    def make_openai_call = { String apiKey, Map<String, Object> payloadMap ->
        def responseText = ""

        try {
            String apiUrl = 'https://api.openai.com/v1/chat/completions'
            def post = new URL(apiUrl).openConnection()
            post.setRequestMethod("POST")
            post.setDoOutput(true)
            post.setRequestProperty("Content-Type", "application/json")
            post.setRequestProperty("Authorization", "Bearer " + apiKey)

            def payload = groovy.json.JsonOutput.toJson(payloadMap)
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

    def make_openrouter_call = { String apiKey, Map<String, Object> payloadMap ->
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

            def payload = groovy.json.JsonOutput.toJson(payloadMap)
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
    
    return [
        make_openai_call: make_openai_call,
        make_openrouter_call: make_openrouter_call
    ]
}

return this.&createApiCaller
