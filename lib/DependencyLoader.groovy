// Helper class to centralize dependency loading
class DependencyLoader {
    static Map loadDependencies(config, logger, ui) {
        def addonsDir = "${config.freeplaneUserDirectory}/addons/promptLlmAddOn"
        
        // Load all dependencies with a consistent approach
        return [
            apiCaller: new GroovyShell(DependencyLoader.class.classLoader).evaluate(
                new File("${addonsDir}/lib/ApiCaller.groovy")
            )([logger: logger, ui: ui, config: config]),
            
            messageExpander: new GroovyShell(DependencyLoader.class.classLoader).evaluate(
                new File("${addonsDir}/lib/MessageExpander.groovy")
            ),
            
            messageFileHandler: new GroovyShell(DependencyLoader.class.classLoader).evaluate(
                new File("${addonsDir}/lib/MessageFileHandler.groovy")
            ),
            
            nodeTagger: new GroovyShell(DependencyLoader.class.classLoader).evaluate(
                new File("${addonsDir}/lib/NodeTagger.groovy")
            ),
            
            // Load the new response parser
            responseParser: new GroovyShell(DependencyLoader.class.classLoader).evaluate(
                new File("${addonsDir}/lib/ResponseParser.groovy")
            )
        ]
    }
}

// Return the class for use in scripts
return DependencyLoader
