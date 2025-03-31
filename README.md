# An add-on for freeplane that uses OpenAI GPT API to brainstorm ideas from any selected node

##Screenshots

Communicator window

![screenshot communicator](images/ChatGptCommunicator.png)
-----------

Question sent
![screenshot question](images/ChatGptQuestion.png)

-----------
Answer comes
![screenshotanswer](images/ChatGptAnswer.png)

### Setup
Install add-on using the Ask-GPT-AddOn-v0.3.6.addon.mm file. Other files are used for development only.

# Pre-requisites

Check-list before starting
- [ ] I have an **OpenRouter or Open AI account**
- [ ] **Freeplane app is installed** on my computer
- [ ] **LLM add-on is installed** in Freeplane.

# Step by step configuration of Freeplane Open AI add-on

## In your Open Router Account

1. **Go to** web page https://openrouter.ai/settings/keys
2. **Log in** using MetaMask or other method
3. **Add credit** to your account using crypto currency or other method
4. **Create Key** by clicking on "Create Key" button like shown bellow and finally **copy this newly generated key**.

## Alternatively, in your Open AI Account

1. **Go to** web page https://platform.openai.com/account/api-keys
2. **Log in** using your ChatGPT account
3. **Create a new Key** by clicking on "Create a new secret Key" button like shown bellow and finally **copy this newly generated key**.

![API Key for GPT](images/openAI-Setup.jpg)

## In Freeplane, first use

1. Click on the **LLM** top menu, click **Configure Prompts and Model**
2. Select your API provider
3. **Paste an API key** into the field "API key".
4. Click **Save Changes**

... you're done.

## Recent Features in v0.3.6
- **Quick Prompt Shortcut**: Use `Ctrl+Alt+G` to instantly generate content using your saved settings
- **Direct API Access**: Choose between OpenAI and OpenRouter providers

To modify saved settings:
1. Go to **LLM > Configure Prompts & Model**
2. Adjust settings and click "Save Changes"

## Prompt template
The default prompt should be found in the add-on configuration. 
It is a good starting point for brainstorming ideas. You can change it to suit your needs. 

The following variables are replaced by the add-on:
- `$nodeContent` is replaced with the text of the selected node
- `$siblingContents` is replaced with the sibling branches of the selected node
- `$ancestorContents` is replaced with the child branches of the selected node

- `$rootText` can also be used to ground the model in the root context of the map

Using that default template LLM will be asked to generate ideas related to the selected node.

The `node` variable is rendered by a groovy template and comes from the groovy script DSL within freeplane. There are probably many more useful variables that can be used, but I haven't found them yet.  

## Improvements
Prompt and feature suggestions are very welcome, this is only a start!

### Work in progress / future release
- [x] Add preferences to set GPT parameters
- [ ] Add comparative analysis between connected nodes

For other feature ideas check the [project roadmap](docs/ROADMAP.md)

