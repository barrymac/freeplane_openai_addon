<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Prompt-LLM-AddOn" FOLDED="false" ID="ID_696401721" CREATED="1685111823904" MODIFIED="1743394276439" LINK="https://github.com/barrymac/freeplane_openai_addon" BACKGROUND_COLOR="#97c7dc" STYLE="oval" MAX_WIDTH="20 cm">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" mapUsesOwnSaveOptions="true" save_modification_times="false" show_tags="UNDER_NODES" save_last_visited_node="default" show_note_icons="true" associatedTemplateLocation="template:/standard-1.6.mm" save_folding="save_folding_if_map_is_changed" fit_to_viewport="false" show_icons="BESIDE_NODES"/>
    <tags category_separator="::"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent TYPE="DETAILS" CONTENT-TYPE="plain/auto"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.tags">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#afd3f7" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#afd3f7"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_67550811">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#003399" TRANSPARENCY="255" DESTINATION="ID_67550811"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="18" RULE="ON_BRANCH_CREATION"/>
<attribute_layout NAME_WIDTH="112.61538 pt" VALUE_WIDTH="333.23076 pt"/>
<attribute NAME="name" VALUE="promptLlmAddOn"/>
<attribute NAME="version" VALUE="v0.3.7"/>
<attribute NAME="author" VALUE="barry, dpolivaev"/>
<attribute NAME="freeplaneVersionFrom" VALUE="v1.11.3" OBJECT="org.freeplane.features.format.FormattedObject|java.lang.String&amp;#x7c;v1.11.3|number:decimal:#0.####"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="homepage" VALUE="github.com/barrymac/freeplane_openai_addon"/>
<attribute NAME="downloadUrl" VALUE="https://${homepage}/releases/download/${version}/LLM-AddOn-${version}.addon.mm"/>
<attribute NAME="changelogUrl" VALUE="https://${homepage}/commits/main"/>
<attribute NAME="addonsMenu" VALUE="/menu_bar/LLM"/>
<attribute NAME="updateUrl" VALUE="https://raw.githubusercontent.com/barrymac/freeplane_openai_addon/release/version.properties"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The homepage of this add-on should be set as the link of the root node.
    </p>
    <p>
      The basic properties of this add-on. They can be used in script names and other attributes, e.g. &quot;${name}.groovy&quot;.
    </p>
    <ul>
      <li>
        name: The name of the add-on, normally a technically one (no spaces, no special characters except _.-).
      </li>
      <li>
        author: Author's name(s) and (optionally) email adresses.
      </li>
      <li>
        version: Since it's difficult to protect numbers like 1.0 from Freeplane's number parser it's advised to prepend a 'v' to the number, e.g. 'v1.0'.
      </li>
      <li>
        freeplane-version-from: The oldest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too old.
      </li>
      <li>
        freeplane-version-to: Normally empty: The newest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too new.
      </li>
      <li>
        updateUrl: URL of the file containing information (version, download url) on the latest version of this add-on. By default: &quot;${homepage}/version.properties&quot;
      </li>
      <li>
        downloadUrl: add-on file download URL added to version.properties, by default ${homepage}/$name-$version.addon.mm&quot;
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="description" POSITION="top_or_left" ID="ID_365830098" CREATED="1685111823975" MODIFIED="1742834859965">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Description would be awkward to edit as an attribute.
    </p>
    <p>
      So you have to put the add-on description as a child of the <i>'description'</i>&#xa0;node.
    </p>
    <p>
      To translate the description you have to define a translation for the key 'addons.${name}.description'.
    </p>
  </body>
</html></richcontent>
<node TEXT="Add on to use Language model APIs to generate mind map content" ID="ID_110054152" CREATED="1685111823976" MODIFIED="1743044046669"/>
</node>
<node TEXT="changes" POSITION="top_or_left" ID="ID_138977336" CREATED="1685111823976" MODIFIED="1685111823976">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Change log of this add-on: append one node for each noteworthy version and put the details for each version into a child node.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="license" FOLDED="true" POSITION="top_or_left" ID="ID_950695085" CREATED="1685111823976" MODIFIED="1742834859969">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The add-ons's license that the user has to accept before she can install it.
    </p>
    <p>
      
    </p>
    <p>
      The License text has to be entered as a child of the <i>'license'</i>&#xa0;node, either as plain text or as HTML.
    </p>
  </body>
</html></richcontent>
<node TEXT="&#xa;This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 2 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the&#xa;GNU General Public License for more details.&#xa;" ID="ID_726417928" CREATED="1685111823976" MODIFIED="1685111823976"/>
</node>
<node TEXT="preferences.xml" POSITION="top_or_left" ID="ID_902316079" CREATED="1685111823976" MODIFIED="1743347818956">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      <span style="color: #000000; font-family: SansSerif, sans-serif;">The child node contains the add-on configuration as an extension to mindmapmodemenu.xml (in Tools-&gt;Preferences-&gt;Add-ons). </span>
    </p>
    <p>
      <span style="color: #000000; font-family: SansSerif, sans-serif;">Every property in the configuration should receive a default value in <i>default.properties</i>&#xa0;node.</span>
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="default.properties" POSITION="top_or_left" ID="ID_1363888784" CREATED="1685111823976" MODIFIED="1685111823976">
<attribute_layout NAME_WIDTH="138.75 pt" VALUE_WIDTH="138.75 pt"/>
<attribute NAME="${name}.icon" VALUE="/images/${name}.svg"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      These properties are used for:
    </p>
    <ul>
      <li>
        Each property defined in the preferences should have a default value in the attributes of this node.
      </li>
      <li>
        For each menu item with an icon add an attribute with the icon key (use developer tool menuItemInfo) as key and the icon path as value. Example: '${name}.icon': '/images/${name}-icon.png'
      </li>
    </ul>
  </body>
</html></richcontent>
<edge COLOR="#00ffff"/>
</node>
<node TEXT="translations" POSITION="top_or_left" ID="ID_1606264590" CREATED="1685111823976" MODIFIED="1685111823976">
<edge COLOR="#7c0000"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      The translation keys that this script uses. Define one child node per supported locale. The attributes contain the translations. Define at least
    </p>
    <ul>
      <li>
        'addons.${name}' for the add-on's name
      </li>
      <li>
        'addons.${name}.description' for the description, e.g. in the add-on overview dialog (not necessary for English)
      </li>
      <li>
        'addons.${name}.&lt;scriptname&gt;' for each script since it will be the menu title.
      </li>
    </ul>
  </body>
</html></richcontent>
<node TEXT="en" ID="ID_1097454652" CREATED="1685111823977" MODIFIED="1742847796035">
<attribute_layout NAME_WIDTH="159 pt" VALUE_WIDTH="102 pt"/>
<attribute NAME="addons.${name}" VALUE="LLM AddOn"/>
<attribute NAME="addons.${name}.askGPT" VALUE="Configure Prompts and Model"/>
<attribute NAME="addons.${name}.quickPrompt" VALUE="Quick Prompt (Ctrl+Alt+G)"/>
<attribute NAME="addons.${name}.compareConnectedNodes" VALUE="Compare Connected Nodes"/>
</node>
</node>
<node TEXT="deinstall" POSITION="top_or_left" ID="ID_1927303474" CREATED="1685111823977" MODIFIED="1743044537834">
<edge COLOR="#00007c"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      List of files and/or directories to remove on uninstall
    </p>
  </body>
</html></richcontent>
<attribute_layout NAME_WIDTH="37.5 pt" VALUE_WIDTH="268.49999 pt"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/AskGPT.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/images/${name}.svg"/>
<attribute NAME="delete" VALUE="${installationbase}/images/${name}-icon.svg"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/MessageExpander.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/defaultUserMessages.txt"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/defaultSystemMessages.txt"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/BranchGenerator.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/ApiCaller.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/MessageFileHandler.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/AskGpt.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/QuickPrompt.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/compareNodesUserMessage.txt"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/CompareConnectedNodes.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/promptLlmAddOn.svg"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/promptLlmAddOn-icon.svg"/>
</node>
<node TEXT="scripts" POSITION="bottom_or_right" ID="ID_684917236" CREATED="1685111823977" MODIFIED="1742834859980">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain multiple scripts. The node text defines the script name (e.g. insertInlineImage.groovy). The name must have a suffix of a supported script language like .groovy or .js and may only consist of letters and digits. The script properties have to be configured via attributes:
    </p>
    <p>
      
    </p>
    <p>
      * menuLocation: &lt;locationkey&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- Defines the menu location, defaults a sub menu 'main_menu_scripting/addons.${name}'.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;-&#xa0;Use developer tool menuItemInfo to inspect menu location keys.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * menuTitleKey: &lt;key&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- The menu item title will be looked up under the translation key &lt;key&gt; - don't forget to define its translation.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * executionMode: &lt;mode&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- The execution mode as described in the Freeplane wiki (http://freeplane.sourceforge.net/wiki/index.php/Scripting)
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- ON_SINGLE_NODE: Execute the script once. The <i>node</i>&#xa0;variable is set to the selected node.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- ON_SELECTED_NODE: Execute the script n times for n selected nodes, once for each node.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- ON_SELECTED_NODE_RECURSIVELY: Execute the script on every selected node and recursively on all of its children.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- In doubt use ON_SINGLE_NODE.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * keyboardShortcut: &lt;shortcut&gt;
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- Optional: keyboard combination / accelerator for this script, e.g. control alt I
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- Use lowercase letters for modifiers and uppercase for letters. Use no + signs.
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- The available key names are listed at http://download.oracle.com/javase/1.4.2/docs/api/java/awt/event/KeyEvent.html#VK_0
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;&#xa0;&#xa0;In the list only entries with a 'VK_' prefix count. Omit the prefix in the shortcut definition.
    </p>
    <p>
      
    </p>
    <p>
      * Permissions&#xa0;that the script(s) require, each either false or true:
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- execute_scripts_without_asking
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- execute_scripts_without_file_restriction: permission to read files
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- execute_scripts_without_write_restriction: permission to create/change/delete files
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- execute_scripts_without_exec_restriction: permission to execute other programs
    </p>
    <p>
      &#xa0;&#xa0;&#xa0;- execute_scripts_without_network_restriction: permission to access the network
    </p>
    <p>
      &#xa0;&#xa0;Notes:
    </p>
    <p>
      &#xa0;&#xa0;- The set of permissions is fixed.
    </p>
    <p>
      &#xa0;&#xa0;- Don't change the attribute names, don't omit one.
    </p>
    <p>
      &#xa0;&#xa0;- Set the values either to true or to false
    </p>
    <p>
      &#xa0;&#xa0;- In any case set execute_scripts_without_asking to true unless you want to annoy users.
    </p>
  </body>
</html></richcontent>
<node TEXT="AskGpt.groovy" FOLDED="true" ID="ID_231711959" CREATED="1685111823978" MODIFIED="1742830474533">
<attribute_layout NAME_WIDTH="202.49999 pt" VALUE_WIDTH="156.75 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.askGPT"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="true"/>
<node TEXT="import groovy.swing.SwingBuilder&#xa;&#xa;import javax.swing.*&#xa;import java.awt.*&#xa;&#xa;String apiKey = config.getProperty(&apos;openai.key&apos;, &apos;&apos;)&#xa;String gptModel = config.getProperty(&apos;openai.gpt_model&apos;, &apos;gpt-3.5-turbo&apos;)&#xa;int maxResponseLength = config.getProperty(&apos;openai.max_response_length&apos;, 1000)&#xa;double temperature = config.getProperty(&apos;openai.temperature&apos;, 0.7)&#xa;int selectedSystemMessageIndex = config.getProperty(&apos;openai.system_message_index&apos;, 0)&#xa;int selectedUserMessageIndex = config.getProperty(&apos;openai.user_message_index&apos;, 0)&#xa;String apiProvider = config.getProperty(&apos;openai.api_provider&apos;, &apos;openrouter&apos;)&#xa;&#xa;String systemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptSystemMessages.txt&quot;&#xa;String userMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptUserMessages.txt&quot;&#xa;String defaultSystemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultSystemMessages.txt&quot;&#xa;String defaultUserMessagesFilePath = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultUserMessages.txt&quot;&#xa;&#xa;String defaultSystemMessages = new File(defaultSystemMessagesFilePath).text.trim()&#xa;String userSystemMessages = new File(defaultUserMessagesFilePath).text.trim()&#xa;&#xa;// Load the message expander function from external file&#xa;def expandMessage = new GroovyShell(this.class.classLoader).evaluate(&#xa;        new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageExpander.groovy&quot;)&#xa;)&#xa;&#xa;// Load the branch generator function from external file&#xa;def createBranchGenerator = new GroovyShell(this.class.classLoader).evaluate(&#xa;        new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/BranchGenerator.groovy&quot;)&#xa;)&#xa;&#xa;// Load the API caller functions from external file&#xa;def createApiCaller = new GroovyShell(this.class.classLoader).evaluate(&#xa;        new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/ApiCaller.groovy&quot;)&#xa;)&#xa;def apiCaller = createApiCaller([logger: logger, ui: ui, config: config])&#xa;def make_openai_call = apiCaller.make_openai_call&#xa;def make_openrouter_call = apiCaller.make_openrouter_call&#xa;&#xa;// Load the message file handler functions from external file&#xa;def messageFileHandler = new GroovyShell(this.class.classLoader).evaluate(&#xa;        new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageFileHandler.groovy&quot;)&#xa;)&#xa;def loadMessagesFromFile = messageFileHandler.loadMessagesFromFile&#xa;def saveMessagesToFile = messageFileHandler.saveMessagesToFile&#xa;&#xa;&#xa;// Initialize the branch generator with necessary dependencies&#xa;def generateBranches = createBranchGenerator([&#xa;        c                   : c,&#xa;        ui                  : ui,&#xa;        logger              : logger,&#xa;        make_openai_call    : make_openai_call,&#xa;        make_openrouter_call: make_openrouter_call&#xa;])&#xa;&#xa;&#xa;class MessageItem {&#xa;    String value&#xa;&#xa;    MessageItem(String value) {&#xa;        this.value = value.replaceAll(/\s+/, &apos; &apos;).take(120)&#xa;    }&#xa;&#xa;    @Override&#xa;    boolean equals(Object o) {&#xa;        return this.is(o)&#xa;    }&#xa;&#xa;    @Override&#xa;    int hashCode() {&#xa;        return System.identityHashCode(this)&#xa;    }&#xa;&#xa;    @Override&#xa;    String toString() {&#xa;        return value&#xa;    }&#xa;}&#xa;&#xa;&#xa;class MessageArea {&#xa;    JTextArea textArea&#xa;    JComboBox comboBox&#xa;&#xa;    void updateSelectedItemFromTextArea() {&#xa;        int selectedIndex = comboBox.selectedIndex&#xa;        def text = textArea.text&#xa;        comboBox.removeItemAt(selectedIndex)&#xa;        comboBox.insertItemAt(new MessageItem(text), selectedIndex)&#xa;        comboBox.selectedIndex = selectedIndex&#xa;    }&#xa;}&#xa;&#xa;MessageArea createMessageSection(def swingBuilder, def messages, def title, int initialIndex, def constraints, def weighty) {&#xa;    def comboBoxModel = new DefaultComboBoxModel()&#xa;    messages.each { comboBoxModel.addElement(new MessageItem(it)) }&#xa;    def messageComboBox, messageText&#xa;    def selectedIndex = initialIndex&#xa;&#xa;    constraints.gridy++&#xa;    swingBuilder.label(&quot;${title}:&quot;, constraints: constraints)&#xa;    constraints.gridy++&#xa;    messageComboBox = swingBuilder.comboBox(model: comboBoxModel, constraints: constraints)&#xa;    messageComboBox.selectedIndex = initialIndex&#xa;&#xa;    constraints.gridy++&#xa;    constraints.weighty = 1.0 * weighty&#xa;    swingBuilder.scrollPane(constraints: constraints) {&#xa;        messageText = textArea(rows: 5 * weighty, columns: 80, tabSize: 3, lineWrap: true, wrapStyleWord: true, text: messages[initialIndex], caretPosition: 0) {}&#xa;    }&#xa;    messageComboBox.addActionListener { actionEvent -&gt;&#xa;        if (selectedIndex != -1 &amp;&amp; messageComboBox.selectedIndex != selectedIndex) {&#xa;            messages[selectedIndex] = messageText.text&#xa;            comboBoxModel.removeElementAt(selectedIndex)&#xa;            comboBoxModel.insertElementAt(new MessageItem(messages[selectedIndex]), selectedIndex)&#xa;        }&#xa;        selectedIndex = messageComboBox.selectedIndex&#xa;        if (messageText.text != messages[selectedIndex]) {&#xa;            messageText.text = messages[selectedIndex]&#xa;            messageText.caretPosition = 0&#xa;        }&#xa;    }&#xa;    constraints.gridy++&#xa;    constraints.weighty = 0.0&#xa;    swingBuilder.panel(layout: new FlowLayout(), constraints: constraints) {&#xa;        button(action: swingBuilder.action(name: &quot;Reset ${title}&quot;.toString()) {&#xa;            messageText.text = messages[selectedIndex]&#xa;            messageText.caretPosition = 0&#xa;        })&#xa;        button(action: swingBuilder.action(name: &quot;Duplicate ${title}&quot;.toString()) {&#xa;            messages.add(messageText.text)&#xa;            comboBoxModel.addElement(new MessageItem(messageText.text))&#xa;            messageText.text = messages[selectedIndex]&#xa;            messageComboBox.selectedIndex = selectedIndex = messageComboBox.itemCount - 1&#xa;        })&#xa;        button(action: swingBuilder.action(name: &quot;Delete ${title}&quot;.toString()) {&#xa;            if (selectedIndex != -1) {&#xa;                messages.remove(selectedIndex)&#xa;                comboBoxModel.removeElementAt(selectedIndex)&#xa;                selectedIndex = -1&#xa;            }&#xa;        })&#xa;    }&#xa;    return new MessageArea(textArea: messageText, comboBox: messageComboBox)&#xa;}&#xa;&#xa;def swingBuilder = new SwingBuilder()&#xa;swingBuilder.edt { // edt method makes sure the GUI is built on the Event Dispatch Thread.&#xa;    def dialog = swingBuilder.dialog(title: &apos;Chat GPT Communicator&apos;, owner: ui.currentFrame) {&#xa;        swingBuilder.panel(layout: new GridBagLayout()) {&#xa;            def constraints = new GridBagConstraints()&#xa;            constraints.fill = GridBagConstraints.BOTH&#xa;            constraints.weightx = 1.0&#xa;            constraints.gridx = 0&#xa;            constraints.gridy = -1  // Will be incremented to 0 in the first call to createSection&#xa;            def systemMessages = loadMessagesFromFile(systemMessagesFilePath, defaultSystemMessages)&#xa;            def userMessages = loadMessagesFromFile(userMessagesFilePath, userSystemMessages)&#xa;            MessageArea systemMessageArea = createMessageSection(swingBuilder, systemMessages, &quot;System Message&quot;, selectedSystemMessageIndex, constraints, 4)&#xa;            MessageArea userMessageArea = createMessageSection(swingBuilder, userMessages, &quot;User Message&quot;, selectedUserMessageIndex, constraints, 1)&#xa;            constraints.gridy++&#xa;            def apiKeyField&#xa;            def responseLengthField&#xa;            def gptModelBox&#xa;            def temperatureSlider&#xa;            swingBuilder.panel(constraints: constraints, layout: new GridBagLayout()) {&#xa;                def c = new GridBagConstraints()&#xa;                c.fill = GridBagConstraints.BOTH&#xa;                c.weightx = 1.0&#xa;                c.weighty = 1.0&#xa;                c.gridx = 0&#xa;                c.gridy = 0&#xa;                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder(&apos;API Key&apos;)) {&#xa;                    apiKeyField = passwordField(columns: 10, text: apiKey)&#xa;                }&#xa;                c.gridx++&#xa;                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder(&apos;Max Response Length&apos;), toolTipText: &apos;Maximum Response Length&apos;) {&#xa;                    responseLengthField = formattedTextField(columns: 5, value: maxResponseLength)&#xa;                }&#xa;                c.gridx++&#xa;                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder(&apos;Language Model&apos;)) {&#xa;                    gptModelBox = comboBox(items: [&#xa;                            &apos;meta-llama/llama-3.2-1b-instruct&apos;,&#xa;                            &apos;deepseek/deepseek-r1-zero:free&apos;,&#xa;                            &apos;deepseek/deepseek-r1&apos;,&#xa;                            &apos;anthropic/claude-3-opus&apos;,&#xa;                            &apos;anthropic/claude-3-sonnet&apos;,&#xa;                            &apos;anthropic/claude-3-haiku&apos;,&#xa;                            &apos;openai/o3-mini&apos;,&#xa;                            &apos;openai/o3-mini-high&apos;,&#xa;                            &apos;google/gemini-2.5-pro-exp-03-25:free&apos;,&#xa;                            &apos;google/gemini-pro&apos;,&#xa;                            &apos;meta-llama/llama-3-70b-instruct&apos;,&#xa;                            &apos;gpt-3.5-turbo&apos;,&#xa;                            &apos;gpt-4&apos;,&#xa;                    ], selectedItem: gptModel, prototypeDisplayValue: &apos;anthropic/claude-3-opus-12345&apos;)&#xa;                }&#xa;                c.gridx++&#xa;                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder(&apos;API Provider&apos;)) {&#xa;                    apiProviderBox = comboBox(items: [&apos;openai&apos;, &apos;openrouter&apos;], selectedItem: apiProvider)&#xa;                }&#xa;                c.gridx++&#xa;                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder(&apos;Randomness&apos;)) {&#xa;                    temperatureSlider = slider(minimum: 0, maximum: 100, minorTickSpacing: 5, majorTickSpacing: 50, snapToTicks: true,&#xa;                            paintTicks: true, paintLabels: true, value: (int) (temperature * 100.0 + 0.5))&#xa;                }&#xa;            }&#xa;            constraints.gridy++&#xa;            swingBuilder.panel(constraints: constraints) {&#xa;                def askGptButton = swingBuilder.button(constraints: c, action: swingBuilder.action(name: &apos;Prompt LLM&apos;) {&#xa;                    generateBranches(String.valueOf(apiKeyField.password),&#xa;                            systemMessageArea.textArea.text,&#xa;                            expandMessage(userMessageArea.textArea.text, c.selected),&#xa;                            gptModelBox.selectedItem,&#xa;                            responseLengthField.value,&#xa;                            temperatureSlider.value / 100.0,&#xa;                            apiProviderBox.selectedItem)&#xa;                })&#xa;                askGptButton.rootPane.defaultButton = askGptButton&#xa;                swingBuilder.button(constraints: c, action: swingBuilder.action(name: &apos;Save Changes&apos;) {&#xa;                    systemMessages[systemMessageArea.comboBox.selectedIndex] = systemMessageArea.textArea.text&#xa;                    userMessages[userMessageArea.comboBox.selectedIndex] = userMessageArea.textArea.text&#xa;                    saveMessagesToFile(systemMessagesFilePath, systemMessages)&#xa;                    saveMessagesToFile(userMessagesFilePath, userMessages)&#xa;                    config.setProperty(&apos;openai.key&apos;, String.valueOf(apiKeyField.password))&#xa;                    config.setProperty(&apos;openai.gpt_model&apos;, gptModelBox.selectedItem)&#xa;                    config.setProperty(&apos;openai.max_response_length&apos;, responseLengthField.value)&#xa;                    config.setProperty(&apos;openai.temperature&apos;, temperatureSlider.value / 100.0)&#xa;                    config.setProperty(&apos;openai.system_message_index&apos;, systemMessageArea.comboBox.selectedIndex)&#xa;                    config.setProperty(&apos;openai.user_message_index&apos;, userMessageArea.comboBox.selectedIndex)&#xa;                    config.setProperty(&apos;openai.api_provider&apos;, apiProviderBox.selectedItem)&#xa;                    systemMessageArea.updateSelectedItemFromTextArea()&#xa;                    userMessageArea.updateSelectedItemFromTextArea()&#xa;                })&#xa;            }&#xa;        }&#xa;    }&#xa;    dialog.pack()&#xa;    ui.setDialogLocationRelativeTo(dialog, ui.currentFrame)&#xa;    dialog.show()&#xa;}&#xa;" ID="ID_855370439" CREATED="1743739747722" MODIFIED="1743739747751"/>
</node>
<node TEXT="QuickPrompt.groovy" FOLDED="true" ID="ID_QUICK_PROMPT" CREATED="1743347818938" MODIFIED="1743347818938">
<attribute_layout NAME_WIDTH="202.49999 pt" VALUE_WIDTH="156.75 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.quickPrompt"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="control alt G"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="true"/>
<node TEXT="import groovy.swing.SwingBuilder&#xa;import javax.swing.JOptionPane&#xa;&#xa;// Load dependencies from external files&#xa;def expandMessage = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageExpander.groovy&quot;)&#xa;)&#xa;&#xa;// Load the API caller functions&#xa;def createApiCaller = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/ApiCaller.groovy&quot;)&#xa;)&#xa;def apiCaller = createApiCaller([logger: logger, ui: ui, config: config])&#xa;def make_openai_call = apiCaller.make_openai_call&#xa;def make_openrouter_call = apiCaller.make_openrouter_call&#xa;&#xa;// Load the branch generator function&#xa;def createBranchGenerator = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/BranchGenerator.groovy&quot;)&#xa;)&#xa;&#xa;// Initialize the branch generator with necessary dependencies&#xa;def generateBranches = createBranchGenerator([&#xa;        c                   : c,&#xa;        ui                  : ui,&#xa;        logger              : logger,&#xa;        make_openai_call    : make_openai_call,&#xa;        make_openrouter_call: make_openrouter_call&#xa;])&#xa;&#xa;// Load saved configuration&#xa;def apiKey = config.getProperty(&apos;openai.key&apos;, &apos;&apos;)&#xa;def model = config.getProperty(&apos;openai.gpt_model&apos;, &apos;gpt-3.5-turbo&apos;)&#xa;def maxTokens = config.getProperty(&apos;openai.max_response_length&apos;, 1000) as int&#xa;def temperature = config.getProperty(&apos;openai.temperature&apos;, 0.7) as double&#xa;def provider = config.getProperty(&apos;openai.api_provider&apos;, &apos;openrouter&apos;)&#xa;def systemMessageIndex = config.getProperty(&apos;openai.system_message_index&apos;, 0) as int&#xa;def userMessageIndex = config.getProperty(&apos;openai.user_message_index&apos;, 0) as int&#xa;&#xa;// Load message templates&#xa;def systemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptSystemMessages.txt&quot;&#xa;def userMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptUserMessages.txt&quot;&#xa;def defaultSystemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultSystemMessages.txt&quot;&#xa;def defaultUserMessagesFilePath = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultUserMessages.txt&quot;&#xa;&#xa;// Load the message file handler functions from external file&#xa;def messageFileHandler = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageFileHandler.groovy&quot;)&#xa;)&#xa;def loadMessagesFromFile = messageFileHandler.loadMessagesFromFile&#xa;&#xa;def defaultSystemMessages = new File(defaultSystemMessagesFilePath).text.trim()&#xa;def userSystemMessages = new File(defaultUserMessagesFilePath).text.trim()&#xa;&#xa;def systemMessages = loadMessagesFromFile(systemMessagesFilePath, defaultSystemMessages)&#xa;def userMessages = loadMessagesFromFile(userMessagesFilePath, userSystemMessages)&#xa;&#xa;// Validate and fallback to defaults if needed&#xa;def systemMessage = systemMessageIndex &lt; systemMessages.size() ? systemMessages[systemMessageIndex] : systemMessages[0]&#xa;def userMessageTemplate = userMessageIndex &lt; userMessages.size() ? userMessages[userMessageIndex] : userMessages[0]&#xa;&#xa;if (!apiKey) {&#xa;    JOptionPane.showMessageDialog(ui.currentFrame, &#xa;        &quot;Please configure API settings first via the LLM menu&quot;,&#xa;        &quot;Configuration Required&quot;,&#xa;        JOptionPane.WARNING_MESSAGE)&#xa;    return&#xa;}&#xa;&#xa;try {&#xa;    def expandedUserMessage = expandMessage(userMessageTemplate, c.selected)&#xa;    generateBranches(apiKey, systemMessage, expandedUserMessage, model, maxTokens, temperature, provider)&#xa;} catch (Exception e) {&#xa;    logger.error(&quot;Quick prompt failed&quot;, e)&#xa;    ui.errorMessage(&quot;Quick prompt error: ${e.message}&quot;)&#xa;}&#xa;" ID="ID_853894573" CREATED="1743739747757" MODIFIED="1743739747758"/>
</node>
<node TEXT="CompareConnectedNodes.groovy" FOLDED="true" ID="ID_COMPARE_NODES" CREATED="1743400000000" MODIFIED="1743400000000">
<attribute_layout NAME_WIDTH="202.49999 pt" VALUE_WIDTH="156.75 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.compareConnectedNodes"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="true"/>
<node TEXT="import groovy.swing.SwingBuilder&#xa;import org.freeplane.features.map.NodeModel&#xa;&#xa;import javax.swing.*&#xa;import java.awt.* // Needed for BorderLayout, GridBagLayout etc.&#xa;&#xa;// --- Configuration and Dependencies ---&#xa;&#xa;// Load the API caller functions from external file&#xa;def createApiCaller = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/ApiCaller.groovy&quot;)&#xa;)&#xa;def apiCallerFunctions = createApiCaller([logger: logger, ui: ui, config: config])&#xa;def make_openai_call = apiCallerFunctions.make_openai_call&#xa;def make_openrouter_call = apiCallerFunctions.make_openrouter_call&#xa;&#xa;// Load the message expander function from external file&#xa;def expandMessageLoader = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageExpander.groovy&quot;)&#xa;)&#xa;def expandMessage = expandMessageLoader.expandMessage&#xa;def getBindingMap = expandMessageLoader.getBindingMap // Get the new helper function&#xa;&#xa;// Load the message file handler functions from external file&#xa;def messageFileHandler = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/MessageFileHandler.groovy&quot;)&#xa;)&#xa;def loadMessagesFromFile = messageFileHandler.loadMessagesFromFile&#xa;&#xa;// Load saved configuration&#xa;def apiKey = config.getProperty(&apos;openai.key&apos;, &apos;&apos;)&#xa;def model = config.getProperty(&apos;openai.gpt_model&apos;, &apos;gpt-3.5-turbo&apos;)&#xa;def maxTokens = config.getProperty(&apos;openai.max_response_length&apos;, 1000) as int&#xa;def temperature = config.getProperty(&apos;openai.temperature&apos;, 0.7) as double&#xa;def provider = config.getProperty(&apos;openai.api_provider&apos;, &apos;openrouter&apos;)&#xa;def systemMessageIndex = config.getProperty(&apos;openai.system_message_index&apos;, 0) as int&#xa;// userMessageIndex is no longer needed here&#xa;&#xa;// Define message file paths&#xa;def systemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptSystemMessages.txt&quot;&#xa;// userMessagesFilePath is no longer needed here&#xa;def defaultSystemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultSystemMessages.txt&quot;&#xa;// defaultUserMessagesFilePath is no longer needed here&#xa;def compareNodesUserMessageFilePath = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/compareNodesUserMessage.txt&quot;&#xa;&#xa;// --- Helper Functions ---&#xa;&#xa;/**&#xa; * Parses LLM response text into categories and points.&#xa; * Assumes simple structure: &quot;Category:\n- Point 1\n- Point 2&quot; or just lines of text.&#xa; */&#xa;def parseAnalysis(String analysisText) {&#xa;    def results = [:] // Map to store results, e.g., [&quot;Pros&quot;: [&quot;Point 1&quot;, &quot;Point 2&quot;], &quot;Cons&quot;: [&quot;Point A&quot;]]&#xa;    def currentCategory = null&#xa;    def potentialPoints = []&#xa;&#xa;    analysisText.eachLine { line -&gt;&#xa;        line = line.trim()&#xa;        if (line.isEmpty()) return // continue&#xa;&#xa;        // Basic heading detection (ends with &apos;:&apos;)&#xa;        if (line.endsWith(&apos;:&apos;) &amp;&amp; line.length() &gt; 1) {&#xa;            // Store previous points if any&#xa;            if (currentCategory != null &amp;&amp; !potentialPoints.isEmpty()) {&#xa;                results[currentCategory] = potentialPoints&#xa;            }&#xa;            // Start new category&#xa;            currentCategory = line.substring(0, line.length() - 1).trim()&#xa;            results[currentCategory] = [] // Initialize category&#xa;            potentialPoints = [] // Reset points buffer&#xa;        } else {&#xa;            // Assume it&apos;s a point for the current category or general analysis&#xa;            def point = line.replaceAll(/^[-*+•·]\s*/, &apos;&apos;).trim() // Remove common leading bullets&#xa;            if (!point.isEmpty()) {&#xa;                potentialPoints.add(point)&#xa;            }&#xa;        }&#xa;    }&#xa;&#xa;    // Add any remaining points under the last category&#xa;    if (currentCategory != null &amp;&amp; !potentialPoints.isEmpty()) {&#xa;       results[currentCategory] = (results[currentCategory] ?: []) + potentialPoints&#xa;    }&#xa;&#xa;    // Handle cases where no headings were found - treat the whole text as one category&#xa;    if (results.isEmpty() &amp;&amp; !potentialPoints.isEmpty()) {&#xa;        results[&quot;Analysis&quot;] = potentialPoints&#xa;    } else if (results.isEmpty() &amp;&amp; !analysisText.trim().isEmpty()) {&#xa;        // Fallback if potentialPoints is also empty but text exists&#xa;         results[&quot;Analysis&quot;] = analysisText.trim().split(&apos;\n&apos;).collect { it.trim() }.findAll { !it.isEmpty() }&#xa;    }&#xa;&#xa;    // Filter out empty categories&#xa;    results = results.findAll { category, points -&gt; !points.isEmpty() }&#xa;&#xa;    return results&#xa;}&#xa;&#xa;/**&#xa; * Formats the analysis map into an indented string and adds it as a branch.&#xa; */&#xa;def addAnalysisToNodeAsBranch(def nodeProxy, Map analysisMap, String comparisonType) { // Accept NodeProxy&#xa;    logger.info(&quot;Attempting to add analysis to node: ${nodeProxy.text}&quot;)&#xa;    if (analysisMap.isEmpty()) {&#xa;        logger.warn(&quot;No analysis data to add for node: ${nodeProxy.text}&quot;)&#xa;        return&#xa;    }&#xa;&#xa;    // Format the map into an indented string&#xa;    def builder = new StringBuilder()&#xa;    builder.append(&quot;Comparison (${comparisonType})\n&quot;) // Root of the new branch&#xa;    analysisMap.each { category, points -&gt;&#xa;        builder.append(&quot;    ${category}\n&quot;) // Indent level 1 for category&#xa;        points.each { point -&gt;&#xa;            builder.append(&quot;        ${point}\n&quot;) // Indent level 2 for points&#xa;        }&#xa;    }&#xa;    def formattedAnalysis = builder.toString().trim()&#xa;    logger.info(&quot;Formatted analysis string for node ${nodeProxy.text}:\n---\n${formattedAnalysis}\n---&quot;)&#xa;&#xa;    // Add the formatted string as a new branch (this is undoable)&#xa;    try {&#xa;        nodeProxy.appendTextOutlineAsBranch(formattedAnalysis) // Call method on the NodeProxy&#xa;        logger.info(&quot;Successfully called appendTextOutlineAsBranch for node: ${nodeProxy.text}&quot;)&#xa;    } catch (Exception e) {&#xa;        logger.error(&quot;Error calling appendTextOutlineAsBranch for node ${nodeProxy.text}&quot;, e)&#xa;        // Optionally, inform the user via ui.errorMessage if needed, but logging might be sufficient&#xa;    }&#xa;}&#xa; &#xa;// --- Function to show custom comparison type dialog ---&#xa;def showComparisonDialog(NodeModel contextNode, String message, java.util.List&lt;String&gt; defaultTypes, String configKey) { // Use fully qualified java.util.List&#xa;    // Load previously saved custom types&#xa;    def savedTypesString = config.getProperty(configKey, &apos;&apos;)&#xa;    def customTypes = savedTypesString ? savedTypesString.split(&apos;\\|&apos;).toList() : []&#xa;    customTypes = customTypes.findAll { !it.trim().isEmpty() } // Remove empty entries&#xa;&#xa;    // Combine defaults and custom, ensuring defaults come first and no duplicates&#xa;    def allTypes = (defaultTypes + customTypes).unique()&#xa;&#xa;    def selectedType = null // Variable to store the result&#xa;    def swing = new SwingBuilder()&#xa;&#xa;    // Build the dialog&#xa;    def dialog = swing.dialog(&#xa;        title: &quot;Define Comparison Type&quot;,&#xa;        modal: true, // Make it modal&#xa;        owner: ui.currentFrame, // Parent frame&#xa;        pack: true, // Size based on content&#xa;        locationRelativeTo: ui.currentFrame // Center on frame&#xa;    ) {&#xa;        panel(layout: new BorderLayout(5, 5), border: BorderFactory.createEmptyBorder(10, 10, 10, 10)) {&#xa;            // Message Label&#xa;            label(text: &quot;&lt;html&gt;${message.replaceAll(&apos;\n&apos;, &apos;&lt;br&gt;&apos;)}&lt;/html&gt;&quot;, constraints: BorderLayout.NORTH) // Use HTML for multi-line&#xa;&#xa;            // Editable ComboBox&#xa;            comboBox(id: &apos;typeCombo&apos;,&#xa;                     items: allTypes,&#xa;                     editable: true,&#xa;                     selectedItem: allTypes.isEmpty() ? &quot;&quot; : allTypes[0], // Select first item or empty&#xa;                     constraints: BorderLayout.CENTER)&#xa;&#xa;            // Button Panel&#xa;            panel(layout: new FlowLayout(FlowLayout.RIGHT), constraints: BorderLayout.SOUTH) {&#xa;                button(text: &apos;OK&apos;, defaultButton: true, actionPerformed: {&#xa;                    // Get selected/entered item&#xa;                    selectedType = typeCombo.editor.item?.toString()?.trim() ?: &quot;&quot;&#xa;                    if (!selectedType.isEmpty()) {&#xa;                        // Check if it&apos;s a new custom type&#xa;                        if (!defaultTypes.contains(selectedType) &amp;&amp; !customTypes.contains(selectedType)) {&#xa;                            customTypes.add(selectedType)&#xa;                            // Save updated custom types list&#xa;                            config.setProperty(configKey, customTypes.join(&apos;|&apos;))&#xa;                            logger.info(&quot;Saved new custom comparison type: ${selectedType}&quot;)&#xa;                        }&#xa;                    }&#xa;                    // Get the button source, find its window (the dialog), and dispose it&#xa;                    SwingUtilities.getWindowAncestor(it.source).dispose()&#xa;                })&#xa;                button(text: &apos;Cancel&apos;, actionPerformed: {&#xa;                    selectedType = null // Indicate cancellation&#xa;                    // Get the button source, find its window (the dialog), and dispose it&#xa;                    SwingUtilities.getWindowAncestor(it.source).dispose()&#xa;                })&#xa;            }&#xa;        }&#xa;    }&#xa;&#xa;    // Show the dialog (it&apos;s modal, so execution waits here)&#xa;    dialog.visible = true&#xa;&#xa;    // Return the selected type (or null if cancelled)&#xa;    return selectedType&#xa;}&#xa;&#xa;&#xa;// --- Main Script Logic ---&#xa;&#xa;// Load message templates using the handler&#xa;def defaultSystemMessages = new File(defaultSystemMessagesFilePath).text.trim()&#xa;// Load system messages as before (user might want to configure the general system persona)&#xa;def systemMessages = loadMessagesFromFile(systemMessagesFilePath, defaultSystemMessages)&#xa;// Load the specific user message template for this script directly&#xa;def compareNodesUserMessageTemplate = new File(compareNodesUserMessageFilePath).text.trim()&#xa;&#xa;&#xa;// Select the configured system template (with fallback)&#xa;logger.info(&quot;CompareNodes: Configured systemMessageIndex: ${systemMessageIndex}&quot;)&#xa;def systemMessageTemplate = systemMessageIndex &lt; systemMessages.size() ? systemMessages[systemMessageIndex] : (systemMessages.isEmpty() ? &quot;&quot; : systemMessages[0])&#xa;&#xa;logger.info(&quot;CompareNodes: Selected systemMessageTemplate:\n---\n${systemMessageTemplate}\n---&quot;)&#xa;logger.info(&quot;CompareNodes: Using dedicated userMessageTemplate from ${compareNodesUserMessageFilePath}:\n---\n${compareNodesUserMessageTemplate}\n---&quot;)&#xa;&#xa;// 1. Check API Key&#xa;if (apiKey.isEmpty()) {&#xa;    if (provider == &apos;openrouter&apos;) {&#xa;        java.awt.Desktop.desktop.browse(new URI(&quot;https://openrouter.ai/keys&quot;))&#xa;    } else {&#xa;        java.awt.Desktop.desktop.browse(new URI(&quot;https://platform.openai.com/account/api-keys&quot;))&#xa;    }&#xa;    ui.errorMessage(&quot;API key is missing. Please configure it first via the LLM menu.&quot;)&#xa;    return&#xa;}&#xa;&#xa;// Check if templates are loaded&#xa;if (systemMessageTemplate.isEmpty() || compareNodesUserMessageTemplate.isEmpty()) {&#xa;    ui.errorMessage(&quot;System message template or the dedicated compareNodesUserMessage.txt is missing or empty. Please check configuration or files.&quot;)&#xa;    return;&#xa;}&#xa;&#xa;// 2. Get Selected Nodes and Find Connector Between Them&#xa;def selectedNodes = c.selecteds // Use &apos;selecteds&apos; (plural) to get the list of selected nodes&#xa;if (selectedNodes.size() != 2) {&#xa;    ui.errorMessage(&quot;Please select exactly two nodes to compare.&quot;)&#xa;    return&#xa;}&#xa;&#xa;def node1 = selectedNodes[0]&#xa;def node2 = selectedNodes[1]&#xa;&#xa;// Find connectors between node1 and node2 (in either direction)&#xa;def connectorsOut = node1.connectorsOut.findAll { it.target == node2 }&#xa;def connectorsIn = node1.connectorsIn.findAll { it.source == node2 }&#xa;def allConnectorsBetween = connectorsOut + connectorsIn&#xa;&#xa;if (allConnectorsBetween.size() == 0) {&#xa;    ui.errorMessage(&quot;The two selected nodes are not connected. Please add a connector between them.&quot;)&#xa;    return&#xa;}&#xa;&#xa;if (allConnectorsBetween.size() &gt; 1) {&#xa;    ui.errorMessage(&quot;There are multiple connectors between the selected nodes. Please ensure there is only one.&quot;)&#xa;    return&#xa;}&#xa;&#xa;// We have exactly one connector, proceed. We don&apos;t strictly need the connector object itself&#xa;// for the current logic, but we&apos;ve validated the connection exists.&#xa;def connector = allConnectorsBetween[0] // Optional: if we need connector info later (e.g., label)&#xa;logger.info(&quot;Found connector between selected nodes: ${node1.text} and ${node2.text}&quot;)&#xa;&#xa;// Assign source/target based on selection order for consistency in prompts/output&#xa;def sourceNode = node1&#xa;def targetNode = node2&#xa;&#xa;// --- Debugging Output ---&#xa;logger.info(&quot;CompareNodes: ui object type: ${ui.getClass().getName()}&quot;)&#xa;logger.info(&quot;CompareNodes: sourceNode object type: ${sourceNode.getClass().getName()}, value: ${sourceNode}&quot;)&#xa;logger.info(&quot;CompareNodes: sourceNode.delegate object type: ${sourceNode.delegate?.getClass()?.getName()}, value: ${sourceNode.delegate}&quot;) // Log delegate type&#xa;logger.info(&quot;CompareNodes: targetNode object type: ${targetNode.getClass().getName()}, value: ${targetNode}&quot;)&#xa;def dialogMessage = &quot;Nodes &apos;${sourceNode.text}&apos; and &apos;${targetNode.text}&apos; are connected.\nEnter the type of comparison (e.g., &apos;Pros and Cons&apos;, &apos;Compare and Contrast&apos;, &apos;Strengths vs Weaknesses&apos;):&quot;&#xa;logger.info(&quot;CompareNodes: Dialog message: ${dialogMessage.toString()}&quot;) // Ensure it&apos;s logged as String&#xa;&#xa;// Define default comparison types and config key&#xa;def defaultComparisonTypes = [&quot;Pros and Cons&quot;, &quot;Compare and Contrast&quot;, &quot;Strengths vs Weaknesses&quot;, &quot;Advantages and Disadvantages&quot;]&#xa;def comparisonTypesConfigKey = &quot;promptLlmAddOn.comparisonTypes&quot;&#xa;&#xa;// --- End Debugging Output ---&#xa;&#xa;// 3. Get Comparison Type from User&#xa;// Use the custom dialog&#xa;String comparisonType = showComparisonDialog(&#xa;    sourceNode.delegate, // Provide NodeModel context (though not strictly used by custom dialog)&#xa;    dialogMessage.toString(),&#xa;    defaultComparisonTypes,&#xa;    comparisonTypesConfigKey&#xa;)&#xa;&#xa;if (comparisonType == null || comparisonType.trim().isEmpty()) {&#xa;    // User cancelled or entered nothing&#xa;    logger.info(&quot;User cancelled comparison input.&quot;)&#xa;    return&#xa;}&#xa;comparisonType = comparisonType.trim()&#xa;&#xa;// 4. Prepare Prompts using loaded templates&#xa;// System message is used directly&#xa;def systemPrompt = systemMessageTemplate&#xa;&#xa;// Use the specific template loaded earlier&#xa;def mutableUserMessageTemplate = compareNodesUserMessageTemplate as String&#xa;// No need to check for $comparisonType placeholder, as we control this file.&#xa;logger.info(&quot;CompareNodes: Final userMessageTemplate for expansion:\n---\n${mutableUserMessageTemplate}\n---&quot;)&#xa;&#xa;// --- Inline expansion for source node ---&#xa;def sourceBinding = getBindingMap(sourceNode) // Call the standalone function&#xa;sourceBinding[&apos;comparisonType&apos;] = comparisonType // Add specific variable&#xa;logger.info(&quot;CompareNodes: Source Binding Map: ${sourceBinding}&quot;)&#xa;def sourceEngine = new groovy.text.SimpleTemplateEngine()&#xa;def sourceUserPrompt = sourceEngine.createTemplate(mutableUserMessageTemplate).make(sourceBinding).toString()&#xa;logger.info(&quot;CompareNodes: Source User Prompt:\n${sourceUserPrompt}&quot;) // Log generated prompt&#xa;&#xa;// --- Inline expansion for target node ---&#xa;def targetBinding = getBindingMap(targetNode) // Call the standalone function&#xa;targetBinding[&apos;comparisonType&apos;] = comparisonType // Add specific variable&#xa;logger.info(&quot;CompareNodes: Target Binding Map: ${targetBinding}&quot;)&#xa;def targetEngine = new groovy.text.SimpleTemplateEngine()&#xa;def targetUserPrompt = targetEngine.createTemplate(mutableUserMessageTemplate).make(targetBinding).toString()&#xa;logger.info(&quot;CompareNodes: Target User Prompt:\n${targetUserPrompt}&quot;) // Log generated prompt&#xa;&#xa;// 5. Show Progress Dialog&#xa;def swingBuilder = new SwingBuilder()&#xa;def dialog = swingBuilder.dialog(title: &quot;Analyzing Nodes with LLM...&quot;,&#xa;        owner: ui.currentFrame,&#xa;        modal: false, // Non-modal&#xa;        resizable: false,&#xa;        defaultCloseOperation: javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE) { // Prevent manual closing - Use fully qualified name&#xa;    swingBuilder.panel(layout: new java.awt.BorderLayout()) { // Use fully qualified name&#xa;        label(text: &quot;Requesting analysis for &apos;${sourceNode.text}&apos; and &apos;${targetNode.text}&apos; based on &apos;${comparisonType}&apos;. Please wait...&quot;, constraints: java.awt.BorderLayout.CENTER) // Use fully qualified name&#xa;    }&#xa;}&#xa;dialog.pack()&#xa;ui.setDialogLocationRelativeTo(dialog, ui.currentFrame) // Center on frame&#xa;dialog.setVisible(true)&#xa;&#xa;// 6. Run API Calls in Background Thread&#xa;def workerThread = new Thread({&#xa;    String sourceApiResponse = null&#xa;    String targetApiResponse = null&#xa;    String errorMessage = null&#xa;&#xa;    try {&#xa;        // --- Call API for Source Node ---&#xa;        def sourcePayloadMap = [&#xa;            &apos;model&apos;: model,&#xa;            &apos;messages&apos;: [&#xa;                [role: &apos;system&apos;, content: systemPrompt],&#xa;                [role: &apos;user&apos;, content: sourceUserPrompt]&#xa;            ],&#xa;            &apos;temperature&apos;: temperature,&#xa;            &apos;max_tokens&apos;: maxTokens&#xa;        ]&#xa;        logger.info(&quot;Requesting analysis for source node: ${sourceNode.text}&quot;)&#xa;        sourceApiResponse = (provider == &apos;openrouter&apos;) ?&#xa;            make_openrouter_call(apiKey, sourcePayloadMap) :&#xa;            make_openai_call(apiKey, sourcePayloadMap)&#xa;&#xa;        if (sourceApiResponse == null || sourceApiResponse.isEmpty()) {&#xa;            throw new Exception(&quot;Received empty or null response for source node.&quot;)&#xa;        }&#xa;&#xa;        // --- Call API for Target Node ---&#xa;         def targetPayloadMap = [&#xa;            &apos;model&apos;: model,&#xa;            &apos;messages&apos;: [&#xa;                [role: &apos;system&apos;, content: systemPrompt],&#xa;                [role: &apos;user&apos;, content: targetUserPrompt]&#xa;            ],&#xa;            &apos;temperature&apos;: temperature,&#xa;            &apos;max_tokens&apos;: maxTokens&#xa;        ]&#xa;        logger.info(&quot;Requesting analysis for target node: ${targetNode.text}&quot;)&#xa;        targetApiResponse = (provider == &apos;openrouter&apos;) ?&#xa;            make_openrouter_call(apiKey, targetPayloadMap) :&#xa;            make_openai_call(apiKey, targetPayloadMap)&#xa;&#xa;        if (targetApiResponse == null || targetApiResponse.isEmpty()) {&#xa;            throw new Exception(&quot;Received empty or null response for target node.&quot;)&#xa;        }&#xa;&#xa;        // --- Process Responses ---&#xa;        def jsonSlurper = new groovy.json.JsonSlurper()&#xa;&#xa;        def sourceJsonResponse = jsonSlurper.parseText(sourceApiResponse)&#xa;        def sourceResponseContent = sourceJsonResponse?.choices[0]?.message?.content&#xa;        if (!sourceResponseContent) throw new Exception(&quot;Could not extract content from source response: ${sourceApiResponse}&quot;)&#xa;&#xa;        def targetJsonResponse = jsonSlurper.parseText(targetApiResponse)&#xa;        def targetResponseContent = targetJsonResponse?.choices[0]?.message?.content&#xa;        if (!targetResponseContent) throw new Exception(&quot;Could not extract content from target response: ${targetApiResponse}&quot;)&#xa;&#xa;        logger.info(&quot;Source Node Analysis:\n${sourceResponseContent}&quot;)&#xa;        logger.info(&quot;Target Node Analysis:\n${targetResponseContent}&quot;)&#xa;&#xa;        // Parse responses&#xa;        def sourceAnalysis = parseAnalysis(sourceResponseContent)&#xa;        def targetAnalysis = parseAnalysis(targetResponseContent)&#xa;&#xa;        // --- Update Map on EDT ---&#xa;        SwingUtilities.invokeLater {&#xa;            dialog.dispose() // Close progress dialog first&#xa;           if (sourceAnalysis.isEmpty() &amp;&amp; targetAnalysis.isEmpty()) {&#xa;                ui.informationMessage(&quot;The LLM analysis did not yield structured results for either node.&quot;)&#xa;           } else {&#xa;                try {&#xa;                    // Call the standalone function, passing the node proxy&#xa;                    addAnalysisToNodeAsBranch(sourceNode, sourceAnalysis, comparisonType) // Call function directly&#xa;                    addAnalysisToNodeAsBranch(targetNode, targetAnalysis, comparisonType) // Call function directly&#xa;                    ui.informationMessage(&quot;Comparison analysis added to both nodes.&quot;) // Show success only if no exceptions during add&#xa;                } catch (Exception e) {&#xa;                    // Catch any unexpected errors during the add process on the EDT&#xa;                    logger.error(&quot;Error during addAnalysisToNodeAsBranch calls on EDT&quot;, e)&#xa;                    ui.errorMessage(&quot;Failed to add analysis results to the map. Check logs. Error: ${e.message}&quot;)&#xa;                }&#xa;           }&#xa;       }&#xa;&#xa;    } catch (Exception e) {&#xa;        logger.error(&quot;LLM Comparison failed&quot;, e)&#xa;        errorMessage = &quot;LLM Comparison Error: ${e.message}&quot;&#xa;        // Ensure dialog is closed and error shown on EDT&#xa;        SwingUtilities.invokeLater {&#xa;            dialog.dispose()&#xa;            ui.errorMessage(errorMessage)&#xa;        }&#xa;    }&#xa;})&#xa;workerThread.setContextClassLoader(this.class.classLoader) // Important for GroovyShell dependencies&#xa;workerThread.start()&#xa;" ID="ID_259955633" CREATED="1743739747758" MODIFIED="1743739747759"/>
</node>
</node>
<node TEXT="lib" POSITION="bottom_or_right" ID="ID_1845190577" CREATED="1685111823978" MODIFIED="1742834860055">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing binary files (normally .jar files) to be added to the add-on's classpath.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;- The immediate child nodes contain the name of the file, e.g. 'mysql-connector-java-5.1.25.jar'). Put the file into a 'lib' subdirectory of the add-on base directory.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;- The child nodes of these nodes contain the actual files.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;- Any lib file will be extracted in &lt;installationbase&gt;/&lt;addonname&gt;/lib.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html></richcontent>
<node TEXT="MessageExpander.groovy" FOLDED="true" ID="ID_MESSAGE_EXPANDER" CREATED="1742845172650" MODIFIED="1742845172650">
<node TEXT="aW1wb3J0IGdyb292eS50ZXh0LlNpbXBsZVRlbXBsYXRlRW5naW5lCgovLyBGdW5jdGlvbiB0by&#xa;BleHBhbmQgbWVzc2FnZSB0ZW1wbGF0ZXMgd2l0aCBub2RlIGNvbnRleHQKc3RhdGljIGRlZiBl&#xa;eHBhbmRNZXNzYWdlKFN0cmluZyBtZXNzYWdlLCBkZWYgbm9kZSkgewogICAgZGVmIHBhdGhUb1&#xa;Jvb3QgPSBub2RlLnBhdGhUb1Jvb3QKICAgIGRlZiByb290VGV4dCA9IG5vZGUubWluZE1hcC5y&#xa;b290LnRleHQKICAgIHBhdGhUb1Jvb3QgPSBwYXRoVG9Sb290LnRha2UocGF0aFRvUm9vdC5zaX&#xa;plKCkgLSAxKQogICAgU3RyaW5nIGFuY2VzdG9yQ29udGVudHMgPSBwYXRoVG9Sb290Ki5wbGFp&#xa;blRleHQuam9pbignXG4nKQogICAgU3RyaW5nIHNpYmxpbmdDb250ZW50cyA9IG5vZGUuaXNSb2&#xa;90KCkgPyAnJyA6IG5vZGUucGFyZW50LmNoaWxkcmVuLmZpbmRBbGwgeyBpdCAhPSBub2RlIH0q&#xa;LnBsYWluVGV4dC5qb2luKCdcbicpCiAgICAKICAgIGRlZiBiaW5kaW5nID0gWwogICAgICAgIH&#xa;Jvb3RUZXh0OiByb290VGV4dCwKICAgICAgICBub2RlQ29udGVudDogbm9kZS5wbGFpblRleHQs&#xa;CiAgICAgICAgYW5jZXN0b3JDb250ZW50czogYW5jZXN0b3JDb250ZW50cywKICAgICAgICBzaW&#xa;JsaW5nQ29udGVudHM6IHNpYmxpbmdDb250ZW50cwogICAgXQogICAgCiAgICBkZWYgZW5naW5l&#xa;ID0gbmV3IFNpbXBsZVRlbXBsYXRlRW5naW5lKCkKICAgIGRlZiB0ZW1wbGF0ZSA9IGVuZ2luZS&#xa;5jcmVhdGVUZW1wbGF0ZShtZXNzYWdlKS5tYWtlKGJpbmRpbmcpCiAgICByZXR1cm4gdGVtcGxh&#xa;dGUudG9TdHJpbmcoKQp9CgovLyBBZGQgdGhpcyBmdW5jdGlvbiBpbnNpZGUgdGhlIGZpbGUsIG&#xa;Fsb25nc2lkZSB0aGUgZXhpc3RpbmcgZXhwYW5kTWVzc2FnZSBmdW5jdGlvbgoKc3RhdGljIGRl&#xa;ZiBnZXRCaW5kaW5nTWFwKGRlZiBub2RlKSB7CiAgICBkZWYgcGF0aFRvUm9vdCA9IG5vZGUucG&#xa;F0aFRvUm9vdAogICAgZGVmIHJvb3RUZXh0ID0gbm9kZS5taW5kTWFwLnJvb3QudGV4dAogICAg&#xa;cGF0aFRvUm9vdCA9IHBhdGhUb1Jvb3QudGFrZShwYXRoVG9Sb290LnNpemUoKSAtIDEpIC8vIE&#xa;V4Y2x1ZGUgdGhlIG5vZGUgaXRzZWxmCiAgICBTdHJpbmcgYW5jZXN0b3JDb250ZW50cyA9IHBh&#xa;dGhUb1Jvb3QqLnBsYWluVGV4dC5qb2luKCdcbicpCiAgICBTdHJpbmcgc2libGluZ0NvbnRlbn&#xa;RzID0gbm9kZS5pc1Jvb3QoKSA/ICcnIDogbm9kZS5wYXJlbnQuY2hpbGRyZW4uZmluZEFsbCB7&#xa;IGl0ICE9IG5vZGUgfSoucGxhaW5UZXh0LmpvaW4oJ1xuJykKCiAgICByZXR1cm4gWwogICAgIC&#xa;AgIHJvb3RUZXh0ICAgICAgICA6IHJvb3RUZXh0LAogICAgICAgIG5vZGVDb250ZW50ICAgICA6&#xa;IG5vZGUucGxhaW5UZXh0LAogICAgICAgIGFuY2VzdG9yQ29udGVudHM6IGFuY2VzdG9yQ29udG&#xa;VudHMsCiAgICAgICAgc2libGluZ0NvbnRlbnRzIDogc2libGluZ0NvbnRlbnRzCiAgICBdCn0K&#xa;Ci8vIE1ha2Ugc3VyZSB0aGUgcmV0dXJuIHN0YXRlbWVudCBleHBvcnRzIHRoaXMgbmV3IGZ1bm&#xa;N0aW9uIHRvbwpyZXR1cm4gWwogICAgZXhwYW5kTWVzc2FnZTogdGhpcy4mZXhwYW5kTWVzc2Fn&#xa;ZSwKICAgIGdldEJpbmRpbmdNYXA6IHRoaXMuJmdldEJpbmRpbmdNYXAgLy8gQWRkIHRoaXMgbG&#xa;luZQpdCg==" ID="ID_995533543" CREATED="1743739747770" MODIFIED="1743739747771"/>
</node>
<node TEXT="BranchGenerator.groovy" FOLDED="true" ID="ID_BRANCH_GENERATOR" CREATED="1742845172655" MODIFIED="1742845172655">
<node TEXT="aW1wb3J0IGdyb292eS5zd2luZy5Td2luZ0J1aWxkZXIKCmltcG9ydCBqYXZheC5zd2luZy4qCm&#xa;ltcG9ydCBqYXZhLmF3dC4qCgovLyBGdW5jdGlvbiB0byBjcmVhdGUgYSBicmFuY2ggZ2VuZXJh&#xa;dG9yIHdpdGggbmVjZXNzYXJ5IGRlcGVuZGVuY2llcwpkZWYgY3JlYXRlR2VuZXJhdGVCcmFuY2&#xa;hlcyhjbG9zdXJlcykgewogICAgcmV0dXJuIHsgYXBpS2V5LCBzeXN0ZW1NZXNzYWdlLCB1c2Vy&#xa;TWVzc2FnZSwgbW9kZWwsIG1heFRva2VucywgdGVtcGVyYXR1cmUsIHByb3ZpZGVyIC0+CiAgIC&#xa;AgICAgZGVmIGMgPSBjbG9zdXJlcy5jCiAgICAgICAgZGVmIHVpID0gY2xvc3VyZXMudWkKICAg&#xa;ICAgICBkZWYgbG9nZ2VyID0gY2xvc3VyZXMubG9nZ2VyCiAgICAgICAgZGVmIFN3aW5nVXRpbG&#xa;l0aWVzID0gU3dpbmdVdGlsaXRpZXMKICAgICAgICBkZWYgV2luZG93Q29uc3RhbnRzID0gV2lu&#xa;ZG93Q29uc3RhbnRzCiAgICAgICAgZGVmIEJvcmRlckxheW91dCA9IEJvcmRlckxheW91dAogIC&#xa;AgICAgIGRlZiBTd2luZ0J1aWxkZXIgPSBTd2luZ0J1aWxkZXIKICAgICAgICBkZWYgbWFrZV9v&#xa;cGVuYWlfY2FsbCA9IGNsb3N1cmVzLm1ha2Vfb3BlbmFpX2NhbGwKICAgICAgICBkZWYgbWFrZV&#xa;9vcGVucm91dGVyX2NhbGwgPSBjbG9zdXJlcy5tYWtlX29wZW5yb3V0ZXJfY2FsbAogICAgICAg&#xa;IAogICAgICAgIGlmIChhcGlLZXkuaXNFbXB0eSgpKSB7CiAgICAgICAgICAgIGlmIChwcm92aW&#xa;RlciA9PSAnb3BlbnJvdXRlcicpIHsKICAgICAgICAgICAgICAgIERlc2t0b3AuZGVza3RvcC5i&#xa;cm93c2UobmV3IFVSSSgiaHR0cHM6Ly9vcGVucm91dGVyLmFpL2tleXMiKSkKICAgICAgICAgIC&#xa;AgfSBlbHNlIHsKICAgICAgICAgICAgICAgIERlc2t0b3AuZGVza3RvcC5icm93c2UobmV3IFVS&#xa;SSgiaHR0cHM6Ly9wbGF0Zm9ybS5vcGVuYWkuY29tL2FjY291bnQvYXBpLWtleXMiKSkKICAgIC&#xa;AgICAgICAgfQogICAgICAgICAgICB1aS5lcnJvck1lc3NhZ2UoIkludmFsaWQgYXV0aGVudGlj&#xa;YXRpb24gb3IgaW5jb3JyZWN0IEFQSSBrZXkgcHJvdmlkZWQuIikKICAgICAgICAgICAgcmV0dX&#xa;JuOwogICAgICAgIH0KICAgICAgICBkZWYgbm9kZSA9IGMuc2VsZWN0ZWQKICAgICAgICBkZWYg&#xa;c3dpbmdCdWlsZGVyID0gbmV3IFN3aW5nQnVpbGRlcigpCiAgICAgICAgZGVmIGRpYWxvZyA9IH&#xa;N3aW5nQnVpbGRlci5kaWFsb2codGl0bGU6ICdJIGFtIGFza2luZyB5b3VyIHF1ZXN0aW9uLiBX&#xa;YWl0IGZvciB0aGUgcmVzcG9uc2UuJywKICAgICAgICAgICAgICAgIG93bmVyOiB1aS5jdXJyZW&#xa;50RnJhbWUsCiAgICAgICAgICAgICAgICBtb2RhbDogZmFsc2UsCiAgICAgICAgICAgICAgICBy&#xa;ZXNpemFibGU6IHRydWUsCiAgICAgICAgICAgICAgICBkZWZhdWx0Q2xvc2VPcGVyYXRpb246IF&#xa;dpbmRvd0NvbnN0YW50cy5ESVNQT1NFX09OX0NMT1NFKSB7CiAgICAgICAgICAgIHN3aW5nQnVp&#xa;bGRlci5zY3JvbGxQYW5lKGNvbnN0cmFpbnRzOiBCb3JkZXJMYXlvdXQuQ0VOVEVSKSB7CiAgIC&#xa;AgICAgICAgICAgICBzd2luZ0J1aWxkZXIudGV4dEFyZWEocm93czogMTAsIGNvbHVtbnM6IDYw&#xa;LCBsaW5lV3JhcDogdHJ1ZSwgd3JhcFN0eWxlV29yZDogdHJ1ZSwgZWRpdGFibGU6IGZhbHNlLC&#xa;B0ZXh0OiB1c2VyTWVzc2FnZSkKICAgICAgICAgICAgfQogICAgICAgIH0KICAgICAgICBkaWFs&#xa;b2cucGFjaygpCiAgICAgICAgdWkuc2V0RGlhbG9nTG9jYXRpb25SZWxhdGl2ZVRvKGRpYWxvZy&#xa;wgbm9kZS5kZWxlZ2F0ZSkKICAgICAgICBkaWFsb2cuc2V0VmlzaWJsZSh0cnVlKQogICAgICAg&#xa;IGxvZ2dlci5pbmZvKHVzZXJNZXNzYWdlKQogICAgICAgIGRlZiB3b3JrZXJUaHJlYWQgPSBuZX&#xa;cgVGhyZWFkKHsKICAgICAgICAgICAgdHJ5IHsKICAgICAgICAgICAgICAgIGRlZiBwYXlsb2Fk&#xa;TWFwID0gWwogICAgICAgICAgICAgICAgICAgICdtb2RlbCc6IG1vZGVsLAogICAgICAgICAgIC&#xa;AgICAgICAgICdtZXNzYWdlcyc6IFsKICAgICAgICAgICAgICAgICAgICAgICAgW3JvbGU6ICdz&#xa;eXN0ZW0nLCBjb250ZW50OiBzeXN0ZW1NZXNzYWdlXSwKICAgICAgICAgICAgICAgICAgICAgIC&#xa;AgW3JvbGU6ICd1c2VyJywgY29udGVudDogdXNlck1lc3NhZ2VdCiAgICAgICAgICAgICAgICAg&#xa;ICAgXSwKICAgICAgICAgICAgICAgICAgICAndGVtcGVyYXR1cmUnOiB0ZW1wZXJhdHVyZSwKIC&#xa;AgICAgICAgICAgICAgICAgICAnbWF4X3Rva2Vucyc6IG1heFRva2VucwogICAgICAgICAgICAg&#xa;ICAgXQogICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICBkZWYgcmVzcG9uc2VUZXh0ID&#xa;0gKHByb3ZpZGVyID09ICdvcGVucm91dGVyJykgPyAKICAgICAgICAgICAgICAgICAgICBtYWtl&#xa;X29wZW5yb3V0ZXJfY2FsbChhcGlLZXksIHBheWxvYWRNYXApIDoKICAgICAgICAgICAgICAgIC&#xa;AgICBtYWtlX29wZW5haV9jYWxsKGFwaUtleSwgcGF5bG9hZE1hcCkKICAgICAgICAgICAgICAg&#xa;IAogICAgICAgICAgICAgICAgaWYgKHJlc3BvbnNlVGV4dC5pc0VtcHR5KCkpIHsKICAgICAgIC&#xa;AgICAgICAgICAgICByZXR1cm4KICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIAog&#xa;ICAgICAgICAgICAgICAgZGVmIGpzb25TbHVycGVyID0gbmV3IGdyb292eS5qc29uLkpzb25TbH&#xa;VycGVyKCkKICAgICAgICAgICAgICAgIGRlZiBqc29uUmVzcG9uc2UgPSBqc29uU2x1cnBlci5w&#xa;YXJzZVRleHQocmVzcG9uc2VUZXh0KQogICAgICAgICAgICAgICAgZGVmIHJlc3BvbnNlID0gan&#xa;NvblJlc3BvbnNlLmNob2ljZXNbMF0ubWVzc2FnZS5jb250ZW50CiAgICAgICAgICAgICAgICAK&#xa;ICAgICAgICAgICAgICAgIGxvZ2dlci5pbmZvKCJHUFQgcmVzcG9uc2U6ICRyZXNwb25zZSIpCi&#xa;AgICAgICAgICAgICAgICBTd2luZ1V0aWxpdGllcy5pbnZva2VMYXRlciB7CiAgICAgICAgICAg&#xa;ICAgICAgICAgZGlhbG9nLmRpc3Bvc2UoKQogICAgICAgICAgICAgICAgICAgIG5vZGUuYXBwZW&#xa;5kVGV4dE91dGxpbmVBc0JyYW5jaChyZXNwb25zZSkKICAgICAgICAgICAgICAgIH0KICAgICAg&#xa;ICAgICAgfSBjYXRjaCAoRXhjZXB0aW9uIGUpIHsKICAgICAgICAgICAgICAgIGxvZ2dlci5lcn&#xa;JvcigiQVBJIGNhbGwgZmFpbGVkIiwgZSkKICAgICAgICAgICAgICAgIFN3aW5nVXRpbGl0aWVz&#xa;Lmludm9rZUxhdGVyIHsKICAgICAgICAgICAgICAgICAgICBkaWFsb2cuZGlzcG9zZSgpCiAgIC&#xa;AgICAgICAgICAgICAgICAgdWkuZXJyb3JNZXNzYWdlKCJBUEkgRXJyb3I6ICR7ZS5tZXNzYWdl&#xa;fSIpCiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgIH0KICAgICAgICB9KQogICAgICAgIH&#xa;dvcmtlclRocmVhZC5zZXRDb250ZXh0Q2xhc3NMb2FkZXIodGhpcy5jbGFzcy5jbGFzc0xvYWRl&#xa;cikKICAgICAgICB3b3JrZXJUaHJlYWQuc3RhcnQoKQogICAgfQp9CgovLyBSZXR1cm4gdGhlIG&#xa;Z1bmN0aW9uIGFzIGNsb3N1cmUKcmV0dXJuIHRoaXMuJmNyZWF0ZUdlbmVyYXRlQnJhbmNoZXMK&#xa;" ID="ID_527926036" CREATED="1743739747771" MODIFIED="1743739747772"/>
</node>
<node TEXT="ApiCaller.groovy" FOLDED="true" ID="ID_API_CALLER" CREATED="1742845172660" MODIFIED="1742845172660">
<node TEXT="ZGVmIGNyZWF0ZUFwaUNhbGxlcihjbG9zdXJlcykgewogICAgZGVmIGxvZ2dlciA9IGNsb3N1cm&#xa;VzLmxvZ2dlcgogICAgZGVmIHVpID0gY2xvc3VyZXMudWkKICAgIGRlZiBjb25maWcgPSBjbG9z&#xa;dXJlcy5jb25maWcKICAgIAogICAgZGVmIG1ha2Vfb3BlbmFpX2NhbGwgPSB7IFN0cmluZyBhcG&#xa;lLZXksIE1hcDxTdHJpbmcsIE9iamVjdD4gcGF5bG9hZE1hcCAtPgogICAgICAgIGRlZiByZXNw&#xa;b25zZVRleHQgPSAiIgoKICAgICAgICB0cnkgewogICAgICAgICAgICBTdHJpbmcgYXBpVXJsID&#xa;0gJ2h0dHBzOi8vYXBpLm9wZW5haS5jb20vdjEvY2hhdC9jb21wbGV0aW9ucycKICAgICAgICAg&#xa;ICAgZGVmIHBvc3QgPSBuZXcgVVJMKGFwaVVybCkub3BlbkNvbm5lY3Rpb24oKQogICAgICAgIC&#xa;AgICBwb3N0LnNldFJlcXVlc3RNZXRob2QoIlBPU1QiKQogICAgICAgICAgICBwb3N0LnNldERv&#xa;T3V0cHV0KHRydWUpCiAgICAgICAgICAgIHBvc3Quc2V0UmVxdWVzdFByb3BlcnR5KCJDb250ZW&#xa;50LVR5cGUiLCAiYXBwbGljYXRpb24vanNvbiIpCiAgICAgICAgICAgIHBvc3Quc2V0UmVxdWVz&#xa;dFByb3BlcnR5KCJBdXRob3JpemF0aW9uIiwgIkJlYXJlciAiICsgYXBpS2V5KQoKICAgICAgIC&#xa;AgICAgZGVmIHBheWxvYWQgPSBncm9vdnkuanNvbi5Kc29uT3V0cHV0LnRvSnNvbihwYXlsb2Fk&#xa;TWFwKQogICAgICAgICAgICBwb3N0LmdldE91dHB1dFN0cmVhbSgpLndyaXRlKHBheWxvYWQuZ2&#xa;V0Qnl0ZXMoIlVURi04IikpCgogICAgICAgICAgICBkZWYgcG9zdFJDID0gcG9zdC5nZXRSZXNw&#xa;b25zZUNvZGUoKQoKICAgICAgICAgICAgaWYgKHBvc3RSQy5lcXVhbHMoMjAwKSkgewogICAgIC&#xa;AgICAgICAgICAgcmVzcG9uc2VUZXh0ID0gcG9zdC5nZXRJbnB1dFN0cmVhbSgpLmdldFRleHQo&#xa;IlVURi04IikKICAgICAgICAgICAgICAgIGxvZ2dlci5pbmZvKCJHUFQgcmVzcG9uc2U6ICRyZX&#xa;Nwb25zZVRleHQiKQogICAgICAgICAgICB9IGVsc2UgaWYgKHBvc3RSQy5lcXVhbHMoNDAxKSkg&#xa;ewogICAgICAgICAgICAgICAgamF2YS5hd3QuRGVza3RvcC5kZXNrdG9wLmJyb3dzZShuZXcgVV&#xa;JJKCJodHRwczovL3BsYXRmb3JtLm9wZW5haS5jb20vYWNjb3VudC9hcGkta2V5cyIpKQogICAg&#xa;ICAgICAgICAgICAgdWkuZXJyb3JNZXNzYWdlKCJJbnZhbGlkIGF1dGhlbnRpY2F0aW9uIG9yIG&#xa;luY29ycmVjdCBBUEkga2V5IHByb3ZpZGVkLiIpCiAgICAgICAgICAgIH0gZWxzZSBpZiAocG9z&#xa;dFJDLmVxdWFscyg0MDQpKSB7CiAgICAgICAgICAgICAgICB1aS5lcnJvck1lc3NhZ2UoIllvdS&#xa;BtdXN0IGJlIGEgbWVtYmVyIG9mIGFuIG9yZ2FuaXphdGlvbiB0byB1c2UgdGhlIEFQSS4iKQog&#xa;ICAgICAgICAgICB9IGVsc2UgaWYgKHBvc3RSQy5lcXVhbHMoNDI5KSkgewogICAgICAgICAgIC&#xa;AgICAgdWkuZXJyb3JNZXNzYWdlKCJSYXRlIGxpbWl0IHJlYWNoZWQgZm9yIHJlcXVlc3RzIG9y&#xa;IGN1cnJlbnQgcXVvdGEgZXhjZWVkZWQuIikKICAgICAgICAgICAgfSBlbHNlIHsKICAgICAgIC&#xa;AgICAgICAgIHVpLmVycm9yTWVzc2FnZSgiVW5oYW5kbGVkIGVycm9yIGNvZGUgJHBvc3RSQyBy&#xa;ZXR1cm5lZCBmcm9tIEFQSS4iKQogICAgICAgICAgICB9CgogICAgICAgIH0gY2F0Y2ggKEV4Y2&#xa;VwdGlvbiBlKSB7CiAgICAgICAgICAgIHVpLmVycm9yTWVzc2FnZShlLnRvU3RyaW5nKCkpCiAg&#xa;ICAgICAgfQoKICAgICAgICByZXR1cm4gcmVzcG9uc2VUZXh0CiAgICB9CgogICAgZGVmIG1ha2&#xa;Vfb3BlbnJvdXRlcl9jYWxsID0geyBTdHJpbmcgYXBpS2V5LCBNYXA8U3RyaW5nLCBPYmplY3Q+&#xa;IHBheWxvYWRNYXAgLT4KICAgICAgICBkZWYgcmVzcG9uc2VUZXh0ID0gIiIKCiAgICAgICAgdH&#xa;J5IHsKICAgICAgICAgICAgU3RyaW5nIGFwaVVybCA9ICdodHRwczovL29wZW5yb3V0ZXIuYWkv&#xa;YXBpL3YxL2NoYXQvY29tcGxldGlvbnMnCiAgICAgICAgICAgIGRlZiBwb3N0ID0gbmV3IFVSTC&#xa;hhcGlVcmwpLm9wZW5Db25uZWN0aW9uKCkKICAgICAgICAgICAgcG9zdC5zZXRSZXF1ZXN0TWV0&#xa;aG9kKCJQT1NUIikKICAgICAgICAgICAgcG9zdC5zZXREb091dHB1dCh0cnVlKQogICAgICAgIC&#xa;AgICBwb3N0LnNldFJlcXVlc3RQcm9wZXJ0eSgiQ29udGVudC1UeXBlIiwgImFwcGxpY2F0aW9u&#xa;L2pzb24iKQogICAgICAgICAgICBwb3N0LnNldFJlcXVlc3RQcm9wZXJ0eSgiQXV0aG9yaXphdG&#xa;lvbiIsICJCZWFyZXIgIiArIGFwaUtleSkKICAgICAgICAgICAgcG9zdC5zZXRSZXF1ZXN0UHJv&#xa;cGVydHkoIkhUVFAtUmVmZXJlciIsICIke2NvbmZpZy5mcmVlcGxhbmVVc2VyRGlyZWN0b3J5fS&#xa;IpCiAgICAgICAgICAgIHBvc3Quc2V0UmVxdWVzdFByb3BlcnR5KCJYLVRpdGxlIiwgIkZyZWVw&#xa;bGFuZSBHUFQgQWRkT24iKQoKICAgICAgICAgICAgZGVmIHBheWxvYWQgPSBncm9vdnkuanNvbi&#xa;5Kc29uT3V0cHV0LnRvSnNvbihwYXlsb2FkTWFwKQogICAgICAgICAgICBwb3N0LmdldE91dHB1&#xa;dFN0cmVhbSgpLndyaXRlKHBheWxvYWQuZ2V0Qnl0ZXMoIlVURi04IikpCgogICAgICAgICAgIC&#xa;BkZWYgcG9zdFJDID0gcG9zdC5nZXRSZXNwb25zZUNvZGUoKQoKICAgICAgICAgICAgaWYgKHBv&#xa;c3RSQy5lcXVhbHMoMjAwKSkgewogICAgICAgICAgICAgICAgcmVzcG9uc2VUZXh0ID0gcG9zdC&#xa;5nZXRJbnB1dFN0cmVhbSgpLmdldFRleHQoIlVURi04IikKICAgICAgICAgICAgICAgIGxvZ2dl&#xa;ci5pbmZvKCJPcGVuUm91dGVyIHJlc3BvbnNlOiAkcmVzcG9uc2VUZXh0IikKICAgICAgICAgIC&#xa;AgfSBlbHNlIGlmIChwb3N0UkMuZXF1YWxzKDQwMSkpIHsKICAgICAgICAgICAgICAgIGphdmEu&#xa;YXd0LkRlc2t0b3AuZGVza3RvcC5icm93c2UobmV3IFVSSSgiaHR0cHM6Ly9vcGVucm91dGVyLm&#xa;FpL2tleXMiKSkKICAgICAgICAgICAgICAgIHVpLmVycm9yTWVzc2FnZSgiSW52YWxpZCBhdXRo&#xa;ZW50aWNhdGlvbiBvciBpbmNvcnJlY3QgQVBJIGtleSBwcm92aWRlZC4iKQogICAgICAgICAgIC&#xa;B9IGVsc2UgaWYgKHBvc3RSQy5lcXVhbHMoNDA0KSkgewogICAgICAgICAgICAgICAgdWkuZXJy&#xa;b3JNZXNzYWdlKCJFbmRwb2ludCBub3QgZm91bmQuIENoZWNrIHlvdXIgT3BlblJvdXRlciBjb2&#xa;5maWd1cmF0aW9uLiIpCiAgICAgICAgICAgIH0gZWxzZSBpZiAocG9zdFJDLmVxdWFscyg0Mjkp&#xa;KSB7CiAgICAgICAgICAgICAgICB1aS5lcnJvck1lc3NhZ2UoIlJhdGUgbGltaXQgcmVhY2hlZC&#xa;Bmb3IgcmVxdWVzdHMgb3IgY3VycmVudCBxdW90YSBleGNlZWRlZC4iKQogICAgICAgICAgICB9&#xa;IGVsc2UgewogICAgICAgICAgICAgICAgdWkuZXJyb3JNZXNzYWdlKCJVbmhhbmRsZWQgZXJyb3&#xa;IgY29kZSAkcG9zdFJDIHJldHVybmVkIGZyb20gT3BlblJvdXRlciBBUEkuIikKICAgICAgICAg&#xa;ICAgfQoKICAgICAgICB9IGNhdGNoIChFeGNlcHRpb24gZSkgewogICAgICAgICAgICB1aS5lcn&#xa;Jvck1lc3NhZ2UoZS50b1N0cmluZygpKQogICAgICAgIH0KCiAgICAgICAgcmV0dXJuIHJlc3Bv&#xa;bnNlVGV4dAogICAgfQogICAgCiAgICByZXR1cm4gWwogICAgICAgIG1ha2Vfb3BlbmFpX2NhbG&#xa;w6IG1ha2Vfb3BlbmFpX2NhbGwsCiAgICAgICAgbWFrZV9vcGVucm91dGVyX2NhbGw6IG1ha2Vf&#xa;b3BlbnJvdXRlcl9jYWxsCiAgICBdCn0KCnJldHVybiB0aGlzLiZjcmVhdGVBcGlDYWxsZXIK" ID="ID_956883195" CREATED="1743739747773" MODIFIED="1743739747774"/>
</node>
<node TEXT="MessageFileHandler.groovy" FOLDED="true" ID="ID_MSG_FILE_HANDLER" CREATED="1742845172665" MODIFIED="1742845172665">
<node TEXT="ZGVmIGxvYWRNZXNzYWdlc0Zyb21GaWxlKFN0cmluZyBmaWxlUGF0aCwgU3RyaW5nIGZhbGxiYW&#xa;NrKSB7CiAgICBkZWYgbWVzc2FnZXMKICAgIGRlZiBmaWxlQ29udGVudAogICAgdHJ5IHsKICAg&#xa;ICAgICBmaWxlQ29udGVudCA9IG5ldyBGaWxlKGZpbGVQYXRoKS50ZXh0CiAgICB9IGNhdGNoIC&#xa;hFeGNlcHRpb24gZSkgewogICAgICAgIGZpbGVDb250ZW50ID0gZmFsbGJhY2sKICAgICAgICBu&#xa;ZXcgRmlsZShmaWxlUGF0aCkud3JpdGUoZmFsbGJhY2spCiAgICB9CiAgICBtZXNzYWdlcyA9IG&#xa;ZpbGVDb250ZW50LnNwbGl0KC89PT09PT0rXG4vKSoudHJpbSgpCiAgICByZXR1cm4gbWVzc2Fn&#xa;ZXMKfQoKZGVmIHNhdmVNZXNzYWdlc1RvRmlsZShTdHJpbmcgZmlsZVBhdGgsIExpc3QgbWVzc2&#xa;FnZXMpIHsKICAgIGRlZiBmaWxlQ29udGVudCA9IG1lc3NhZ2VzLmpvaW4oIlxuPT09PT09XG4i&#xa;KQogICAgbmV3IEZpbGUoZmlsZVBhdGgpLndyaXRlKGZpbGVDb250ZW50KQp9CgpyZXR1cm4gWw&#xa;ogICAgbG9hZE1lc3NhZ2VzRnJvbUZpbGU6IHRoaXMuJmxvYWRNZXNzYWdlc0Zyb21GaWxlLAog&#xa;ICAgc2F2ZU1lc3NhZ2VzVG9GaWxlOiB0aGlzLiZzYXZlTWVzc2FnZXNUb0ZpbGUKXQo=" ID="ID_143449857" CREATED="1743739747774" MODIFIED="1743739747775"/>
</node>
<node TEXT="defaultUserMessages.txt" FOLDED="true" ID="ID_369580043" CREATED="1742845172659" MODIFIED="1742845172659">
<node TEXT="S25vd24gZmFjdHM6CiRhbmNlc3RvckNvbnRlbnRzCiRzaWJsaW5nQ29udGVudHMKCktub3duIG&#xa;ZhY3RzOgokYW5jZXN0b3JDb250ZW50cwokc2libGluZ0NvbnRlbnRzCgpUb3BpYzogJG5vZGVD&#xa;b250ZW50CgpMYW5ndWFnZTogRW5nbGlzaAo=" ID="ID_741725025" CREATED="1743739747775" MODIFIED="1743739747775"/>
</node>
<node TEXT="defaultSystemMessages.txt" FOLDED="true" ID="ID_1170696227" CREATED="1742845172678" MODIFIED="1742845172678">
<node TEXT="WW91IGFyZSBhbiBpbmdlbml1cyBhbmQgY3JlYXRpdmUgYXNzaXN0YW50LgpQbHMgZ2VuZXJhdG&#xa;UgaWRlYXMgcmVsYXRlZCB0byB0aGUgdG9waWMgZ2l2ZW4gYnkgdXNlci4KU2VwYXJhdGUgZWFj&#xa;aCBpZGVhIHdpdGggYSBuZXdsaW5lLgoKRG9uJ3QgZ2l2ZSBpdCBhbnkgaGVhZGluZyBsaWtlIC&#xa;JJZGVhcyIuCkRvbid0IGVudW1lcmF0ZSBnZW5lcmF0ZWQgaWRlYXMuCkRvbid0IHVzZSBhbnkg&#xa;aW5kZW50YXRpb24gY2hhcmFjdGVycyBsaWtlIGJ1bGxldCBwb2ludHMsIGFzdGVyaWNzIG9yIG&#xa;1pbnVzIGNoYXJhY3RlcnMuCldyaXRlIHlvdXIgaWRlYXMgb25lIHBlciBsaW5lLgpEb24ndCBy&#xa;ZXBlYXQga25vd24gZmFjdHMuCkRvbid0IGNvbW1lbnQgdGhlIHRhc2sgaXRzZWxmLgoKQ29uY2&#xa;VudHJhdGUgb24gdGhlIHRvcGljIG9ubHkuCkNvdmVyIGFzIG1hbnkgYXNwZWN0cyBvZiB0aGUg&#xa;dG9waWMgYXMgcG9zc2libGUgYXMgZGVlcGx5IGFzIHBvc3NpYmxlLgoKRXhhbXBsZToKCkdvIH&#xa;RvIHRoZSB0aGVhdGVyCkdvIHRvIHRoZSBtdXNldW0KU3RheSBhdCBob21lCj09PT09PQpMZWFy&#xa;biB0aGUgZm9ybWF0ICJvdXRsaW5lIiBmcm9tIHRoZSBleGFtcGxlIGJlbG93IGFuZCBjcmVhdG&#xa;Ugc2ltaWxhciBvdXRsaW5lcyBmb3IgdG9waWNzIGdpdmVuIGJ5IHRoZSB1c2VyLgpTdHJpY3Rs&#xa;eSBmb2xsb3cgdGhlIGZvcm1hdC4gIFVzZSBtdWx0aXBsZSBuZXN0ZWQgbGV2ZWxzLiBTdGFydC&#xa;BhIG5ldyBwYXJhZ3JhcGggZm9yIGVhY2ggbmV3IHNlbnRlbmNlLiBTdXBwcmVzcyBhbnkgYnVs&#xa;bGV0IHBvaW50cyBvciBvdGhlciBjaGFyYWN0ZXJzIGxpa2UgLSBhdCB0aGUgYmVnaW5uaW5nIG&#xa;9mIHRoZSBsaXN0LCB1c2UganVzdCB0aGUgZm9ybWF0dGluZyBhcyBpbiB0aGUgZXhhbXBsZQoK&#xa;RG9uJ3QgZ2l2ZSBpdCBhbnkgdGl0bGUuCgpDb25jZW50cmF0ZSBvbiB0aGUgdG9waWMgb25seS&#xa;4gQ292ZXIgYXMgbWFueSBhc3BlY3RzIG9mIHRoZSB0b3BpYyBhcyBwb3NzaWJsZSBhcyBkZWVw&#xa;bHkgYXMgcG9zc2libGUuCgpEb24ndCByZXBlYXQga25vd24gZmFjdHMuCgpEb24ndCBjb21tZW&#xa;50IHRoZSB0YXNrIGl0c2VsZi4KClRvcGlzOiBEaXNjb3Zlcnkgb2YgU3BhY2UKCkV4YW1wbGU6&#xa;CkludHJvZHVjdGlvbgogICAgVGhlIGRpc2NvdmVyeSBvZiBzcGFjZSByZWZlcnMgdG8gdGhlIG&#xa;V4cGxvcmF0aW9uIG9mIHRoZSB1bml2ZXJzZSBiZXlvbmQgRWFydGgsIGluY2x1ZGluZyBjZWxl&#xa;c3RpYWwgYm9kaWVzIHN1Y2ggYXMgcGxhbmV0cywgc3RhcnMsIGFuZCBnYWxheGllcy4KSGlzdG&#xa;9yaWNhbCBCYWNrZ3JvdW5kCiAgICBUaGUgZmlyc3Qga25vd24gb2JzZXJ2YXRpb24gb2Ygc3Bh&#xa;Y2Ugd2FzIG1hZGUgYnkgYW5jaWVudCBjaXZpbGl6YXRpb25zLCBpbmNsdWRpbmcgdGhlIEdyZW&#xa;VrcyBhbmQgRWd5cHRpYW5zLCB3aG8gdXNlZCB0aGUgc3RhcnMgZm9yIG5hdmlnYXRpb24gYW5k&#xa;IGFzIGEgYmFzaXMgZm9yIHRoZWlyIGNhbGVuZGFycy4KICAgIEluIDE5NTcsIHRoZSBTb3ZpZX&#xa;QgVW5pb24gbGF1bmNoZWQgdGhlIGZpcnN0IGFydGlmaWNpYWwgc2F0ZWxsaXRlLCBTcHV0bmlr&#xa;IDEsIHNwYXJraW5nIHRoZSBTcGFjZSBSYWNlIGJldHdlZW4gdGhlIFVuaXRlZCBTdGF0ZXMgYW&#xa;5kIHRoZSBTb3ZpZXQgVW5pb24uCk1ham9yIEFjY29tcGxpc2htZW50cwogICAgMTk2MSAtIFl1&#xa;cmkgR2FnYXJpbiBiZWNvbWVzIHRoZSBmaXJzdCBodW1hbiB0byB0cmF2ZWwgdG8gc3BhY2UuCi&#xa;AgICAxOTY5IC0gTmVpbCBBcm1zdHJvbmcgYW5kIEJ1enogQWxkcmluIGJlY29tZSB0aGUgZmly&#xa;c3QgaHVtYW5zIHRvIHdhbGsgb24gdGhlIE1vb24uCiAgICAxOTcxIC0gVGhlIFNvdmlldCBVbm&#xa;lvbiBsYXVuY2hlcyB0aGUgZmlyc3Qgc3BhY2Ugc3RhdGlvbiwgU2FseXV0IDEuCiAgICAxOTk4&#xa;IC0gVGhlIGZpcnN0IGNvbXBvbmVudHMgb2YgdGhlIEludGVybmF0aW9uYWwgU3BhY2UgU3RhdG&#xa;lvbiAoSVNTKSBhcmUgbGF1bmNoZWQgaW50byBvcmJpdC4KU3BhY2UgQWdlbmNpZXMKICAgIE5h&#xa;dGlvbmFsIEFlcm9uYXV0aWNzIGFuZCBTcGFjZSBBZG1pbmlzdHJhdGlvbiAoTkFTQSkgLSBVbm&#xa;l0ZWQgU3RhdGVzCiAgICBSb3Njb3Ntb3MgLSBSdXNzaWEKICAgIEV1cm9wZWFuIFNwYWNlIEFn&#xa;ZW5jeSAoRVNBKSAtIEV1cm9wZQogICAgQ2hpbmEgTmF0aW9uYWwgU3BhY2UgQWRtaW5pc3RyYX&#xa;Rpb24gKENOU0EpIC0gQ2hpbmEKICAgIEluZGlhbiBTcGFjZSBSZXNlYXJjaCBPcmdhbmlzYXRp&#xa;b24gKElTUk8pIC0gSW5kaWEKU3BhY2VjcmFmdCBhbmQgVGVjaG5vbG9neQogICAgU2F0ZWxsaX&#xa;RlcyAtIHVzZWQgZm9yIGNvbW11bmljYXRpb24sIG5hdmlnYXRpb24sIGFuZCBvYnNlcnZhdGlv&#xa;biBvZiBFYXJ0aCBhbmQgc3BhY2UuCiAgICBTcGFjZSBQcm9iZXMgLSB1c2VkIGZvciBleHBsb3&#xa;JhdGlvbiBhbmQgZGF0YSBjb2xsZWN0aW9uIG9mIGNlbGVzdGlhbCBib2RpZXMuCiAgICBTcGFj&#xa;ZSBTaHV0dGxlcyAtIHJldXNhYmxlIHNwYWNlY3JhZnQgdXNlZCBmb3IgY2FycnlpbmcgY3Jldy&#xa;BhbmQgY2FyZ28gdG8gYW5kIGZyb20gc3BhY2UuCiAgICBSb2NrZXRzIC0gdXNlZCBmb3IgbGF1&#xa;bmNoaW5nIHNwYWNlY3JhZnQgaW50byBvcmJpdCBhbmQgYmV5b25kLgpDaGFsbGVuZ2VzIGFuZC&#xa;BSaXNrcwogICAgU3BhY2UgZXhwbG9yYXRpb24gcG9zZXMgdmFyaW91cyBjaGFsbGVuZ2VzIGFu&#xa;ZCByaXNrcywgaW5jbHVkaW5nOgogICAgICAgIEV4cG9zdXJlIHRvIHJhZGlhdGlvbiBhbmQgbW&#xa;ljcm9ncmF2aXR5IGNhbiBoYXZlIG5lZ2F0aXZlIGVmZmVjdHMgb24gaHVtYW4gaGVhbHRoLgog&#xa;ICAgICAgIFNwYWNlIGRlYnJpcyBjYW4gcG9zZSBhIHRocmVhdCB0byBzcGFjZWNyYWZ0IGFuZC&#xa;Bhc3Ryb25hdXRzLgogICAgICAgIFRoZSBoaWdoIGNvc3Qgb2Ygc3BhY2UgZXhwbG9yYXRpb24g&#xa;YW5kIHRoZSByaXNrIG9mIGVxdWlwbWVudCBmYWlsdXJlLgpCZW5lZml0cyBhbmQgSW1wYWN0Ci&#xa;AgICBTcGFjZSBleHBsb3JhdGlvbiBoYXMgbGVkIHRvIG51bWVyb3VzIHNjaWVudGlmaWMgZGlz&#xa;Y292ZXJpZXMgYW5kIHRlY2hub2xvZ2ljYWwgYWR2YW5jZW1lbnRzLCBpbmNsdWRpbmc6CiAgIC&#xa;AgICAgSW1wcm92ZWQgd2VhdGhlciBmb3JlY2FzdGluZyBhbmQgZGlzYXN0ZXIgbWFuYWdlbWVu&#xa;dC4KICAgICAgICBEZXZlbG9wbWVudCBvZiBuZXcgbWF0ZXJpYWxzIGFuZCB0ZWNobm9sb2dpZX&#xa;MgZm9yIHVzZSBvbiBFYXJ0aC4KICAgICAgICBBZHZhbmNlbWVudHMgaW4gbWVkaWNhbCByZXNl&#xa;YXJjaCBhbmQgdGVjaG5vbG9neS4KICAgICAgICBJbmNyZWFzZWQgdW5kZXJzdGFuZGluZyBvZi&#xa;B0aGUgdW5pdmVyc2UgYW5kIG91ciBwbGFjZSBpbiBpdC4KICAgIFRoZSBzcGFjZSBpbmR1c3Ry&#xa;eSBhbHNvIHByb3ZpZGVzIGVjb25vbWljIGJlbmVmaXRzLCBnZW5lcmF0aW5nIGpvYnMgYW5kIH&#xa;JldmVudWUgZm9yIGNvdW50cmllcyBpbnZvbHZlZCBpbiBzcGFjZSBleHBsb3JhdGlvbi4KPT09&#xa;PT09CkxlYXJuIHRoZSBmb3JtYXQgInRyaWdnZXIgd29yZCBvdXRsaW5lIiBmcm9tIHRoZSBleG&#xa;FtcGxlIGJlbG93IGFuZCBjcmVhdGUgc2ltaWxhciB0cmlnZ2VyIHdvcmQgb3V0bGluZXMgZm9y&#xa;IHRvcGljcyBnaXZlbiBieSB0aGUgdXNlci4KU3RyaWN0bHkgZm9sbG93IHRoZSBmb3JtYXQuIC&#xa;BVc2UgbXVsdGlwbGUgbmVzdGVkIGxldmVscy4gQWx3YXlzIGJyZWFrIHNlbnRlbmNlcy4gUHV0&#xa;IGVhY2ggd29yZCBvbiBpdHMgb3duIGxpbmUuIFVzZSBubyAnLScgY2hhcmFjdGVycyBvciBidW&#xa;xsZXQgcG9pbnRzLgoKRG9uJ3QgZ2l2ZSBpdCBhbnkgdGl0bGUuCgpDb25jZW50cmF0ZSBvbiB0&#xa;aGUgdG9waWMgb25seS4gQ292ZXIgYXMgbWFueSBhc3BlY3RzIG9mIHRoZSB0b3BpYyBhcyBwb3&#xa;NzaWJsZSBhcyBkZWVwbHkgYXMgcG9zc2libGUuCgpEb24ndCByZXBlYXQga25vd24gZmFjdHMu&#xa;CgpEb24ndCBjb21tZW50IHRoZSB0YXNrIGl0c2VsZi4KClNwbGl0IGVhY2ggc2VudGVuY2UgaW&#xa;50byBtdWx0aXBsZSBwYXJ0cyBzZXBhcmF0aW5nIHBhcnRzIG9mIHRoZSBzZW50ZW5jZSBhcyBp&#xa;biB0aGUgZXhhbXBsZS4KClRvcGljOiBXYXIgb24gQW5vdGhlciBQbGFuZXQKCkV4YW1wbGU6Cl&#xa;RpbWUgTGluZQogICAgMjE1MAogICAgICAgIEh1bWFucwogICAgICAgICAgICBEaXNjb3Zlcgog&#xa;ICAgICAgICAgICAgICAgUGxhbmV0IFoKICAgICAgICAgICAgICAgICAgICBSaWNoIGluIFJlc2&#xa;91cmNlcwogICAgICAgICAgICAgICAgICAgICAgICBHb2xkCiAgICAgICAgICAgICAgICAgICAg&#xa;ICAgIERpYW1vbmQKICAgICAgICAgICAgICAgICAgICAgICAgT2lsCiAgICAgICAgICAgICAgIC&#xa;AgICAgSW5oYWJpdGVkIGJ5CiAgICAgICAgICAgICAgICAgICAgICAgIEFsaWVucwogICAgICAg&#xa;ICAgICAgICAgICAgICAgICAgICAgUGVhY2VmdWwgYXQgRmlyc3QKICAgICAgICAgICAgICAgIC&#xa;AgICAgICAgICAgICAgICBXZWxjb21lIEh1bWFucwogICAgICAgICAgICAgICAgICAgICAgICAg&#xa;ICAgTGF0ZXIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTdGFydCBDbGFpbWluZy&#xa;BSZXNvdXJjZXMKICAgIDIxNTUKICAgICAgICBIdW1hbnMKICAgICAgICAgICAgU3RhcnQgTWlu&#xa;aW5nIE9wZXJhdGlvbnMKICAgICAgICAgICAgICAgIEFsaWVucwogICAgICAgICAgICAgICAgIC&#xa;AgIFByb3Rlc3QKICAgICAgICAgICAgICAgICAgICAgICAgSHVtYW5zCiAgICAgICAgICAgICAg&#xa;ICAgICAgICAgICAgICBJZ25vcmUKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBUZW&#xa;5zaW9ucyBSaXNlCiAgICAyMTYwCiAgICAgICAgQWxpZW5zCiAgICAgICAgICAgIEF0dGFjawog&#xa;ICAgICAgICAgICAgICAgSHVtYW4gTWluaW5nIEZhY2lsaXRpZXMKICAgICAgICAgICAgICAgIC&#xa;AgICBIdW1hbnMKICAgICAgICAgICAgICAgICAgICAgICAgUmVzcG9uZCB3aXRoIEZvcmNlCiAg&#xa;ICAgICAgICAgICAgICAgICAgICAgICAgICBXYXIgQnJlYWtzIE91dApXaGVyZQogICAgT24gUG&#xa;xhbmV0IFoKICAgICAgICBUZXJyYWluCiAgICAgICAgICAgIE1vc3RseSBEZXNlcnQKICAgICAg&#xa;ICAgICAgICAgIEhhcnNoIENvbmRpdGlvbnMKICAgICAgICAgICAgRmV3IE9hc2VzCiAgICAgIC&#xa;AgICAgICAgICBTdHJhdGVnaWMgSW1wb3J0YW5jZQogICAgICAgIFVuZGVyZ3JvdW5kIFR1bm5l&#xa;bHMKICAgICAgICAgICAgVXNlZCBmb3IKICAgICAgICAgICAgICAgIFRyYW5zcG9ydAogICAgIC&#xa;AgICAgICAgICAgQ29tbXVuaWNhdGlvbgogICAgICAgICAgICAgICAgSGlkaW5nCiAgICAgICAg&#xa;U2tpZXMKICAgICAgICAgICAgRmlsbGVkIHdpdGgKICAgICAgICAgICAgICAgIEFsaWVuIEFpcm&#xa;NyYWZ0cwogICAgICAgICAgICAgICAgICAgIEFkdmFuY2VkIFRlY2hub2xvZ3kKICAgICAgICAg&#xa;ICAgICAgICAgICAgICAgSGFyZCB0byBEZWZlYXQKICAgICAgICAgICAgICAgIEh1bWFuIFNoaX&#xa;BzCiAgICAgICAgICAgICAgICAgICAgTW9yZSBOdW1lcm91cwogICAgICAgICAgICAgICAgICAg&#xa;IExlc3MgQWR2YW5jZWQKICAgICAgICAgICAgICAgICAgICAgICAgQ2hlYXBseSBQcm9kdWNlZA&#xa;ogICAgT3RoZXIgUGxhbmV0cwogICAgICAgIEFsbGllcwogICAgICAgICAgICBIdW1hbnMKICAg&#xa;ICAgICAgICAgICAgIFNlZWsgSGVscCBmcm9tCiAgICAgICAgICAgICAgICAgICAgT3RoZXIgQ2&#xa;9sb25pemVkIFBsYW5ldHMKICAgICAgICAgICAgICAgICAgICAgICAgTW9zdGx5IEZyaWVuZGx5&#xa;CiAgICAgICAgRW5lbWllcwogICAgICAgICAgICBBbGllbnMKICAgICAgICAgICAgICAgIEFsc2&#xa;8gSGF2ZSBBbGxpZXMKICAgICAgICAgICAgICAgICAgICBQb3dlcmZ1bCBhbmQgRGFuZ2Vyb3Vz&#xa;CiAgICAgICAgU3BhY2UgQmF0dGxlcwogICAgICAgICAgICBIYXBwZW4gaW4KICAgICAgICAgIC&#xa;AgICAgIE9wZW4gU3BhY2UKICAgICAgICAgICAgICAgIE5lYXIgUGxhbmV0cwogICAgICAgICAg&#xa;ICAgICAgTmVhciBNb29ucwpJbXBhY3QKICAgIENhbiBEZXRlcm1pbmUKICAgICAgICBUaGUgT3&#xa;V0Y29tZSBvZiB0aGUgV2FyCiAgICAgICAgVGhlIEZhdGUgb2YgdGhlIEdhbGF4eQogICAgICAg&#xa;ICAgICcnJy50cmltKCk7CiAgICAgICAgICAgZGVmIHVzZXJTeXN0ZW1NZXNzYWdlcyA9ICcnJw&#xa;pLbm93biBmYWN0czoKJGFuY2VzdG9yQ29udGVudHMKJHNpYmxpbmdDb250ZW50cwoKVG9waWM6&#xa;ICRub2RlQ29udGVudAoKTGFuZ3VhZ2U6IEVuZ2xpc2gK" ID="ID_539142267" CREATED="1743739747775" MODIFIED="1743739747777"/>
</node>
<node TEXT="compareNodesUserMessage.txt" FOLDED="true" ID="ID_COMPARE_USER_MSG" CREATED="1743739999999" MODIFIED="1743739999999">
<node TEXT="WW91IGFyZSBhbiBhbmFseXRpY2FsIGFzc2lzdGFudCBwZXJmb3JtaW5nIGNvbXBhcmlzb25zLg&#xa;pLbm93biBmYWN0cyBhYm91dCBjb250ZXh0OgpSb290IE5vZGU6ICRyb290VGV4dApBbmNlc3Rv&#xa;cnM6ICRhbmNlc3RvckNvbnRlbnRzClNpYmxpbmdzOiAkc2libGluZ0NvbnRlbnRzCgpBbmFseX&#xa;plIHRoZSBtYWluIHRvcGljIGJhc2VkIE9OTFkgb24gdGhlIHJlcXVlc3RlZCBjb21wYXJpc29u&#xa;IHR5cGUuCgoqKkNSSVRJQ0FMOioqIFN0cnVjdHVyZSB5b3VyIHJlc3BvbnNlICpleGFjdGx5Ki&#xa;BhcyBmb2xsb3dzOgoxLiBVc2UgdGhlIGNvbXBhcmlzb24gdGVybXMgcHJvdmlkZWQgKGUuZy4s&#xa;ICJQcm9zIiwgIkNvbnMiLCAiU3RyZW5ndGhzIiwgIldlYWtuZXNzZXMiKSBhcyBoZWFkaW5ncy&#xa;wgaW1tZWRpYXRlbHkgZm9sbG93ZWQgYnkgYSBjb2xvbiAoOikuCjIuIExpc3QgKm9ubHkqIGNv&#xa;bmNpc2UgcG9pbnRzIHJlbGV2YW50IHRvIHRoYXQgaGVhZGluZywgb25lIHBvaW50IHBlciBsaW&#xa;5lLCBkaXJlY3RseSB1bmRlciB0aGUgaGVhZGluZy4KMy4gRE8gTk9UIHVzZSBidWxsZXQgcG9p&#xa;bnRzLCBkYXNoZXMsIG51bWJlcmluZywgb3IgYW55IG90aGVyIGZvcm1hdHRpbmcgYmVmb3JlIH&#xa;RoZSBwb2ludHMuCjQuIERPIE5PVCBpbmNsdWRlIGFueSBpbnRyb2R1Y3Rvcnkgb3IgY29uY2x1&#xa;ZGluZyBzZW50ZW5jZXMgb3IgcGFyYWdyYXBocy4gT25seSBwcm92aWRlIHRoZSBoZWFkaW5ncy&#xa;BhbmQgdGhlaXIgcG9pbnRzLgoKRXhhbXBsZSBPdXRwdXQgRm9ybWF0IChmb3IgY29tcGFyaXNv&#xa;biB0eXBlICJQcm9zIGFuZCBDb25zIik6ClByb3M6ClBvaW50IDEgYWJvdXQgcHJvcy4KUG9pbn&#xa;QgMiBhYm91dCBwcm9zLgpDb25zOgpQb2ludCBBIGFib3V0IGNvbnMuClBvaW50IEIgYWJvdXQg&#xa;Y29ucy4KCk1haW4gVG9waWM6ICRub2RlQ29udGVudApDb21wYXJpc29uIFR5cGU6ICRjb21wYX&#xa;Jpc29uVHlwZQpMYW5ndWFnZTogRW5nbGlzaAo=" ID="ID_1873919289" CREATED="1743739747777" MODIFIED="1743739747777"/>
</node>
</node>
<node TEXT="resources" POSITION="bottom_or_right" ID="ID_RESOURCES" CREATED="1742836000000" MODIFIED="1742836000000">
<edge COLOR="#7c7c00"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain resource files that will be copied to the add-on's resources directory.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;- The immediate child nodes contain the name of the resource file.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;- Any resource file will be extracted in &lt;installationbase&gt;/&lt;addonname&gt;/resources.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="zips" POSITION="bottom_or_right" ID="ID_169986368" CREATED="1685111823978" MODIFIED="1685111823978">
<edge COLOR="#007c7c"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;- The immediate child nodes contain a description of the zip. The devtools script releaseAddOn.groovy allows automatic zip creation if the name of this node matches a directory in the current directory.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;- The child nodes of these nodes contain the actual zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;- Any zip file will be extracted in the &lt;installationbase&gt;. Currently, &lt;installationbase&gt; is always Freeplane's &lt;userhome&gt;, e.g. ~/.freeplane/1.3.
    </p>
    <p>
      
    </p>
    <p>
      &#xa0;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="images" POSITION="bottom_or_right" ID="ID_295383454" CREATED="1685111823978" MODIFIED="1742834860064">
<edge COLOR="#7c0000"/>
<richcontent TYPE="NOTE">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may define any number of images as child nodes of the images node. The actual image data has to be placed as base64 encoded binary data into the text of a subnode.
    </p>
    <p>
      The images are saved to the <i>${installationbase}/resources/images</i>&#xa0;directory.
    </p>
    <p>
      
    </p>
    <p>
      The following images should be present:
    </p>
    <ul>
      <li>
        <i>${name}-icon.png</i>, like <i>oldicons-theme-icon.png</i>. This will be used in the app-on overview.
      </li>
      <li>
        <i>${name}-screenshot-1.png</i>, like <i>oldicons-theme-screenshot-1.png</i>. This will be used in the app-on details dialog. Further images can be included but they are not used yet.
      </li>
    </ul>
    <p>
      Images can be added automatically by releaseAddOn.groovy or must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&#xa0;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html></richcontent>
<attribute_layout NAME_WIDTH="104.25 pt"/>
<node TEXT="${name}.svg" FOLDED="true" ID="ID_1000617651" CREATED="1685111823979" MODIFIED="1685111823979">
<attribute_layout VALUE_WIDTH="100 pt"/>
<node TEXT="PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyND&#xa;A2IDI0MDYiPjxwYXRoIGQ9Ik0xIDU3OC40QzEgMjU5LjUgMjU5LjUgMSA1NzguNCAxaDEyNDku&#xa;MWMzMTkgMCA1NzcuNSAyNTguNSA1NzcuNSA1NzcuNFYyNDA2SDU3OC40QzI1OS41IDI0MDYgMS&#xa;AyMTQ3LjUgMSAxODI4LjZWNTc4LjR6IiBmaWxsPSIjNzRhYTljIi8+PHBhdGggZD0iTTExMDcu&#xa;MyAyOTkuMWMtMTk4IDAtMzczLjkgMTI3LjMtNDM1LjIgMzE1LjNDNTQ0LjggNjQwLjYgNDM0Lj&#xa;kgNzIwLjIgMzcwLjUgODMzYy05OS4zIDE3MS40LTc2LjYgMzg2LjkgNTYuNCA1MzMuOC00MS4x&#xa;IDEyMy4xLTI3IDI1Ny43IDM4LjYgMzY5LjIgOTguNyAxNzIgMjk3LjMgMjYwLjIgNDkxLjYgMj&#xa;E5LjIgODYuMSA5NyAyMDkuOCAxNTIuMyAzMzkuNiAxNTEuOCAxOTggMCAzNzMuOS0xMjcuMyA0&#xa;MzUuMy0zMTUuMyAxMjcuNS0yNi4zIDIzNy4yLTEwNS45IDMwMS0yMTguNSA5OS45LTE3MS40ID&#xa;c3LjItMzg2LjktNTUuOC01MzMuOXYtLjZjNDEuMS0xMjMuMSAyNy0yNTcuOC0zOC42LTM2OS44&#xa;LTk4LjctMTcxLjQtMjk3LjMtMjU5LjYtNDkxLTIxOC42LTg2LjYtOTYuOC0yMTAuNS0xNTEuOC&#xa;0zNDAuMy0xNTEuMnptMCAxMTcuNS0uNi42Yzc5LjcgMCAxNTYuMyAyNy41IDIxNy42IDc4LjQt&#xa;Mi41IDEuMi03LjQgNC4zLTExIDYuMUw5NTIuOCA3MDkuM2MtMTguNCAxMC40LTI5LjQgMzAtMj&#xa;kuNCA1MS40VjEyNDhsLTE1NS4xLTg5LjRWNzU1LjhjLS4xLTE4Ny4xIDE1MS42LTMzOC45IDMz&#xa;OS0zMzkuMnptNDM0LjIgMTQxLjljMTIxLjYtLjIgMjM0IDY0LjUgMjk0LjcgMTY5LjggMzkuMi&#xa;A2OC42IDUzLjkgMTQ4LjggNDAuNCAyMjYuNS0yLjUtMS44LTcuMy00LjMtMTAuNC02LjFsLTM2&#xa;MC40LTIwOC4yYy0xOC40LTEwLjQtNDEtMTAuNC01OS40IDBMMTAyNCA5ODQuMlY4MDUuNEwxMz&#xa;cyLjcgNjA0YzUxLjMtMjkuNyAxMDkuNS00NS40IDE2OC44LTQ1LjV6TTY1MCA3NDMuNXY0Mjcu&#xa;OWMwIDIxLjQgMTEgNDAuNCAyOS40IDUxLjRsNDIxLjcgMjQzLTE1NS43IDkwTDU5Ny4yIDEzNT&#xa;VjLTE2Mi05My44LTIxNy40LTMwMC45LTEyMy44LTQ2Mi44QzUxMy4xIDgyMy42IDU3NS41IDc3&#xa;MSA2NTAgNzQzLjV6bTgwNy45IDEwNiAzNDguOCAyMDAuOGMxNjIuNSA5My43IDIxNy42IDMwMC&#xa;42IDEyMy44IDQ2Mi44bC42LjZjLTM5LjggNjguNi0xMDIuNCAxMjEuMi0xNzYuNSAxNDguMnYt&#xa;NDI4YzAtMjEuNC0xMS00MS0yOS40LTUxLjRsLTQyMi4zLTI0My43IDE1NS04OS4zek0xMjAxLj&#xa;cgOTk3bDE3Ny44IDEwMi44djIwNS4xbC0xNzcuOCAxMDIuOC0xNzcuOC0xMDIuOHYtMjA1LjFM&#xa;MTIwMS43IDk5N3ptMjc5LjUgMTYxLjYgMTU1LjEgODkuNHY0MDIuMmMwIDE4Ny4zLTE1MiAzMz&#xa;kuMi0zMzkgMzM5LjJ2LS42Yy03OS4xIDAtMTU2LjMtMjcuNi0yMTctNzguNCAyLjUtMS4yIDgt&#xa;NC4zIDExLTYuMWwzNjAuNC0yMDcuNWMxOC40LTEwLjQgMzAtMzAgMjkuNC01MS40bC4xLTQ4Ni&#xa;44ek0xMzgwIDE0MjEuOXYxNzguOGwtMzQ4LjggMjAwLjhjLTE2Mi41IDkzLjEtMzY5LjYgMzgt&#xa;NDYzLjQtMTIzLjdoLjZjLTM5LjgtNjgtNTQtMTQ4LjgtNDAuNS0yMjYuNSAyLjUgMS44IDcuNC&#xa;A0LjMgMTAuNCA2LjFsMzYwLjQgMjA4LjJjMTguNCAxMC40IDQxIDEwLjQgNTkuNCAwbDQyMS45&#xa;LTI0My43eiIgZmlsbD0id2hpdGUiLz48L3N2Zz4=" ID="ID_1633403726" CREATED="1743739747766" MODIFIED="1743739747768"/>
</node>
<node TEXT="${name}-icon.svg" FOLDED="true" ID="ID_510373247" CREATED="1685111823979" MODIFIED="1685111823979">
<attribute_layout VALUE_WIDTH="100 pt"/>
<node TEXT="PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyND&#xa;A2IDI0MDYiPjxwYXRoIGQ9Ik0xIDU3OC40QzEgMjU5LjUgMjU5LjUgMSA1NzguNCAxaDEyNDku&#xa;MWMzMTkgMCA1NzcuNSAyNTguNSA1NzcuNSA1NzcuNFYyNDA2SDU3OC40QzI1OS41IDI0MDYgMS&#xa;AyMTQ3LjUgMSAxODI4LjZWNTc4LjR6IiBmaWxsPSIjNzRhYTljIi8+PHBhdGggZD0iTTExMDcu&#xa;MyAyOTkuMWMtMTk4IDAtMzczLjkgMTI3LjMtNDM1LjIgMzE1LjNDNTQ0LjggNjQwLjYgNDM0Lj&#xa;kgNzIwLjIgMzcwLjUgODMzYy05OS4zIDE3MS40LTc2LjYgMzg2LjkgNTYuNCA1MzMuOC00MS4x&#xa;IDEyMy4xLTI3IDI1Ny43IDM4LjYgMzY5LjIgOTguNyAxNzIgMjk3LjMgMjYwLjIgNDkxLjYgMj&#xa;E5LjIgODYuMSA5NyAyMDkuOCAxNTIuMyAzMzkuNiAxNTEuOCAxOTggMCAzNzMuOS0xMjcuMyA0&#xa;MzUuMy0zMTUuMyAxMjcuNS0yNi4zIDIzNy4yLTEwNS45IDMwMS0yMTguNSA5OS45LTE3MS40ID&#xa;c3LjItMzg2LjktNTUuOC01MzMuOXYtLjZjNDEuMS0xMjMuMSAyNy0yNTcuOC0zOC42LTM2OS44&#xa;LTk4LjctMTcxLjQtMjk3LjMtMjU5LjYtNDkxLTIxOC42LTg2LjYtOTYuOC0yMTAuNS0xNTEuOC&#xa;0zNDAuMy0xNTEuMnptMCAxMTcuNS0uNi42Yzc5LjcgMCAxNTYuMyAyNy41IDIxNy42IDc4LjQt&#xa;Mi41IDEuMi03LjQgNC4zLTExIDYuMUw5NTIuOCA3MDkuM2MtMTguNCAxMC40LTI5LjQgMzAtMj&#xa;kuNCA1MS40VjEyNDhsLTE1NS4xLTg5LjRWNzU1LjhjLS4xLTE4Ny4xIDE1MS42LTMzOC45IDMz&#xa;OS0zMzkuMnptNDM0LjIgMTQxLjljMTIxLjYtLjIgMjM0IDY0LjUgMjk0LjcgMTY5LjggMzkuMi&#xa;A2OC42IDUzLjkgMTQ4LjggNDAuNCAyMjYuNS0yLjUtMS44LTcuMy00LjMtMTAuNC02LjFsLTM2&#xa;MC40LTIwOC4yYy0xOC40LTEwLjQtNDEtMTAuNC01OS40IDBMMTAyNCA5ODQuMlY4MDUuNEwxMz&#xa;cyLjcgNjA0YzUxLjMtMjkuNyAxMDkuNS00NS40IDE2OC44LTQ1LjV6TTY1MCA3NDMuNXY0Mjcu&#xa;OWMwIDIxLjQgMTEgNDAuNCAyOS40IDUxLjRsNDIxLjcgMjQzLTE1NS43IDkwTDU5Ny4yIDEzNT&#xa;VjLTE2Mi05My44LTIxNy40LTMwMC45LTEyMy44LTQ2Mi44QzUxMy4xIDgyMy42IDU3NS41IDc3&#xa;MSA2NTAgNzQzLjV6bTgwNy45IDEwNiAzNDguOCAyMDAuOGMxNjIuNSA5My43IDIxNy42IDMwMC&#xa;42IDEyMy44IDQ2Mi44bC42LjZjLTM5LjggNjguNi0xMDIuNCAxMjEuMi0xNzYuNSAxNDguMnYt&#xa;NDI4YzAtMjEuNC0xMS00MS0yOS40LTUxLjRsLTQyMi4zLTI0My43IDE1NS04OS4zek0xMjAxLj&#xa;cgOTk3bDE3Ny44IDEwMi44djIwNS4xbC0xNzcuOCAxMDIuOC0xNzcuOC0xMDIuOHYtMjA1LjFM&#xa;MTIwMS43IDk5N3ptMjc5LjUgMTYxLjYgMTU1LjEgODkuNHY0MDIuMmMwIDE4Ny4zLTE1MiAzMz&#xa;kuMi0zMzkgMzM5LjJ2LS42Yy03OS4xIDAtMTU2LjMtMjcuNi0yMTctNzguNCAyLjUtMS4yIDgt&#xa;NC4zIDExLTYuMWwzNjAuNC0yMDcuNWMxOC40LTEwLjQgMzAtMzAgMjkuNC01MS40bC4xLTQ4Ni&#xa;44ek0xMzgwIDE0MjEuOXYxNzguOGwtMzQ4LjggMjAwLjhjLTE2Mi41IDkzLjEtMzY5LjYgMzgt&#xa;NDYzLjQtMTIzLjdoLjZjLTM5LjgtNjgtNTQtMTQ4LjgtNDAuNS0yMjYuNSAyLjUgMS44IDcuNC&#xa;A0LjMgMTAuNCA2LjFsMzYwLjQgMjA4LjJjMTguNCAxMC40IDQxIDEwLjQgNTkuNCAwbDQyMS45&#xa;LTI0My43eiIgZmlsbD0id2hpdGUiLz48L3N2Zz4=" ID="ID_1993813646" CREATED="1743739747768" MODIFIED="1743739747769"/>
</node>
</node>
</node>
</map>
