// Helper class to centralize configuration loading
class ConfigManager {
    static Map loadBaseConfig(config) {
        return [
            apiKey: config.getProperty('openai.key', ''),
            model: config.getProperty('openai.gpt_model', 'gpt-3.5-turbo'),
            maxTokens: config.getProperty('openai.max_response_length', 1000) as int,
            temperature: config.getProperty('openai.temperature', 0.7) as double,
            provider: config.getProperty('openai.api_provider', 'openrouter'),
            systemMessageIndex: config.getProperty('openai.system_message_index', 0) as int
        ]
    }
    
    static String getAddonsDir(config) {
        return "${config.freeplaneUserDirectory}/addons/promptLlmAddOn"
    }
}

// Return the class for use in scripts
return ConfigManager
