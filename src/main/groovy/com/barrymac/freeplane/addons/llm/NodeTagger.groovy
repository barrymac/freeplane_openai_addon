package com.barrymac.freeplane.addons.llm

class NodeTagger {
    // Helper function to recursively add a dynamic tag (e.g., "LLM:model-name") to a node and its children
    static def addModelTagRecursively(node, modelName, logger) {
        if (node == null || modelName == null || modelName.trim().isEmpty()) return

        // Sanitize model name slightly for tag (replace slashes, common in OpenRouter models)
        def sanitizedModelName = modelName.replace('/', '_')
        def tagName = "LLM:${sanitizedModelName}"

        try {
            node.tags.add(tagName)
            node.children.each { child -> addModelTagRecursively(child, modelName, logger) }
            // Pass original modelName recursively
        } catch (Exception e) {
            // Log error if tagging fails for any reason
            logger.warn("Failed to add tag '${tagName}' to node ${node.text}".toString(), e as Throwable)
        }
    }
}
