// Helper class to centralize dependency loading
class DependencyLoaderClass {
    static Map loadDependencies(config, logger, ui) {
        def addonsDir = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn"
        def classLoader = DependencyLoader.class.classLoader // Use a consistent classloader
        
        // Load all dependencies with a consistent approach
        return [
            // Load exceptions first
            exceptions: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/Exceptions.groovy")
            ),
            
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
            dialogHelper: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/DialogHelper.groovy")
            ),
            
            nodeHelperUtils: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/NodeHelper.groovy")
            ),
            
            configManager: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/ConfigLoader.groovy")
            ),
            
            messageLoader: new GroovyShell(classLoader).evaluate(
                new File("${addonsDir}/lib/MessageLoader.groovy")
            )
        ]
    }
}

// Return the class for use in scripts
return DependencyLoaderClass
