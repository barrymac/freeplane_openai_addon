import groovy.text.SimpleTemplateEngine

// Function to expand message templates with node context
static def expandMessage(String message, def node) {
    def pathToRoot = node.pathToRoot
    def rootText = node.mindMap.root.text
    pathToRoot = pathToRoot.take(pathToRoot.size() - 1)
    String ancestorContents = pathToRoot*.plainText.join('\n')
    String siblingContents = node.isRoot() ? '' : node.parent.children.findAll { it != node }*.plainText.join('\n')
    
    def binding = [
        rootText: rootText,
        nodeContent: node.plainText,
        ancestorContents: ancestorContents,
        siblingContents: siblingContents
    ]
    
    def engine = new SimpleTemplateEngine()
    def template = engine.createTemplate(message).make(binding)
    return template.toString()
}

// Return the function as closure
return this.&expandMessage
