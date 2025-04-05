package com.barrymac.freeplane.addons.llm

// Helper class to centralize dependency loading

class DependencyLoaderClass {
    static Map loadDependencies(config, logger, ui) {
        def addonsDir = ConfigManager.getAddonsDir(config)
        def classLoader = DependencyLoaderClass.class.classLoader
        
        // Load all dependencies with a consistent approach
        return [
            // Instantiate ApiCaller using its factory
            apiCaller: ApiCallerFactory.createApiCaller([logger: logger, ui: ui]),
            
            // Provide BranchGenerator factory method reference
            branchGeneratorFactory: BranchGeneratorFactory.&createGenerateBranches,
            
            // Provide MessageExpander static method references
            messageExpander: [ expandMessage: MessageExpander.&expandMessage, getBindingMap: MessageExpander.&getBindingMap ],
            
            // Provide MessageFileHandler static method references
            messageFileHandler: [ loadMessagesFromFile: MessageFileHandler.&loadMessagesFromFile,
                                  saveMessagesToFile: MessageFileHandler.&saveMessagesToFile ],
            
            // Provide NodeTagger static method reference
            nodeTagger: NodeTagger.&addModelTagRecursively,
            
            // Provide ResponseParserClass directly
            responseParser: ResponseParserClass,
            
            // Add new ones
            dialogHelper: DialogHelperClass,
            
            // Provide NodeHelperClass directly
            nodeHelperUtils: NodeHelperClass,
            
            configManager: ConfigManager,
            
            // Provide messageLoader map directly using imported class/methods
            messageLoader: [
                MessageLoaderClass: MessageLoaderClass,
                loadDefaultMessages: MessageLoaderClass.&loadDefaultMessages,
                loadComparisonMessages: MessageLoaderClass.&loadComparisonMessages
            ]
        ]
    }
}
