// main_script.groovy
import ApiCalls
import groovy.text.SimpleTemplateEngine

String apiUrl = "https://api.openai.com/v1/chat/completions"
String apiKey = config.getProperty('openai_key')
String model = config.getProperty('gpt_model')
String max_node_depth = config.getProperty('max_node_depth')

String defaultPrompt = '''
    Please generate a list of 5 ideas related to the subject: '${node.getText()}', in the context of '${node.mindMap.root.text}'. Separate each idea with a newline.
'''

def templateText = config.getProperty('gpt_prompt').replaceAll(/^"(.*)"$/, '$1')
def binding = [node: node]
def engine = new SimpleTemplateEngine()
def template = engine.createTemplate(templateText).make(binding)
def evaluatedPrompt = template.toString()

ApiCalls.generate_ideas(apiUrl, apiKey, node, evaluatedPrompt, model, logger)
