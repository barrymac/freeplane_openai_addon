class MessageExpander {
    static String expandMessage(String message, def node) {
        def pathToRoot = node.pathToRoot
        pathToRoot = pathToRoot.take(pathToRoot.size() - 1)
        String ancestorContents = pathToRoot*.plainText.join('\n')
        String siblingContents = node.isRoot() ? '' : node.parent.children.findAll { it != node }*.plainText.join('\n')
        
        def binding = [
            nodeContent: node.plainText,
            ancestorContents: ancestorContents,
            siblingContents: siblingContents
        ]
        
        def engine = new groovy.text.SimpleTemplateEngine()
        def template = engine.createTemplate(message).make(binding)
        return template.toString()
    }
}
