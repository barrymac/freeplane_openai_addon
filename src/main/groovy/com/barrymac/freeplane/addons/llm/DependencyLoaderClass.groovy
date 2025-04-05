package com.barrymac.freeplane.addons.llm

// Helper class to centralize dependency loading
import com.barrymac.freeplane.addons.llm.DialogHelperClass
import com.barrymac.freeplane.addons.llm.ConfigManager
import com.barrymac.freeplane.addons.llm.MessageLoaderClass
import com.barrymac.freeplane.addons.llm.ApiCallerFactory
import com.barrymac.freeplane.addons.llm.BranchGeneratorFactory
import com.barrymac.freeplane.addons.llm.MessageExpander

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
            
            messageFileHandler: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/MessageFileHandler.groovy")
            ),
            
            nodeTagger: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/NodeTagger.groovy")
            ),
            
            responseParser: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/ResponseParser.groovy")
            ),
            
            // Add new ones
            dialogHelper: DialogHelperClass,
            
            nodeHelperUtils: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/NodeHelper.groovy")
            ),
            
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
