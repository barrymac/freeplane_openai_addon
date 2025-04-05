package com.barrymac.freeplane.addons.llm

// Helper class to centralize configuration loading
class ConfigManager {
    static Map loadBaseConfig(config) {
        // Define default models directly in code
        def DEFAULT_MODELS = [
            'meta-llama/llama-3.2-1b-instruct',
            'deepseek/deepseek-r1-zero:free',
            'deepseek/deepseek-r1',
            'anthropic/claude-3-opus', 
            'anthropic/claude-3-sonnet',
            'anthropic/claude-3-haiku',
            'openai/o3-mini',
            'openai/o3-mini-high',
            'google/gemini-2.5-pro-exp-03-25:free',
            'google/gemini-pro',
            'meta-llama/llama-3-70b-instruct',
            'gpt-3.5-turbo',
            'gpt-4'
        ]
        
        return [
            apiKey: config.getProperty('openai.key', ''),
            model: config.getProperty('openai.gpt_model', 'gpt-4'),
            maxTokens: config.getProperty('openai.max_response_length', 2000) as int,
            temperature: config.getProperty('openai.temperature', 0.7) as double,
            provider: config.getProperty('openai.api_provider', 'openrouter'),
            systemMessageIndex: config.getProperty('openai.system_message_index', 0) as int,
            // Use config property if exists, else use hardcoded defaults
            availableModels: config.getProperty('openai.available_models')?.split('\n') ?: DEFAULT_MODELS
        ]
    }
    
    static String getAddonsDir(config) {
        return "${config.freeplaneUserDirectory}/addons/promptLlmAddOn"
    }
}
