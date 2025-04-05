package com.barrymac.freeplane.addons.llm

// Helper class to centralize dependency loading
import com.barrymac.freeplane.addons.llm.DialogHelperClass
import com.barrymac.freeplane.addons.llm.ConfigManager
import com.barrymac.freeplane.addons.llm.MessageLoaderClass

class DependencyLoaderClass {
    static Map loadDependencies(config, logger, ui) {
        def addonsDir = ConfigManager.getAddonsDir(config)
        def classLoader = DependencyLoaderClass.class.classLoader
        
        // Load all dependencies with a consistent approach
        return [
            // Keep existing loaders
            apiCaller: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/ApiCaller.groovy")
            )([logger: logger, ui: ui, config: config]), // Pass dependencies
            
            messageExpander: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/MessageExpander.groovy")
            ),
            
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
