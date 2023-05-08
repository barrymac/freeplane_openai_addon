# An add-on for freeplane that uses OpenAI GPT API to brainstorm ideas from any selected node

Demo video of the openai addon:

![demo](demo/demo.gif)

## Known issue
There's a mysterious network permissions issue that sometimes comes up that I'm still working out.

### Setup
Install add-on using the Gpt-AddOn-v0.2.addon.mm file. Other files are used for development only.

# Pre-requisites
Check-list before starting
- [ ] I have an **Open AI account**
- [ ] **Freeplane app is installed** on my computer
- [ ] **Open AI add-on is installed** in Freeplane.

# Step by step configuration of Freeplane Open AI add-on

## In your Open AI Account

1. **Go to** web page https://platform.openai.com/account/api-keys
2. **Log in** using your ChatGPT account
3. **Create a new Key** by clicking on "Create a new secret Key" button like shown bellow and finally **copy this newly generated key**.

![API Key for GPT](images/openAI-Setup.jpg)

## In Freeplane

1. Start the Freeplane app and go to menu **Tools > Add-ons**
2. Then click on the **Add-ons tab**, select the **ChatGPT add-on** and click on **Configure**
3. Finally **paste the GPT key** from  your clipboard into the field "Open AI API key".

... you're done.

## Prompt template
The default prompt should be found in the add-on configuration. It is a good starting point for brainstorming ideas. You can change it to suit your needs. The default prompt is:

```Please generate a list of 5 ideas related to the subject: '${node.getText()}', in the context of '${node.mindMap.root.text}'. Separate each idea with a newline.```

Where the following variables are replaced by the add-on:
- `${node.getText()}` is replaced by the text of the selected node
- `${node.mindMap.root.text}` is replaced by the text of the root node of the mindmap

So GPT will be asked to generate ideas related to the selected node, in the context of the root node of the mindmap.

The `node` variable is rendered by a groovy template and comes from the groovy script DSL within freeplane. There are probably many more useful variables that can be used, but I haven't found them yet.  

## Improvements
Prompt suggestions are very welcome, this is only a start!!

### Work in progress / future release
- [ ] Add preferences to set more GPT parameters
- [ ] Add features for research task execution, like how AutoGPT, Baby AGI, Agent-LLM etc work.

