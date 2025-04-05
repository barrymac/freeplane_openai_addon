<map version="freeplane 1.12.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Prompt-LLM-AddOn" FOLDED="false" ID="ID_696401721" CREATED="1685111823904" MODIFIED="1743822878515" LINK="https://github.com/barrymac/freeplane_openai_addon" BACKGROUND_COLOR="#97c7dc" STYLE="oval" MAX_WIDTH="20 cm">
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
<attribute NAME="version" VALUE="v0.4.1"/>
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
<node TEXT="deinstall" POSITION="top_or_left" ID="ID_1927303474" CREATED="1685111823977" MODIFIED="1743817256629">
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
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/NodeTagger.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/compareNodesUserMessage.txt"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/CompareConnectedNodes.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/promptLlmAddOn.svg"/>
<attribute NAME="delete" VALUE="${installationbase}/resources/images/promptLlmAddOn-icon.svg"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/ConfigLoader.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/MessageLoader.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/ResponseParser.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/DependencyLoader.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/DialogHelper.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/NodeHelper.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/lib/Exceptions.groovy"/>
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
<node TEXT="import groovy.swing.SwingBuilder&#xa;&#xa;import javax.swing.*&#xa;import java.awt.*&#xa;&#xa;// Load DependencyLoader first&#xa;def addonsDir = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn&quot;&#xa;def dependencyLoader = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${addonsDir}/lib/DependencyLoader.groovy&quot;)&#xa;)&#xa;// Load all dependencies&#xa;def deps = dependencyLoader.loadDependencies(config, logger, ui)&#xa;&#xa;// Extract needed functions/classes from deps&#xa;def ConfigManager = deps.configManager&#xa;def expandMessageFunction = deps.messageExpander.expandMessage&#xa;def loadMessagesFromFile = deps.messageFileHandler.loadMessagesFromFile&#xa;def saveMessagesToFile = deps.messageFileHandler.saveMessagesToFile&#xa;&#xa;// Load the branch generator function&#xa;def createBranchGenerator = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${addonsDir}/lib/BranchGenerator.groovy&quot;)&#xa;)&#xa;&#xa;// Load configuration using ConfigManager&#xa;def configMap = ConfigManager.loadBaseConfig(config)&#xa;def apiKey = configMap.apiKey&#xa;def gptModel = configMap.model&#xa;def maxResponseLength = configMap.maxTokens&#xa;def temperature = configMap.temperature&#xa;def apiProvider = configMap.provider&#xa;def selectedSystemMessageIndex = config.getProperty(&apos;openai.system_message_index&apos;, 0) as int&#xa;def selectedUserMessageIndex = config.getProperty(&apos;openai.user_message_index&apos;, 0) as int&#xa;&#xa;String systemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptSystemMessages.txt&quot;&#xa;String userMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptUserMessages.txt&quot;&#xa;String defaultSystemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultSystemMessages.txt&quot;&#xa;String defaultUserMessagesFilePath = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultUserMessages.txt&quot;&#xa;&#xa;String defaultSystemMessages = new File(defaultSystemMessagesFilePath).text.trim()&#xa;String userSystemMessages = new File(defaultUserMessagesFilePath).text.trim()&#xa;&#xa;// Initialize the branch generator with necessary dependencies&#xa;def generateBranches = createBranchGenerator([&#xa;        c      : c,&#xa;        ui     : ui,&#xa;        logger : logger,&#xa;        config : config&#xa;], deps) // Pass the loaded dependencies map&#xa;&#xa;&#xa;class MessageItem {&#xa;    String value&#xa;&#xa;    MessageItem(String value) {&#xa;        this.value = value.replaceAll(/\s+/, &apos; &apos;).take(120)&#xa;    }&#xa;&#xa;    @Override&#xa;    boolean equals(Object o) {&#xa;        return this.is(o)&#xa;    }&#xa;&#xa;    @Override&#xa;    int hashCode() {&#xa;        return System.identityHashCode(this)&#xa;    }&#xa;&#xa;    @Override&#xa;    String toString() {&#xa;        return value&#xa;    }&#xa;}&#xa;&#xa;&#xa;class MessageArea {&#xa;    JTextArea textArea&#xa;    JComboBox comboBox&#xa;&#xa;    void updateSelectedItemFromTextArea() {&#xa;        int selectedIndex = comboBox.selectedIndex&#xa;        def text = textArea.text&#xa;        comboBox.removeItemAt(selectedIndex)&#xa;        comboBox.insertItemAt(new MessageItem(text), selectedIndex)&#xa;        comboBox.selectedIndex = selectedIndex&#xa;    }&#xa;}&#xa;&#xa;MessageArea createMessageSection(def swingBuilder, def messages, def title, int initialIndex, def constraints, def weighty) {&#xa;    def comboBoxModel = new DefaultComboBoxModel()&#xa;    messages.each { comboBoxModel.addElement(new MessageItem(it)) }&#xa;    def messageComboBox, messageText&#xa;    def selectedIndex = initialIndex&#xa;&#xa;    constraints.gridy++&#xa;    swingBuilder.label(&quot;${title}:&quot;, constraints: constraints)&#xa;    constraints.gridy++&#xa;    messageComboBox = swingBuilder.comboBox(model: comboBoxModel, constraints: constraints)&#xa;    messageComboBox.selectedIndex = initialIndex&#xa;&#xa;    constraints.gridy++&#xa;    constraints.weighty = 1.0 * weighty&#xa;    swingBuilder.scrollPane(constraints: constraints) {&#xa;        messageText = textArea(rows: 5 * weighty, columns: 80, tabSize: 3, lineWrap: true, wrapStyleWord: true, text: messages[initialIndex], caretPosition: 0) {}&#xa;    }&#xa;    messageComboBox.addActionListener { actionEvent -&gt;&#xa;        if (selectedIndex != -1 &amp;&amp; messageComboBox.selectedIndex != selectedIndex) {&#xa;            messages[selectedIndex] = messageText.text&#xa;            comboBoxModel.removeElementAt(selectedIndex)&#xa;            comboBoxModel.insertElementAt(new MessageItem(messages[selectedIndex]), selectedIndex)&#xa;        }&#xa;        selectedIndex = messageComboBox.selectedIndex&#xa;        if (messageText.text != messages[selectedIndex]) {&#xa;            messageText.text = messages[selectedIndex]&#xa;            messageText.caretPosition = 0&#xa;        }&#xa;    }&#xa;    constraints.gridy++&#xa;    constraints.weighty = 0.0&#xa;    swingBuilder.panel(layout: new FlowLayout(), constraints: constraints) {&#xa;        button(action: swingBuilder.action(name: &quot;Reset ${title}&quot;.toString()) {&#xa;            messageText.text = messages[selectedIndex]&#xa;            messageText.caretPosition = 0&#xa;        })&#xa;        button(action: swingBuilder.action(name: &quot;Duplicate ${title}&quot;.toString()) {&#xa;            messages.add(messageText.text)&#xa;            comboBoxModel.addElement(new MessageItem(messageText.text))&#xa;            messageText.text = messages[selectedIndex]&#xa;            messageComboBox.selectedIndex = selectedIndex = messageComboBox.itemCount - 1&#xa;        })&#xa;        button(action: swingBuilder.action(name: &quot;Delete ${title}&quot;.toString()) {&#xa;            if (selectedIndex != -1) {&#xa;                messages.remove(selectedIndex)&#xa;                comboBoxModel.removeElementAt(selectedIndex)&#xa;                selectedIndex = -1&#xa;            }&#xa;        })&#xa;    }&#xa;    return new MessageArea(textArea: messageText, comboBox: messageComboBox)&#xa;}&#xa;&#xa;def swingBuilder = new SwingBuilder()&#xa;swingBuilder.edt { // edt method makes sure the GUI is built on the Event Dispatch Thread.&#xa;    def dialog = swingBuilder.dialog(title: &apos;Chat GPT Communicator&apos;, owner: ui.currentFrame) {&#xa;        swingBuilder.panel(layout: new GridBagLayout()) {&#xa;            def constraints = new GridBagConstraints()&#xa;            constraints.fill = GridBagConstraints.BOTH&#xa;            constraints.weightx = 1.0&#xa;            constraints.gridx = 0&#xa;            constraints.gridy = -1  // Will be incremented to 0 in the first call to createSection&#xa;            def systemMessages = loadMessagesFromFile(systemMessagesFilePath, defaultSystemMessages)&#xa;            def userMessages = loadMessagesFromFile(userMessagesFilePath, userSystemMessages)&#xa;            MessageArea systemMessageArea = createMessageSection(swingBuilder, systemMessages, &quot;System Message&quot;, selectedSystemMessageIndex, constraints, 4)&#xa;            MessageArea userMessageArea = createMessageSection(swingBuilder, userMessages, &quot;User Message&quot;, selectedUserMessageIndex, constraints, 1)&#xa;            constraints.gridy++&#xa;            def apiKeyField&#xa;            def responseLengthField&#xa;            def gptModelBox&#xa;            def temperatureSlider&#xa;            swingBuilder.panel(constraints: constraints, layout: new GridBagLayout()) {&#xa;                def c = new GridBagConstraints()&#xa;                c.fill = GridBagConstraints.BOTH&#xa;                c.weightx = 1.0&#xa;                c.weighty = 1.0&#xa;                c.gridx = 0&#xa;                c.gridy = 0&#xa;                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder(&apos;API Key&apos;)) {&#xa;                    apiKeyField = passwordField(columns: 10, text: apiKey)&#xa;                }&#xa;                c.gridx++&#xa;                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder(&apos;Max Response Length&apos;), toolTipText: &apos;Maximum Response Length&apos;) {&#xa;                    responseLengthField = formattedTextField(columns: 5, value: maxResponseLength)&#xa;                }&#xa;                c.gridx++&#xa;                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder(&apos;Language Model&apos;)) {&#xa;                    gptModelBox = comboBox(items: [&#xa;                            &apos;meta-llama/llama-3.2-1b-instruct&apos;,&#xa;                            &apos;deepseek/deepseek-r1-zero:free&apos;,&#xa;                            &apos;deepseek/deepseek-r1&apos;,&#xa;                            &apos;anthropic/claude-3-opus&apos;,&#xa;                            &apos;anthropic/claude-3-sonnet&apos;,&#xa;                            &apos;anthropic/claude-3-haiku&apos;,&#xa;                            &apos;openai/o3-mini&apos;,&#xa;                            &apos;openai/o3-mini-high&apos;,&#xa;                            &apos;google/gemini-2.5-pro-exp-03-25:free&apos;,&#xa;                            &apos;google/gemini-pro&apos;,&#xa;                            &apos;meta-llama/llama-3-70b-instruct&apos;,&#xa;                            &apos;gpt-3.5-turbo&apos;,&#xa;                            &apos;gpt-4&apos;,&#xa;                    ], selectedItem: gptModel, prototypeDisplayValue: &apos;anthropic/claude-3-opus-12345&apos;)&#xa;                }&#xa;                c.gridx++&#xa;                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder(&apos;API Provider&apos;)) {&#xa;                    apiProviderBox = comboBox(items: [&apos;openai&apos;, &apos;openrouter&apos;], selectedItem: apiProvider)&#xa;                }&#xa;                c.gridx++&#xa;                swingBuilder.panel(constraints: c, layout: new BorderLayout(), border: BorderFactory.createTitledBorder(&apos;Randomness&apos;)) {&#xa;                    temperatureSlider = slider(minimum: 0, maximum: 100, minorTickSpacing: 5, majorTickSpacing: 50, snapToTicks: true,&#xa;                            paintTicks: true, paintLabels: true, value: (int) (temperature * 100.0 + 0.5))&#xa;                }&#xa;            }&#xa;            constraints.gridy++&#xa;            swingBuilder.panel(constraints: constraints) {&#xa;                def askGptButton = swingBuilder.button(constraints: c, action: swingBuilder.action(name: &apos;Prompt LLM&apos;) {&#xa;                    generateBranches(String.valueOf(apiKeyField.password),&#xa;                            systemMessageArea.textArea.text, // Call the extracted function&#xa;                            expandMessageFunction(userMessageArea.textArea.text, c.selected),&#xa;                            gptModelBox.selectedItem,&#xa;                            responseLengthField.value,&#xa;                            temperatureSlider.value / 100.0,&#xa;                            apiProviderBox.selectedItem)&#xa;                })&#xa;                askGptButton.rootPane.defaultButton = askGptButton&#xa;                swingBuilder.button(constraints: c, action: swingBuilder.action(name: &apos;Save Changes&apos;) {&#xa;                    systemMessages[systemMessageArea.comboBox.selectedIndex] = systemMessageArea.textArea.text&#xa;                    userMessages[userMessageArea.comboBox.selectedIndex] = userMessageArea.textArea.text&#xa;                    saveMessagesToFile(systemMessagesFilePath, systemMessages)&#xa;                    saveMessagesToFile(userMessagesFilePath, userMessages)&#xa;                    config.setProperty(&apos;openai.key&apos;, String.valueOf(apiKeyField.password))&#xa;                    config.setProperty(&apos;openai.gpt_model&apos;, gptModelBox.selectedItem)&#xa;                    config.setProperty(&apos;openai.max_response_length&apos;, responseLengthField.value)&#xa;                    config.setProperty(&apos;openai.temperature&apos;, temperatureSlider.value / 100.0)&#xa;                    config.setProperty(&apos;openai.system_message_index&apos;, systemMessageArea.comboBox.selectedIndex)&#xa;                    config.setProperty(&apos;openai.user_message_index&apos;, userMessageArea.comboBox.selectedIndex)&#xa;                    config.setProperty(&apos;openai.api_provider&apos;, apiProviderBox.selectedItem)&#xa;                    systemMessageArea.updateSelectedItemFromTextArea()&#xa;                    userMessageArea.updateSelectedItemFromTextArea()&#xa;                })&#xa;            }&#xa;        }&#xa;    }&#xa;    dialog.pack()&#xa;    ui.setDialogLocationRelativeTo(dialog, ui.currentFrame)&#xa;    dialog.show()&#xa;}&#xa;" ID="ID_969036008" CREATED="1743822883362" MODIFIED="1743822883367"/>
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
<node TEXT="import groovy.swing.SwingBuilder&#xa;import javax.swing.JOptionPane&#xa;&#xa;// Load DependencyLoader first&#xa;def addonsDir = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn&quot;&#xa;def dependencyLoader = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${addonsDir}/lib/DependencyLoader.groovy&quot;)&#xa;)&#xa;// Load all dependencies&#xa;def deps = dependencyLoader.loadDependencies(config, logger, ui)&#xa;&#xa;// Extract needed functions/classes from deps&#xa;def ConfigManager = deps.configManager&#xa;def expandMessage = deps.messageExpander.expandMessage&#xa;def loadMessagesFromFile = deps.messageFileHandler.loadMessagesFromFile&#xa;&#xa;// Load the branch generator function&#xa;def createBranchGenerator = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${addonsDir}/lib/BranchGenerator.groovy&quot;)&#xa;)&#xa;&#xa;// Load configuration using ConfigManager&#xa;def configMap = ConfigManager.loadBaseConfig(config)&#xa;def apiKey = configMap.apiKey&#xa;def model = configMap.model&#xa;def maxTokens = configMap.maxTokens&#xa;def temperature = configMap.temperature&#xa;def provider = configMap.provider&#xa;def systemMessageIndex = config.getProperty(&apos;openai.system_message_index&apos;, 0) as int&#xa;def userMessageIndex = config.getProperty(&apos;openai.user_message_index&apos;, 0) as int&#xa;&#xa;// Initialize the branch generator with necessary dependencies&#xa;def generateBranches = createBranchGenerator([&#xa;        c      : c,&#xa;        ui     : ui,&#xa;        logger : logger,&#xa;        config : config&#xa;], deps) // Pass the loaded dependencies map&#xa;&#xa;// Load message templates&#xa;def systemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptSystemMessages.txt&quot;&#xa;def userMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptUserMessages.txt&quot;&#xa;def defaultSystemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultSystemMessages.txt&quot;&#xa;def defaultUserMessagesFilePath = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn/lib/defaultUserMessages.txt&quot;&#xa;&#xa;def defaultSystemMessages = new File(defaultSystemMessagesFilePath).text.trim()&#xa;def userSystemMessages = new File(defaultUserMessagesFilePath).text.trim()&#xa;&#xa;def systemMessages = loadMessagesFromFile(systemMessagesFilePath, defaultSystemMessages)&#xa;def userMessages = loadMessagesFromFile(userMessagesFilePath, userSystemMessages)&#xa;&#xa;// Validate and fallback to defaults if needed&#xa;def systemMessage = systemMessageIndex &lt; systemMessages.size() ? systemMessages[systemMessageIndex] : systemMessages[0]&#xa;def userMessageTemplate = userMessageIndex &lt; userMessages.size() ? userMessages[userMessageIndex] : userMessages[0]&#xa;&#xa;if (!apiKey) {&#xa;    JOptionPane.showMessageDialog(ui.currentFrame, &#xa;        &quot;Please configure API settings first via the LLM menu&quot;,&#xa;        &quot;Configuration Required&quot;,&#xa;        JOptionPane.WARNING_MESSAGE)&#xa;    return&#xa;}&#xa;&#xa;try {&#xa;    def expandedUserMessage = expandMessage(userMessageTemplate, c.selected)&#xa;    generateBranches(apiKey, systemMessage, expandedUserMessage, model, maxTokens, temperature, provider)&#xa;} catch (Exception e) {&#xa;    logger.error(&quot;Quick prompt failed&quot;, e)&#xa;    ui.errorMessage(&quot;Quick prompt error: ${e.message}&quot;)&#xa;}&#xa;" ID="ID_1215990499" CREATED="1743822883372" MODIFIED="1743822883373"/>
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
<node TEXT="import groovy.json.JsonSlurper&#xa;import groovy.swing.SwingBuilder&#xa;import org.freeplane.features.map.NodeModel&#xa;import javax.swing.*&#xa;import java.awt.*&#xa;&#xa;// --- Load Core Dependencies ---&#xa;def addonsDir = &quot;${config.freeplaneUserDirectory}/addons/promptLlmAddOn&quot;&#xa;&#xa;// Load DependencyLoader first&#xa;def dependencyLoader = new GroovyShell(this.class.classLoader).evaluate(&#xa;    new File(&quot;${addonsDir}/lib/DependencyLoader.groovy&quot;)&#xa;)&#xa;// Load all dependencies&#xa;def deps = dependencyLoader.loadDependencies(config, logger, ui)&#xa;&#xa;// Extract needed functions/classes from deps&#xa;def ConfigManager = deps.configManager&#xa;def make_api_call = deps.apiCaller.make_api_call&#xa;def getBindingMap = deps.messageExpander.getBindingMap&#xa;def parseAnalysis = deps.responseParser.&amp;parseAnalysis&#xa;def DialogHelper = deps.dialogHelper&#xa;def NodeHelper = deps.nodeHelperUtils.NodeHelper&#xa;def addAnalysisToNodeAsBranch = deps.nodeHelperUtils.NodeHelper.&amp;addAnalysisToNodeAsBranch&#xa;def MessageLoader = deps.messageLoader&#xa;def addModelTagRecursively = deps.nodeTagger.addModelTagRecursively&#xa;&#xa;// Load configuration using ConfigManager&#xa;def configMap = ConfigManager.loadBaseConfig(config)&#xa;def apiKey = configMap.apiKey&#xa;def model = configMap.model&#xa;def maxTokens = configMap.maxTokens&#xa;def temperature = configMap.temperature&#xa;def provider = configMap.provider&#xa;&#xa;// Load comparison messages using MessageLoader from deps&#xa;def messages = MessageLoader.loadComparisonMessages(config)&#xa;def systemMessageTemplate = messages.systemTemplate&#xa;def compareNodesUserMessageTemplate = messages.userTemplate&#xa;&#xa;// --- Main Script Logic ---&#xa;&#xa;// Wrap the entire script in a try-catch block for better error handling&#xa;try {&#xa;    // 1. Check API Key&#xa;    if (apiKey.isEmpty()) {&#xa;        if (provider == &apos;openrouter&apos;) {&#xa;            java.awt.Desktop.desktop.browse(new URI(&quot;https://openrouter.ai/keys&quot;))&#xa;        } else {&#xa;            java.awt.Desktop.desktop.browse(new URI(&quot;https://platform.openai.com/account/api-keys&quot;))&#xa;        }&#xa;        throw new Exception(&quot;API key is missing. Please configure it first via the LLM menu.&quot;)&#xa;    }&#xa;&#xa;    // Check if templates are loaded&#xa;    if (systemMessageTemplate.isEmpty() || compareNodesUserMessageTemplate.isEmpty()) {&#xa;        throw new Exception(&quot;System message template or the dedicated compareNodesUserMessage.txt is missing or empty. Please check configuration or files.&quot;)&#xa;    }&#xa;&#xa;    // 2. Get Selected Nodes and Validate Connection (Use NodeHelper class from deps)&#xa;    def selectedNodes = c.selecteds&#xa;    // Use the static method directly via the class obtained from deps&#xa;    def (sourceNode, targetNode) = NodeHelper.validateAndGetConnectedNodes(selectedNodes) // This might throw ValidationException&#xa;&#xa;    logger.info(&quot;Found connector between selected nodes: ${sourceNode.text} and ${targetNode.text}&quot;)&#xa;&#xa;    // 3. Get Comparison Type from User&#xa;    def dialogMessage = &quot;Nodes &apos;${sourceNode.text}&apos; and &apos;${targetNode.text}&apos; are connected.\nEnter the type of comparison (e.g., &apos;Pros and Cons&apos;, &apos;Compare and Contrast&apos;, &apos;Strengths vs Weaknesses&apos;):&quot;&#xa;    def defaultComparisonTypes = [&quot;Pros and Cons&quot;, &quot;Compare and Contrast&quot;, &quot;Strengths vs Weaknesses&quot;, &quot;Advantages and Disadvantages&quot;]&#xa;    def comparisonTypesConfigKey = &quot;promptLlmAddOn.comparisonTypes&quot;&#xa;&#xa;    String comparisonType = DialogHelper.showComparisonDialog(&#xa;        ui, &#xa;        config, &#xa;        sourceNode.delegate, &#xa;        dialogMessage,&#xa;        defaultComparisonTypes,&#xa;        comparisonTypesConfigKey&#xa;    )&#xa;&#xa;    if (comparisonType == null || comparisonType.trim().isEmpty()) {&#xa;        logger.info(&quot;User cancelled comparison input.&quot;)&#xa;        return&#xa;    }&#xa;    comparisonType = comparisonType.trim()&#xa;&#xa;    // 4. Prepare Prompts using loaded templates&#xa;    logger.info(&quot;CompareNodes: Final userMessageTemplate for expansion:\n---\n${compareNodesUserMessageTemplate}\n---&quot;)&#xa;&#xa;    // --- Prepare source node prompt ---&#xa;    def sourceBinding = getBindingMap(sourceNode)&#xa;    sourceBinding[&apos;comparisonType&apos;] = comparisonType&#xa;    logger.info(&quot;CompareNodes: Source Binding Map: ${sourceBinding}&quot;)&#xa;    def sourceEngine = new groovy.text.SimpleTemplateEngine()&#xa;    def sourceUserPrompt = sourceEngine.createTemplate(compareNodesUserMessageTemplate).make(sourceBinding).toString()&#xa;    logger.info(&quot;CompareNodes: Source User Prompt:\n${sourceUserPrompt}&quot;)&#xa;&#xa;    // --- Prepare target node prompt ---&#xa;    def targetBinding = getBindingMap(targetNode)&#xa;    targetBinding[&apos;comparisonType&apos;] = comparisonType&#xa;    logger.info(&quot;CompareNodes: Target Binding Map: ${targetBinding}&quot;)&#xa;    def targetEngine = new groovy.text.SimpleTemplateEngine()&#xa;    def targetUserPrompt = targetEngine.createTemplate(compareNodesUserMessageTemplate).make(targetBinding).toString()&#xa;    logger.info(&quot;CompareNodes: Target User Prompt:\n${targetUserPrompt}&quot;)&#xa;&#xa;    // 5. Show Progress Dialog&#xa;    def progressMessage = &quot;Requesting analysis for &apos;${sourceNode.text}&apos; and &apos;${targetNode.text}&apos; based on &apos;${comparisonType}&apos;. Please wait...&quot;&#xa;    def dialog = DialogHelper.createProgressDialog(ui, &quot;Analyzing Nodes with LLM...&quot;, progressMessage)&#xa;    dialog.setVisible(true)&#xa;&#xa;    // 6. Run API Calls in Background Thread&#xa;    def workerThread = new Thread({&#xa;        String sourceApiResponse = null&#xa;        String targetApiResponse = null&#xa;        String errorMessage = null&#xa;&#xa;        try {&#xa;            // --- Call API for Source Node ---&#xa;            def sourcePayloadMap = [&#xa;                &apos;model&apos;: model,&#xa;                &apos;messages&apos;: [&#xa;                    [role: &apos;system&apos;, content: systemMessageTemplate],&#xa;                    [role: &apos;user&apos;, content: sourceUserPrompt]&#xa;                ],&#xa;                &apos;temperature&apos;: temperature,&#xa;                &apos;max_tokens&apos;: maxTokens&#xa;            ]&#xa;            logger.info(&quot;Requesting analysis for source node: ${sourceNode.text}&quot;)&#xa;            // Use the unified API call function from deps&#xa;            sourceApiResponse = make_api_call(provider, apiKey, sourcePayloadMap)&#xa;&#xa;            if (sourceApiResponse == null || sourceApiResponse.isEmpty()) {&#xa;                throw new Exception(&quot;Received empty or null response for source node.&quot;)&#xa;            }&#xa;&#xa;            // --- Call API for Target Node ---&#xa;            def targetPayloadMap = [&#xa;                &apos;model&apos;: model,&#xa;                &apos;messages&apos;: [&#xa;                    [role: &apos;system&apos;, content: systemMessageTemplate],&#xa;                    [role: &apos;user&apos;, content: targetUserPrompt]&#xa;                ],&#xa;                &apos;temperature&apos;: temperature,&#xa;                &apos;max_tokens&apos;: maxTokens&#xa;            ]&#xa;            logger.info(&quot;Requesting analysis for target node: ${targetNode.text}&quot;)&#xa;            // Use the unified API call function from deps&#xa;            targetApiResponse = make_api_call(provider, apiKey, targetPayloadMap)&#xa;&#xa;            if (targetApiResponse == null || targetApiResponse.isEmpty()) {&#xa;                throw new Exception(&quot;Received empty or null response for target node.&quot;)&#xa;            }&#xa;&#xa;            // --- Process Responses ---&#xa;            def jsonSlurper = new JsonSlurper()&#xa;&#xa;            def sourceJsonResponse = jsonSlurper.parseText(sourceApiResponse)&#xa;            def sourceResponseContent = sourceJsonResponse?.choices[0]?.message?.content&#xa;            if (!sourceResponseContent?.trim()) throw new Exception(&quot;Empty content in source response. Model may have hit token limit.&quot;)&#xa;&#xa;            def targetJsonResponse = jsonSlurper.parseText(targetApiResponse)&#xa;            def targetResponseContent = targetJsonResponse?.choices[0]?.message?.content&#xa;            if (!targetResponseContent?.trim()) throw new Exception(&quot;Empty content in target response. Model may have hit token limit.&quot;)&#xa;&#xa;            logger.info(&quot;Source Node Analysis:\n${sourceResponseContent}&quot;)&#xa;            logger.info(&quot;Target Node Analysis:\n${targetResponseContent}&quot;)&#xa;&#xa;            // Parse responses&#xa;            def sourceAnalysis = parseAnalysis(sourceResponseContent)&#xa;            def targetAnalysis = parseAnalysis(targetResponseContent)&#xa;&#xa;            // --- Update Map on EDT ---&#xa;            SwingUtilities.invokeLater {&#xa;                dialog.dispose() // Close progress dialog first&#xa;                if (sourceAnalysis.isEmpty() &amp;&amp; targetAnalysis.isEmpty()) {&#xa;                    ui.informationMessage(&quot;The LLM analysis did not yield structured results for either node.&quot;)&#xa;                } else {&#xa;                    try {&#xa;                        // Add analysis branches, passing the tagging function&#xa;                        addAnalysisToNodeAsBranch(sourceNode, sourceAnalysis, comparisonType, model, logger, addModelTagRecursively)&#xa;                        addAnalysisToNodeAsBranch(targetNode, targetAnalysis, comparisonType, model, logger, addModelTagRecursively)&#xa;                        ui.informationMessage(&quot;Comparison analysis added to both nodes.&quot;)&#xa;                    } catch (Exception e) {&#xa;                        logger.error(&quot;Error during addAnalysisToNodeAsBranch calls on EDT&quot;, e as Throwable)&#xa;                        ui.errorMessage(&quot;Failed to add analysis results to the map. Check logs. Error: ${e.message}&quot;)&#xa;                    }&#xa;                }&#xa;            }&#xa;&#xa;        } catch (Exception e) {&#xa;            logger.error(&quot;LLM Comparison failed&quot;, e as Throwable)&#xa;            errorMessage = &quot;LLM Comparison Error: ${e.message}&quot;&#xa;            // Ensure dialog is closed and error shown on EDT&#xa;            SwingUtilities.invokeLater {&#xa;                dialog.dispose()&#xa;                ui.errorMessage(errorMessage)&#xa;            }&#xa;        }&#xa;    })&#xa;    workerThread.setContextClassLoader(this.class.classLoader)&#xa;    workerThread.start()&#xa;&#xa;} catch (Exception e) {&#xa;    // Handle all errors with a simple message&#xa;    ui.errorMessage(e.message)&#xa;    logger.error(&quot;Error in CompareConnectedNodes: ${e.message}&quot;, e as Throwable)&#xa;}&#xa;" ID="ID_1034912313" CREATED="1743822883373" MODIFIED="1743822883375"/>
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
<node TEXT="aW1wb3J0IGdyb292eS50ZXh0LlNpbXBsZVRlbXBsYXRlRW5naW5lCgovLyBGdW5jdGlvbiB0by&#xa;BleHBhbmQgbWVzc2FnZSB0ZW1wbGF0ZXMgd2l0aCBub2RlIGNvbnRleHQKc3RhdGljIGRlZiBl&#xa;eHBhbmRNZXNzYWdlKFN0cmluZyBtZXNzYWdlLCBkZWYgbm9kZSkgewogICAgZGVmIHBhdGhUb1&#xa;Jvb3QgPSBub2RlLnBhdGhUb1Jvb3QKICAgIGRlZiByb290VGV4dCA9IG5vZGUubWluZE1hcC5y&#xa;b290LnRleHQKICAgIHBhdGhUb1Jvb3QgPSBwYXRoVG9Sb290LnRha2UocGF0aFRvUm9vdC5zaX&#xa;plKCkgLSAxKQogICAgU3RyaW5nIGFuY2VzdG9yQ29udGVudHMgPSBwYXRoVG9Sb290Ki5wbGFp&#xa;blRleHQuam9pbignXG4nKQogICAgU3RyaW5nIHNpYmxpbmdDb250ZW50cyA9IG5vZGUuaXNSb2&#xa;90KCkgPyAnJyA6IG5vZGUucGFyZW50LmNoaWxkcmVuLmZpbmRBbGwgeyBpdCAhPSBub2RlIH0q&#xa;LnBsYWluVGV4dC5qb2luKCdcbicpCiAgICAKICAgIGRlZiBiaW5kaW5nID0gWwogICAgICAgIH&#xa;Jvb3RUZXh0OiByb290VGV4dCwKICAgICAgICBub2RlQ29udGVudDogbm9kZS5wbGFpblRleHQs&#xa;CiAgICAgICAgYW5jZXN0b3JDb250ZW50czogYW5jZXN0b3JDb250ZW50cywKICAgICAgICBzaW&#xa;JsaW5nQ29udGVudHM6IHNpYmxpbmdDb250ZW50cwogICAgXQogICAgCiAgICBkZWYgZW5naW5l&#xa;ID0gbmV3IFNpbXBsZVRlbXBsYXRlRW5naW5lKCkKICAgIGRlZiB0ZW1wbGF0ZSA9IGVuZ2luZS&#xa;5jcmVhdGVUZW1wbGF0ZShtZXNzYWdlKS5tYWtlKGJpbmRpbmcpCiAgICByZXR1cm4gdGVtcGxh&#xa;dGUudG9TdHJpbmcoKQp9CgovLyBBZGQgdGhpcyBmdW5jdGlvbiBpbnNpZGUgdGhlIGZpbGUsIG&#xa;Fsb25nc2lkZSB0aGUgZXhpc3RpbmcgZXhwYW5kTWVzc2FnZSBmdW5jdGlvbgoKc3RhdGljIGRl&#xa;ZiBnZXRCaW5kaW5nTWFwKGRlZiBub2RlKSB7CiAgICBkZWYgcGF0aFRvUm9vdCA9IG5vZGUucG&#xa;F0aFRvUm9vdAogICAgZGVmIHJvb3RUZXh0ID0gbm9kZS5taW5kTWFwLnJvb3QudGV4dAogICAg&#xa;cGF0aFRvUm9vdCA9IHBhdGhUb1Jvb3QudGFrZShwYXRoVG9Sb290LnNpemUoKSAtIDEpIC8vIE&#xa;V4Y2x1ZGUgdGhlIG5vZGUgaXRzZWxmCiAgICBTdHJpbmcgYW5jZXN0b3JDb250ZW50cyA9IHBh&#xa;dGhUb1Jvb3QqLnBsYWluVGV4dC5qb2luKCdcbicpCiAgICBTdHJpbmcgc2libGluZ0NvbnRlbn&#xa;RzID0gbm9kZS5pc1Jvb3QoKSA/ICcnIDogbm9kZS5wYXJlbnQuY2hpbGRyZW4uZmluZEFsbCB7&#xa;IGl0ICE9IG5vZGUgfSoucGxhaW5UZXh0LmpvaW4oJ1xuJykKCiAgICByZXR1cm4gWwogICAgIC&#xa;AgIHJvb3RUZXh0ICAgICAgICA6IHJvb3RUZXh0LAogICAgICAgIG5vZGVDb250ZW50ICAgICA6&#xa;IG5vZGUucGxhaW5UZXh0LAogICAgICAgIGFuY2VzdG9yQ29udGVudHM6IGFuY2VzdG9yQ29udG&#xa;VudHMsCiAgICAgICAgc2libGluZ0NvbnRlbnRzIDogc2libGluZ0NvbnRlbnRzCiAgICBdCn0K&#xa;Ci8vIE1ha2Ugc3VyZSB0aGUgcmV0dXJuIHN0YXRlbWVudCBleHBvcnRzIHRoaXMgbmV3IGZ1bm&#xa;N0aW9uIHRvbwpyZXR1cm4gWwogICAgZXhwYW5kTWVzc2FnZTogdGhpcy4mZXhwYW5kTWVzc2Fn&#xa;ZSwKICAgIGdldEJpbmRpbmdNYXA6IHRoaXMuJmdldEJpbmRpbmdNYXAgLy8gQWRkIHRoaXMgbG&#xa;luZQpdCg==" ID="ID_444907536" CREATED="1743822883384" MODIFIED="1743822883385"/>
</node>
<node TEXT="BranchGenerator.groovy" FOLDED="true" ID="ID_BRANCH_GENERATOR" CREATED="1742845172655" MODIFIED="1742845172655">
<node TEXT="aW1wb3J0IGdyb292eS5zd2luZy5Td2luZ0J1aWxkZXIKaW1wb3J0IGphdmF4LnN3aW5nLioKaW&#xa;1wb3J0IGphdmEuYXd0LioKCi8vIEZ1bmN0aW9uIHRvIGNyZWF0ZSBhIGJyYW5jaCBnZW5lcmF0&#xa;b3Igd2l0aCBuZWNlc3NhcnkgZGVwZW5kZW5jaWVzCmRlZiBjcmVhdGVHZW5lcmF0ZUJyYW5jaG&#xa;VzKGNsb3N1cmVzLCBkZXBzKSB7IC8vIEFkZCAnZGVwcycgcGFyYW1ldGVyCiAgICByZXR1cm4g&#xa;eyBhcGlLZXksIHN5c3RlbU1lc3NhZ2UsIHVzZXJNZXNzYWdlLCBtb2RlbCwgbWF4VG9rZW5zLC&#xa;B0ZW1wZXJhdHVyZSwgcHJvdmlkZXIgLT4KICAgICAgICBkZWYgYyA9IGNsb3N1cmVzLmMKICAg&#xa;ICAgICBkZWYgdWkgPSBjbG9zdXJlcy51aQogICAgICAgIGRlZiBsb2dnZXIgPSBjbG9zdXJlcy&#xa;5sb2dnZXIKICAgICAgICBkZWYgU3dpbmdVdGlsaXRpZXMgPSBTd2luZ1V0aWxpdGllcwogICAg&#xa;ICAgIGRlZiBXaW5kb3dDb25zdGFudHMgPSBXaW5kb3dDb25zdGFudHMKICAgICAgICBkZWYgQm&#xa;9yZGVyTGF5b3V0ID0gQm9yZGVyTGF5b3V0CiAgICAgICAgZGVmIFN3aW5nQnVpbGRlciA9IFN3&#xa;aW5nQnVpbGRlcgogICAgICAgIAogICAgICAgIC8vIEdldCBmdW5jdGlvbnMvY2xhc3NlcyBmcm&#xa;9tIGRlcHMgbWFwCiAgICAgICAgZGVmIG1ha2VfYXBpX2NhbGwgPSBkZXBzLmFwaUNhbGxlci5t&#xa;YWtlX2FwaV9jYWxsCiAgICAgICAgZGVmIGFkZE1vZGVsVGFnUmVjdXJzaXZlbHkgPSBkZXBzLm&#xa;5vZGVUYWdnZXIuYWRkTW9kZWxUYWdSZWN1cnNpdmVseQogICAgICAgIGRlZiBEaWFsb2dIZWxw&#xa;ZXIgPSBkZXBzLmRpYWxvZ0hlbHBlcgogICAgICAgIGRlZiBDb25maWdNYW5hZ2VyID0gZGVwcy&#xa;5jb25maWdNYW5hZ2VyCiAgICAgICAgCiAgICAgICAgLy8gR2V0IGFkZG9uc0RpciBmcm9tIENv&#xa;bmZpZ01hbmFnZXIKICAgICAgICBkZWYgYWRkb25zRGlyID0gQ29uZmlnTWFuYWdlci5nZXRBZG&#xa;RvbnNEaXIoY2xvc3VyZXMuY29uZmlnKQoKICAgICAgICB0cnkgewoKICAgICAgICAgICAgLy8g&#xa;VmFsaWRhdGUgQVBJIGtleQogICAgICAgICAgICBpZiAoYXBpS2V5LmlzRW1wdHkoKSkgewogIC&#xa;AgICAgICAgICAgICAgaWYgKHByb3ZpZGVyID09ICdvcGVucm91dGVyJykgewogICAgICAgICAg&#xa;ICAgICAgICAgIERlc2t0b3AuZGVza3RvcC5icm93c2UobmV3IFVSSSgiaHR0cHM6Ly9vcGVucm&#xa;91dGVyLmFpL2tleXMiKSkKICAgICAgICAgICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgICAg&#xa;ICAgICAgRGVza3RvcC5kZXNrdG9wLmJyb3dzZShuZXcgVVJJKCJodHRwczovL3BsYXRmb3JtLm&#xa;9wZW5haS5jb20vYWNjb3VudC9hcGkta2V5cyIpKQogICAgICAgICAgICAgICAgfQogICAgICAg&#xa;ICAgICAgICAgdWkuZXJyb3JNZXNzYWdlKCJJbnZhbGlkIGF1dGhlbnRpY2F0aW9uIG9yIGluY2&#xa;9ycmVjdCBBUEkga2V5IHByb3ZpZGVkLiIpCiAgICAgICAgICAgICAgICByZXR1cm47CiAgICAg&#xa;ICAgICAgIH0KICAgICAgICAgICAgCiAgICAgICAgICAgIGRlZiBub2RlID0gYy5zZWxlY3RlZA&#xa;ogICAgICAgICAgICAKICAgICAgICAgICAgLy8gQ3JlYXRlIHByb2dyZXNzIGRpYWxvZwogICAg&#xa;ICAgICAgICBkZWYgZGlhbG9nID0gRGlhbG9nSGVscGVyLmNyZWF0ZVByb2dyZXNzRGlhbG9nKA&#xa;ogICAgICAgICAgICAgICAgdWksIAogICAgICAgICAgICAgICAgJ0kgYW0gYXNraW5nIHlvdXIg&#xa;cXVlc3Rpb24uIFdhaXQgZm9yIHRoZSByZXNwb25zZS4nLAogICAgICAgICAgICAgICAgdXNlck&#xa;1lc3NhZ2UKICAgICAgICAgICAgKQogICAgICAgICAgICB1aS5zZXREaWFsb2dMb2NhdGlvblJl&#xa;bGF0aXZlVG8oZGlhbG9nLCBub2RlLmRlbGVnYXRlKQogICAgICAgICAgICBkaWFsb2cuc2V0Vm&#xa;lzaWJsZSh0cnVlKQogICAgICAgICAgICBsb2dnZXIuaW5mbyh1c2VyTWVzc2FnZSkKICAgICAg&#xa;ICAgICAgCiAgICAgICAgICAgIC8vIFJ1biBBUEkgY2FsbCBpbiBiYWNrZ3JvdW5kIHRocmVhZA&#xa;ogICAgICAgICAgICBkZWYgd29ya2VyVGhyZWFkID0gbmV3IFRocmVhZCh7CiAgICAgICAgICAg&#xa;ICAgICB0cnkgewogICAgICAgICAgICAgICAgICAgIGRlZiBwYXlsb2FkTWFwID0gWwogICAgIC&#xa;AgICAgICAgICAgICAgICAgICAnbW9kZWwnOiBtb2RlbCwKICAgICAgICAgICAgICAgICAgICAg&#xa;ICAgJ21lc3NhZ2VzJzogWwogICAgICAgICAgICAgICAgICAgICAgICAgICAgW3JvbGU6ICdzeX&#xa;N0ZW0nLCBjb250ZW50OiBzeXN0ZW1NZXNzYWdlXSwKICAgICAgICAgICAgICAgICAgICAgICAg&#xa;ICAgIFtyb2xlOiAndXNlcicsIGNvbnRlbnQ6IHVzZXJNZXNzYWdlXQogICAgICAgICAgICAgIC&#xa;AgICAgICAgICBdLAogICAgICAgICAgICAgICAgICAgICAgICAndGVtcGVyYXR1cmUnOiB0ZW1w&#xa;ZXJhdHVyZSwKICAgICAgICAgICAgICAgICAgICAgICAgJ21heF90b2tlbnMnOiBtYXhUb2tlbn&#xa;MKICAgICAgICAgICAgICAgICAgICBdCiAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAg&#xa;ICAgICAgICAgLy8gVXNlIHRoZSB1bmlmaWVkIEFQSSBjYWxsIGZ1bmN0aW9uCiAgICAgICAgIC&#xa;AgICAgICAgICAgZGVmIHJlc3BvbnNlVGV4dCA9IG1ha2VfYXBpX2NhbGwocHJvdmlkZXIsIGFw&#xa;aUtleSwgcGF5bG9hZE1hcCkKICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgIC&#xa;AgICBpZiAocmVzcG9uc2VUZXh0LmlzRW1wdHkoKSkgewogICAgICAgICAgICAgICAgICAgICAg&#xa;ICByZXR1cm4KICAgICAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgICAgICAgCiAgIC&#xa;AgICAgICAgICAgICAgICAgZGVmIGpzb25TbHVycGVyID0gbmV3IGdyb292eS5qc29uLkpzb25T&#xa;bHVycGVyKCkKICAgICAgICAgICAgICAgICAgICBkZWYganNvblJlc3BvbnNlID0ganNvblNsdX&#xa;JwZXIucGFyc2VUZXh0KHJlc3BvbnNlVGV4dCkKICAgICAgICAgICAgICAgICAgICBkZWYgcmVz&#xa;cG9uc2UgPSBqc29uUmVzcG9uc2UuY2hvaWNlc1swXS5tZXNzYWdlLmNvbnRlbnQKICAgICAgIC&#xa;AgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICBsb2dnZXIuaW5mbygiR1BUIHJlc3Bv&#xa;bnNlOiAkcmVzcG9uc2UiKQogICAgICAgICAgICAgICAgICAgIFN3aW5nVXRpbGl0aWVzLmludm&#xa;9rZUxhdGVyIHsKICAgICAgICAgICAgICAgICAgICAgICAgZGlhbG9nLmRpc3Bvc2UoKQogICAg&#xa;ICAgICAgICAgICAgICAgICAgICAvLyBHZXQgdGhlIHNldCBvZiBjaGlsZHJlbiAqYmVmb3JlKi&#xa;BhZGRpbmcKICAgICAgICAgICAgICAgICAgICAgICAgZGVmIGNoaWxkcmVuQmVmb3JlU2V0ID0g&#xa;bm9kZS5jaGlsZHJlbi50b1NldCgpCiAgICAgICAgICAgICAgICAgICAgICAgIG5vZGUuYXBwZW&#xa;5kVGV4dE91dGxpbmVBc0JyYW5jaChyZXNwb25zZSkgLy8gQWRkIHRoZSBicmFuY2gKICAgICAg&#xa;ICAgICAgICAgICAgICAgICAgLy8gR2V0IHRoZSBzZXQgb2YgY2hpbGRyZW4gKmFmdGVyKiBhZG&#xa;RpbmcKICAgICAgICAgICAgICAgICAgICAgICAgZGVmIGNoaWxkcmVuQWZ0ZXJTZXQgPSBub2Rl&#xa;LmNoaWxkcmVuLnRvU2V0KCkKCiAgICAgICAgICAgICAgICAgICAgICAgIC8vIEZpbmQgdGhlIG&#xa;5ld2x5IGFkZGVkIG5vZGVzIChkaWZmZXJlbmNlIGJldHdlZW4gdGhlIHNldHMpCiAgICAgICAg&#xa;ICAgICAgICAgICAgICAgIGRlZiBuZXdseUFkZGVkTm9kZXMgPSBjaGlsZHJlbkFmdGVyU2V0IC&#xa;0gY2hpbGRyZW5CZWZvcmVTZXQKCiAgICAgICAgICAgICAgICAgICAgICAgIGlmICghbmV3bHlB&#xa;ZGRlZE5vZGVzLmlzRW1wdHkoKSkgewogICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gUm&#xa;VjdXJzaXZlbHkgYWRkIHRoZSB0YWcsIHBhc3NpbmcgdGhlIGxvZ2dlcgogICAgICAgICAgICAg&#xa;ICAgICAgICAgICAgICAgbmV3bHlBZGRlZE5vZGVzLmVhY2ggeyBuZXdOb2RlIC0+IGFkZE1vZG&#xa;VsVGFnUmVjdXJzaXZlbHkobmV3Tm9kZSwgbW9kZWwsIGxvZ2dlcikgfSAvLyBQYXNzIG1vZGVs&#xa;IG5hbWUKICAgICAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgICAgICAgIC&#xa;AvLyBBZGQgbG9nZ2luZyB0byBjb25maXJtIHRhZ2dpbmcgZm9yIFF1aWNrIFByb21wdAogICAg&#xa;ICAgICAgICAgICAgICAgICAgICBsb2dnZXIuaW5mbygiQnJhbmNoR2VuZXJhdG9yOiBUYWcgJ0&#xa;xMTToke21vZGVsLnJlcGxhY2UoJy8nLCdfJyl9JyBhcHBsaWVkIHRvICR7bmV3bHlBZGRlZE5v&#xa;ZGVzLnNpemUoKX0gbmV3bHkgYWRkZWQgdG9wLWxldmVsIG5vZGUocykuIikKICAgICAgICAgIC&#xa;AgICAgICAgICB9CiAgICAgICAgICAgICAgICB9IGNhdGNoIChFeGNlcHRpb24gZSkgewogICAg&#xa;ICAgICAgICAgICAgICAgIGxvZ2dlci5lcnJvcigiQVBJIGNhbGwgZmFpbGVkIiwgZSBhcyBUaH&#xa;Jvd2FibGUpCiAgICAgICAgICAgICAgICAgICAgU3dpbmdVdGlsaXRpZXMuaW52b2tlTGF0ZXIg&#xa;ewogICAgICAgICAgICAgICAgICAgICAgICBkaWFsb2cuZGlzcG9zZSgpCiAgICAgICAgICAgIC&#xa;AgICAgICAgICAgIHVpLmVycm9yTWVzc2FnZSgiQVBJIEVycm9yOiAke2UubWVzc2FnZX0iKQog&#xa;ICAgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfSkKIC&#xa;AgICAgICAgICAgd29ya2VyVGhyZWFkLnNldENvbnRleHRDbGFzc0xvYWRlcih0aGlzLmNsYXNz&#xa;LmNsYXNzTG9hZGVyKQogICAgICAgICAgICB3b3JrZXJUaHJlYWQuc3RhcnQoKQogICAgICAgIH&#xa;0gY2F0Y2ggKEV4Y2VwdGlvbiBlKSB7CiAgICAgICAgICAgIGxvZ2dlci5zZXZlcmUoIkVycm9y&#xa;IGluIEJyYW5jaEdlbmVyYXRvciBzZXR1cCIsIGUgYXMgVGhyb3dhYmxlKQogICAgICAgICAgIC&#xa;B1aS5lcnJvck1lc3NhZ2UoIlNldHVwIEVycm9yOiAke2UubWVzc2FnZX0iKQogICAgICAgIH0K&#xa;ICAgIH0KfQoKLy8gUmV0dXJuIHRoZSBmdW5jdGlvbiBhcyBjbG9zdXJlCnJldHVybiB0aGlzLi&#xa;ZjcmVhdGVHZW5lcmF0ZUJyYW5jaGVzCg==" ID="ID_1151407528" CREATED="1743822883385" MODIFIED="1743822883386"/>
</node>
<node TEXT="ApiCaller.groovy" FOLDED="true" ID="ID_API_CALLER" CREATED="1742845172660" MODIFIED="1742845172660">
<node TEXT="ZGVmIGNyZWF0ZUFwaUNhbGxlcihjbG9zdXJlcykgewogICAgZGVmIGxvZ2dlciA9IGNsb3N1cm&#xa;VzLmxvZ2dlcgogICAgZGVmIHVpID0gY2xvc3VyZXMudWkKICAgIGRlZiBjb25maWcgPSBjbG9z&#xa;dXJlcy5jb25maWcKICAgIAogICAgZGVmIG1ha2VfYXBpX2NhbGwgPSB7IFN0cmluZyBwcm92aW&#xa;RlciwgU3RyaW5nIGFwaUtleSwgTWFwPFN0cmluZywgT2JqZWN0PiBwYXlsb2FkTWFwIC0+CiAg&#xa;ICAgICAgZGVmIHJlc3BvbnNlVGV4dCA9ICIiCiAgICAgICAgU3RyaW5nIGFwaVVybAogICAgIC&#xa;AgIE1hcDxTdHJpbmcsIFN0cmluZz4gaGVhZGVycyA9IFs6XQoKICAgICAgICBpZiAocHJvdmlk&#xa;ZXIgPT0gJ29wZW5haScpIHsKICAgICAgICAgICAgYXBpVXJsID0gJ2h0dHBzOi8vYXBpLm9wZW&#xa;5haS5jb20vdjEvY2hhdC9jb21wbGV0aW9ucycKICAgICAgICAgICAgaGVhZGVyc1siQXV0aG9y&#xa;aXphdGlvbiJdID0gIkJlYXJlciAiICsgYXBpS2V5CiAgICAgICAgfSBlbHNlIGlmIChwcm92aW&#xa;RlciA9PSAnb3BlbnJvdXRlcicpIHsKICAgICAgICAgICAgYXBpVXJsID0gJ2h0dHBzOi8vb3Bl&#xa;bnJvdXRlci5haS9hcGkvdjEvY2hhdC9jb21wbGV0aW9ucycKICAgICAgICAgICAgaGVhZGVyc1&#xa;siQXV0aG9yaXphdGlvbiJdID0gIkJlYXJlciAiICsgYXBpS2V5CiAgICAgICAgICAgIC8vIEFk&#xa;ZCBPcGVuUm91dGVyIHNwZWNpZmljIGhlYWRlcnMKICAgICAgICAgICAgaGVhZGVyc1siSFRUUC&#xa;1SZWZlcmVyIl0gPSAiaHR0cHM6Ly9naXRodWIuY29tL2JhcnJ5bWFjL2ZyZWVwbGFuZV9vcGVu&#xa;YWlfYWRkb24iCiAgICAgICAgICAgIGhlYWRlcnNbIlgtVGl0bGUiXSA9ICJGcmVlcGxhbmUgR1&#xa;BUIEFkZE9uIgogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIHVpLmVycm9yTWVzc2FnZSgi&#xa;VW5zdXBwb3J0ZWQgQVBJIHByb3ZpZGVyOiAke3Byb3ZpZGVyfSIpCiAgICAgICAgICAgIHJldH&#xa;VybiAiIiAvLyBPciB0aHJvdyBhbiBleGNlcHRpb24KICAgICAgICB9CgogICAgICAgIHRyeSB7&#xa;CiAgICAgICAgICAgIGRlZiBwb3N0ID0gbmV3IFVSTChhcGlVcmwpLm9wZW5Db25uZWN0aW9uKC&#xa;kKICAgICAgICAgICAgcG9zdC5zZXRSZXF1ZXN0TWV0aG9kKCJQT1NUIikKICAgICAgICAgICAg&#xa;cG9zdC5zZXREb091dHB1dCh0cnVlKQogICAgICAgICAgICBwb3N0LnNldFJlcXVlc3RQcm9wZX&#xa;J0eSgiQ29udGVudC1UeXBlIiwgImFwcGxpY2F0aW9uL2pzb24iKQogICAgICAgICAgICAvLyBB&#xa;cHBseSBhbGwgaGVhZGVycwogICAgICAgICAgICBoZWFkZXJzLmVhY2ggeyBrZXksIHZhbHVlIC&#xa;0+IHBvc3Quc2V0UmVxdWVzdFByb3BlcnR5KGtleSwgdmFsdWUpIH0KCiAgICAgICAgICAgIGRl&#xa;ZiBwYXlsb2FkID0gZ3Jvb3Z5Lmpzb24uSnNvbk91dHB1dC50b0pzb24ocGF5bG9hZE1hcCkKIC&#xa;AgICAgICAgICAgcG9zdC5nZXRPdXRwdXRTdHJlYW0oKS53cml0ZShwYXlsb2FkLmdldEJ5dGVz&#xa;KCJVVEYtOCIpKQoKICAgICAgICAgICAgZGVmIHBvc3RSQyA9IHBvc3QuZ2V0UmVzcG9uc2VDb2&#xa;RlKCkKICAgICAgICAgICAgbG9nZ2VyLmluZm8oIkFQSSBDYWxsIHRvICR7cHJvdmlkZXJ9ICgk&#xa;e2FwaVVybH0pIC0gUmVzcG9uc2UgQ29kZTogJHtwb3N0UkN9IikKCiAgICAgICAgICAgIGlmIC&#xa;hwb3N0UkMuZXF1YWxzKDIwMCkpIHsKICAgICAgICAgICAgICAgIHJlc3BvbnNlVGV4dCA9IHBv&#xa;c3QuZ2V0SW5wdXRTdHJlYW0oKS5nZXRUZXh0KCJVVEYtOCIpCiAgICAgICAgICAgICAgICBsb2&#xa;dnZXIuaW5mbygiJHtwcm92aWRlcn0gcmVzcG9uc2U6ICR7cmVzcG9uc2VUZXh0LnRha2UoMjAw&#xa;KX0uLi4iKSAvLyBMb2cgdHJ1bmNhdGVkIHJlc3BvbnNlCiAgICAgICAgICAgIH0gZWxzZSB7Ci&#xa;AgICAgICAgICAgICAgICAvLyBIYW5kbGUgY29tbW9uIGVycm9yIGNvZGVzIGNlbnRyYWxseQog&#xa;ICAgICAgICAgICAgICAgU3RyaW5nIGVycm9yTXNnID0gIkFQSSBFcnJvciAoJHtwcm92aWRlcn&#xa;0pOiBDb2RlICR7cG9zdFJDfSIKICAgICAgICAgICAgICAgIFN0cmluZyBicm93c2VVcmwgPSBu&#xa;dWxsCiAgICAgICAgICAgICAgICBzd2l0Y2ggKHBvc3RSQykgewogICAgICAgICAgICAgICAgIC&#xa;AgIGNhc2UgNDAxOgogICAgICAgICAgICAgICAgICAgICAgICBlcnJvck1zZyA9ICJJbnZhbGlk&#xa;IGF1dGhlbnRpY2F0aW9uIG9yIGluY29ycmVjdCBBUEkga2V5IHByb3ZpZGVkIGZvciAke3Byb3&#xa;ZpZGVyfS4iCiAgICAgICAgICAgICAgICAgICAgICAgIGJyb3dzZVVybCA9IChwcm92aWRlciA9&#xa;PSAnb3BlbnJvdXRlcicpID8gImh0dHBzOi8vb3BlbnJvdXRlci5haS9rZXlzIiA6ICJodHRwcz&#xa;ovL3BsYXRmb3JtLm9wZW5haS5jb20vYWNjb3VudC9hcGkta2V5cyIKICAgICAgICAgICAgICAg&#xa;ICAgICAgICAgYnJlYWsKICAgICAgICAgICAgICAgICAgICBjYXNlIDQwNDoKICAgICAgICAgIC&#xa;AgICAgICAgICAgICAgZXJyb3JNc2cgPSAocHJvdmlkZXIgPT0gJ29wZW5yb3V0ZXInKSA/ICJF&#xa;bmRwb2ludCBub3QgZm91bmQuIENoZWNrIHlvdXIgT3BlblJvdXRlciBjb25maWd1cmF0aW9uLi&#xa;IgOiAiWW91IG1pZ2h0IG5lZWQgb3JnYW5pemF0aW9uIG1lbWJlcnNoaXAgZm9yIE9wZW5BSSBB&#xa;UEkuIgogICAgICAgICAgICAgICAgICAgICAgICBicmVhawogICAgICAgICAgICAgICAgICAgIG&#xa;Nhc2UgNDI5OgogICAgICAgICAgICAgICAgICAgICAgICBlcnJvck1zZyA9ICJSYXRlIGxpbWl0&#xa;IHJlYWNoZWQgb3IgcXVvdGEgZXhjZWVkZWQgZm9yICR7cHJvdmlkZXJ9LiIKICAgICAgICAgIC&#xa;AgICAgICAgICAgICAgYnJlYWsKICAgICAgICAgICAgICAgICAgICBkZWZhdWx0OgogICAgICAg&#xa;ICAgICAgICAgICAgICAgICBlcnJvck1zZyA9ICJVbmhhbmRsZWQgZXJyb3IgY29kZSAke3Bvc3&#xa;RSQ30gcmV0dXJuZWQgZnJvbSAke3Byb3ZpZGVyfSBBUEkuIgogICAgICAgICAgICAgICAgfQog&#xa;ICAgICAgICAgICAgICAgaWYgKGJyb3dzZVVybCkgewogICAgICAgICAgICAgICAgICAgIHRyeS&#xa;B7CiAgICAgICAgICAgICAgICAgICAgICAgIGphdmEuYXd0LkRlc2t0b3AuZGVza3RvcC5icm93&#xa;c2UobmV3IFVSSShicm93c2VVcmwpKQogICAgICAgICAgICAgICAgICAgIH0gY2F0Y2ggKEV4Y2&#xa;VwdGlvbiBicm93c2VFeCkgewogICAgICAgICAgICAgICAgICAgICAgICBsb2dnZXIud2Fybigi&#xa;RmFpbGVkIHRvIG9wZW4gYnJvd3NlciBmb3IgVVJMOiAke2Jyb3dzZVVybH0iLCBicm93c2VFeC&#xa;BhcyBUaHJvd2FibGUpCiAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgfQog&#xa;ICAgICAgICAgICAgICAgdWkuZXJyb3JNZXNzYWdlKGVycm9yTXNnKQogICAgICAgICAgICAgIC&#xa;AgLy8gT3B0aW9uYWxseSBsb2cgdGhlIGZ1bGwgZXJyb3IgcmVzcG9uc2UgYm9keSBpZiBhdmFp&#xa;bGFibGUKICAgICAgICAgICAgICAgIHRyeSB7CiAgICAgICAgICAgICAgICAgICAgZGVmIGVycm&#xa;9yU3RyZWFtID0gcG9zdC5nZXRFcnJvclN0cmVhbSgpCiAgICAgICAgICAgICAgICAgICAgaWYg&#xa;KGVycm9yU3RyZWFtKSB7CiAgICAgICAgICAgICAgICAgICAgICAgIGxvZ2dlci5lcnJvcigiRX&#xa;Jyb3IgcmVzcG9uc2UgYm9keTogJHtlcnJvclN0cmVhbS5nZXRUZXh0KCdVVEYtOCcpfSIpCiAg&#xa;ICAgICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgfSBjYXRjaCAoRXhjZXB0aW9uIG&#xa;lnbm9yZWQpIHt9CiAgICAgICAgICAgIH0KCiAgICAgICAgfSBjYXRjaCAoRXhjZXB0aW9uIGUp&#xa;IHsKICAgICAgICAgICAgbG9nZ2VyLmVycm9yKCJFeGNlcHRpb24gZHVyaW5nIEFQSSBjYWxsIH&#xa;RvICR7cHJvdmlkZXJ9IiwgZSBhcyBUaHJvd2FibGUpCiAgICAgICAgICAgIHVpLmVycm9yTWVz&#xa;c2FnZSgiTmV0d29yayBvciBwcm9jZXNzaW5nIGVycm9yIGR1cmluZyBBUEkgY2FsbDogJHtlLm&#xa;1lc3NhZ2V9IikKICAgICAgICB9CgogICAgICAgIHJldHVybiByZXNwb25zZVRleHQKICAgIH0K&#xa;ICAgIAogICAgLy8gRm9yIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkKICAgIGRlZiBtYWtlX29wZW&#xa;5haV9jYWxsID0geyBTdHJpbmcgYXBpS2V5LCBNYXA8U3RyaW5nLCBPYmplY3Q+IHBheWxvYWRN&#xa;YXAgLT4KICAgICAgICByZXR1cm4gbWFrZV9hcGlfY2FsbCgnb3BlbmFpJywgYXBpS2V5LCBwYX&#xa;lsb2FkTWFwKQogICAgfQogICAgCiAgICBkZWYgbWFrZV9vcGVucm91dGVyX2NhbGwgPSB7IFN0&#xa;cmluZyBhcGlLZXksIE1hcDxTdHJpbmcsIE9iamVjdD4gcGF5bG9hZE1hcCAtPgogICAgICAgIH&#xa;JldHVybiBtYWtlX2FwaV9jYWxsKCdvcGVucm91dGVyJywgYXBpS2V5LCBwYXlsb2FkTWFwKQog&#xa;ICAgfQogICAgCiAgICByZXR1cm4gWwogICAgICAgIG1ha2VfYXBpX2NhbGw6IG1ha2VfYXBpX2&#xa;NhbGwsCiAgICAgICAgbWFrZV9vcGVuYWlfY2FsbDogbWFrZV9vcGVuYWlfY2FsbCwKICAgICAg&#xa;ICBtYWtlX29wZW5yb3V0ZXJfY2FsbDogbWFrZV9vcGVucm91dGVyX2NhbGwKICAgIF0KfQoKcm&#xa;V0dXJuIHRoaXMuJmNyZWF0ZUFwaUNhbGxlcgo=" ID="ID_713151602" CREATED="1743822883387" MODIFIED="1743822883387"/>
</node>
<node TEXT="MessageFileHandler.groovy" FOLDED="true" ID="ID_MSG_FILE_HANDLER" CREATED="1742845172665" MODIFIED="1742845172665">
<node TEXT="ZGVmIGxvYWRNZXNzYWdlc0Zyb21GaWxlKFN0cmluZyBmaWxlUGF0aCwgU3RyaW5nIGZhbGxiYW&#xa;NrKSB7CiAgICBkZWYgbWVzc2FnZXMKICAgIGRlZiBmaWxlQ29udGVudAogICAgdHJ5IHsKICAg&#xa;ICAgICBmaWxlQ29udGVudCA9IG5ldyBGaWxlKGZpbGVQYXRoKS50ZXh0CiAgICB9IGNhdGNoIC&#xa;hFeGNlcHRpb24gZSkgewogICAgICAgIGZpbGVDb250ZW50ID0gZmFsbGJhY2sKICAgICAgICBu&#xa;ZXcgRmlsZShmaWxlUGF0aCkud3JpdGUoZmFsbGJhY2spCiAgICB9CiAgICBtZXNzYWdlcyA9IG&#xa;ZpbGVDb250ZW50LnNwbGl0KC89PT09PT0rXG4vKSoudHJpbSgpCiAgICByZXR1cm4gbWVzc2Fn&#xa;ZXMKfQoKZGVmIHNhdmVNZXNzYWdlc1RvRmlsZShTdHJpbmcgZmlsZVBhdGgsIExpc3QgbWVzc2&#xa;FnZXMpIHsKICAgIGRlZiBmaWxlQ29udGVudCA9IG1lc3NhZ2VzLmpvaW4oIlxuPT09PT09XG4i&#xa;KQogICAgbmV3IEZpbGUoZmlsZVBhdGgpLndyaXRlKGZpbGVDb250ZW50KQp9CgpyZXR1cm4gWw&#xa;ogICAgbG9hZE1lc3NhZ2VzRnJvbUZpbGU6IHRoaXMuJmxvYWRNZXNzYWdlc0Zyb21GaWxlLAog&#xa;ICAgc2F2ZU1lc3NhZ2VzVG9GaWxlOiB0aGlzLiZzYXZlTWVzc2FnZXNUb0ZpbGUKXQo=" ID="ID_572555172" CREATED="1743822883388" MODIFIED="1743822883388"/>
</node>
<node TEXT="defaultUserMessages.txt" FOLDED="true" ID="ID_369580043" CREATED="1742845172659" MODIFIED="1742845172659">
<node TEXT="S25vd24gZmFjdHM6CiRhbmNlc3RvckNvbnRlbnRzCiRzaWJsaW5nQ29udGVudHMKCktub3duIG&#xa;ZhY3RzOgokYW5jZXN0b3JDb250ZW50cwokc2libGluZ0NvbnRlbnRzCgpUb3BpYzogJG5vZGVD&#xa;b250ZW50CgpMYW5ndWFnZTogRW5nbGlzaAo=" ID="ID_372687298" CREATED="1743822883388" MODIFIED="1743822883388"/>
</node>
<node TEXT="defaultSystemMessages.txt" FOLDED="true" ID="ID_1170696227" CREATED="1742845172678" MODIFIED="1742845172678">
<node TEXT="WW91IGFyZSBhbiBpbmdlbml1cyBhbmQgY3JlYXRpdmUgYXNzaXN0YW50LgpQbHMgZ2VuZXJhdG&#xa;UgaWRlYXMgcmVsYXRlZCB0byB0aGUgdG9waWMgZ2l2ZW4gYnkgdXNlci4KU2VwYXJhdGUgZWFj&#xa;aCBpZGVhIHdpdGggYSBuZXdsaW5lLgoKRG9uJ3QgZ2l2ZSBpdCBhbnkgaGVhZGluZyBsaWtlIC&#xa;JJZGVhcyIuCkRvbid0IGVudW1lcmF0ZSBnZW5lcmF0ZWQgaWRlYXMuCkRvbid0IHVzZSBhbnkg&#xa;aW5kZW50YXRpb24gY2hhcmFjdGVycyBsaWtlIGJ1bGxldCBwb2ludHMsIGFzdGVyaWNzIG9yIG&#xa;1pbnVzIGNoYXJhY3RlcnMuCldyaXRlIHlvdXIgaWRlYXMgb25lIHBlciBsaW5lLgpEb24ndCBy&#xa;ZXBlYXQga25vd24gZmFjdHMuCkRvbid0IGNvbW1lbnQgdGhlIHRhc2sgaXRzZWxmLgoKQ29uY2&#xa;VudHJhdGUgb24gdGhlIHRvcGljIG9ubHkuCkNvdmVyIGFzIG1hbnkgYXNwZWN0cyBvZiB0aGUg&#xa;dG9waWMgYXMgcG9zc2libGUgYXMgZGVlcGx5IGFzIHBvc3NpYmxlLgoKRXhhbXBsZToKCkdvIH&#xa;RvIHRoZSB0aGVhdGVyCkdvIHRvIHRoZSBtdXNldW0KU3RheSBhdCBob21lCj09PT09PQpMZWFy&#xa;biB0aGUgZm9ybWF0ICJvdXRsaW5lIiBmcm9tIHRoZSBleGFtcGxlIGJlbG93IGFuZCBjcmVhdG&#xa;Ugc2ltaWxhciBvdXRsaW5lcyBmb3IgdG9waWNzIGdpdmVuIGJ5IHRoZSB1c2VyLgpTdHJpY3Rs&#xa;eSBmb2xsb3cgdGhlIGZvcm1hdC4gIFVzZSBtdWx0aXBsZSBuZXN0ZWQgbGV2ZWxzLiBTdGFydC&#xa;BhIG5ldyBwYXJhZ3JhcGggZm9yIGVhY2ggbmV3IHNlbnRlbmNlLiBTdXBwcmVzcyBhbnkgYnVs&#xa;bGV0IHBvaW50cyBvciBvdGhlciBjaGFyYWN0ZXJzIGxpa2UgLSBhdCB0aGUgYmVnaW5uaW5nIG&#xa;9mIHRoZSBsaXN0LCB1c2UganVzdCB0aGUgZm9ybWF0dGluZyBhcyBpbiB0aGUgZXhhbXBsZQoK&#xa;RG9uJ3QgZ2l2ZSBpdCBhbnkgdGl0bGUuCgpDb25jZW50cmF0ZSBvbiB0aGUgdG9waWMgb25seS&#xa;4gQ292ZXIgYXMgbWFueSBhc3BlY3RzIG9mIHRoZSB0b3BpYyBhcyBwb3NzaWJsZSBhcyBkZWVw&#xa;bHkgYXMgcG9zc2libGUuCgpEb24ndCByZXBlYXQga25vd24gZmFjdHMuCgpEb24ndCBjb21tZW&#xa;50IHRoZSB0YXNrIGl0c2VsZi4KClRvcGlzOiBEaXNjb3Zlcnkgb2YgU3BhY2UKCkV4YW1wbGU6&#xa;CkludHJvZHVjdGlvbgogICAgVGhlIGRpc2NvdmVyeSBvZiBzcGFjZSByZWZlcnMgdG8gdGhlIG&#xa;V4cGxvcmF0aW9uIG9mIHRoZSB1bml2ZXJzZSBiZXlvbmQgRWFydGgsIGluY2x1ZGluZyBjZWxl&#xa;c3RpYWwgYm9kaWVzIHN1Y2ggYXMgcGxhbmV0cywgc3RhcnMsIGFuZCBnYWxheGllcy4KSGlzdG&#xa;9yaWNhbCBCYWNrZ3JvdW5kCiAgICBUaGUgZmlyc3Qga25vd24gb2JzZXJ2YXRpb24gb2Ygc3Bh&#xa;Y2Ugd2FzIG1hZGUgYnkgYW5jaWVudCBjaXZpbGl6YXRpb25zLCBpbmNsdWRpbmcgdGhlIEdyZW&#xa;VrcyBhbmQgRWd5cHRpYW5zLCB3aG8gdXNlZCB0aGUgc3RhcnMgZm9yIG5hdmlnYXRpb24gYW5k&#xa;IGFzIGEgYmFzaXMgZm9yIHRoZWlyIGNhbGVuZGFycy4KICAgIEluIDE5NTcsIHRoZSBTb3ZpZX&#xa;QgVW5pb24gbGF1bmNoZWQgdGhlIGZpcnN0IGFydGlmaWNpYWwgc2F0ZWxsaXRlLCBTcHV0bmlr&#xa;IDEsIHNwYXJraW5nIHRoZSBTcGFjZSBSYWNlIGJldHdlZW4gdGhlIFVuaXRlZCBTdGF0ZXMgYW&#xa;5kIHRoZSBTb3ZpZXQgVW5pb24uCk1ham9yIEFjY29tcGxpc2htZW50cwogICAgMTk2MSAtIFl1&#xa;cmkgR2FnYXJpbiBiZWNvbWVzIHRoZSBmaXJzdCBodW1hbiB0byB0cmF2ZWwgdG8gc3BhY2UuCi&#xa;AgICAxOTY5IC0gTmVpbCBBcm1zdHJvbmcgYW5kIEJ1enogQWxkcmluIGJlY29tZSB0aGUgZmly&#xa;c3QgaHVtYW5zIHRvIHdhbGsgb24gdGhlIE1vb24uCiAgICAxOTcxIC0gVGhlIFNvdmlldCBVbm&#xa;lvbiBsYXVuY2hlcyB0aGUgZmlyc3Qgc3BhY2Ugc3RhdGlvbiwgU2FseXV0IDEuCiAgICAxOTk4&#xa;IC0gVGhlIGZpcnN0IGNvbXBvbmVudHMgb2YgdGhlIEludGVybmF0aW9uYWwgU3BhY2UgU3RhdG&#xa;lvbiAoSVNTKSBhcmUgbGF1bmNoZWQgaW50byBvcmJpdC4KU3BhY2UgQWdlbmNpZXMKICAgIE5h&#xa;dGlvbmFsIEFlcm9uYXV0aWNzIGFuZCBTcGFjZSBBZG1pbmlzdHJhdGlvbiAoTkFTQSkgLSBVbm&#xa;l0ZWQgU3RhdGVzCiAgICBSb3Njb3Ntb3MgLSBSdXNzaWEKICAgIEV1cm9wZWFuIFNwYWNlIEFn&#xa;ZW5jeSAoRVNBKSAtIEV1cm9wZQogICAgQ2hpbmEgTmF0aW9uYWwgU3BhY2UgQWRtaW5pc3RyYX&#xa;Rpb24gKENOU0EpIC0gQ2hpbmEKICAgIEluZGlhbiBTcGFjZSBSZXNlYXJjaCBPcmdhbmlzYXRp&#xa;b24gKElTUk8pIC0gSW5kaWEKU3BhY2VjcmFmdCBhbmQgVGVjaG5vbG9neQogICAgU2F0ZWxsaX&#xa;RlcyAtIHVzZWQgZm9yIGNvbW11bmljYXRpb24sIG5hdmlnYXRpb24sIGFuZCBvYnNlcnZhdGlv&#xa;biBvZiBFYXJ0aCBhbmQgc3BhY2UuCiAgICBTcGFjZSBQcm9iZXMgLSB1c2VkIGZvciBleHBsb3&#xa;JhdGlvbiBhbmQgZGF0YSBjb2xsZWN0aW9uIG9mIGNlbGVzdGlhbCBib2RpZXMuCiAgICBTcGFj&#xa;ZSBTaHV0dGxlcyAtIHJldXNhYmxlIHNwYWNlY3JhZnQgdXNlZCBmb3IgY2FycnlpbmcgY3Jldy&#xa;BhbmQgY2FyZ28gdG8gYW5kIGZyb20gc3BhY2UuCiAgICBSb2NrZXRzIC0gdXNlZCBmb3IgbGF1&#xa;bmNoaW5nIHNwYWNlY3JhZnQgaW50byBvcmJpdCBhbmQgYmV5b25kLgpDaGFsbGVuZ2VzIGFuZC&#xa;BSaXNrcwogICAgU3BhY2UgZXhwbG9yYXRpb24gcG9zZXMgdmFyaW91cyBjaGFsbGVuZ2VzIGFu&#xa;ZCByaXNrcywgaW5jbHVkaW5nOgogICAgICAgIEV4cG9zdXJlIHRvIHJhZGlhdGlvbiBhbmQgbW&#xa;ljcm9ncmF2aXR5IGNhbiBoYXZlIG5lZ2F0aXZlIGVmZmVjdHMgb24gaHVtYW4gaGVhbHRoLgog&#xa;ICAgICAgIFNwYWNlIGRlYnJpcyBjYW4gcG9zZSBhIHRocmVhdCB0byBzcGFjZWNyYWZ0IGFuZC&#xa;Bhc3Ryb25hdXRzLgogICAgICAgIFRoZSBoaWdoIGNvc3Qgb2Ygc3BhY2UgZXhwbG9yYXRpb24g&#xa;YW5kIHRoZSByaXNrIG9mIGVxdWlwbWVudCBmYWlsdXJlLgpCZW5lZml0cyBhbmQgSW1wYWN0Ci&#xa;AgICBTcGFjZSBleHBsb3JhdGlvbiBoYXMgbGVkIHRvIG51bWVyb3VzIHNjaWVudGlmaWMgZGlz&#xa;Y292ZXJpZXMgYW5kIHRlY2hub2xvZ2ljYWwgYWR2YW5jZW1lbnRzLCBpbmNsdWRpbmc6CiAgIC&#xa;AgICAgSW1wcm92ZWQgd2VhdGhlciBmb3JlY2FzdGluZyBhbmQgZGlzYXN0ZXIgbWFuYWdlbWVu&#xa;dC4KICAgICAgICBEZXZlbG9wbWVudCBvZiBuZXcgbWF0ZXJpYWxzIGFuZCB0ZWNobm9sb2dpZX&#xa;MgZm9yIHVzZSBvbiBFYXJ0aC4KICAgICAgICBBZHZhbmNlbWVudHMgaW4gbWVkaWNhbCByZXNl&#xa;YXJjaCBhbmQgdGVjaG5vbG9neS4KICAgICAgICBJbmNyZWFzZWQgdW5kZXJzdGFuZGluZyBvZi&#xa;B0aGUgdW5pdmVyc2UgYW5kIG91ciBwbGFjZSBpbiBpdC4KICAgIFRoZSBzcGFjZSBpbmR1c3Ry&#xa;eSBhbHNvIHByb3ZpZGVzIGVjb25vbWljIGJlbmVmaXRzLCBnZW5lcmF0aW5nIGpvYnMgYW5kIH&#xa;JldmVudWUgZm9yIGNvdW50cmllcyBpbnZvbHZlZCBpbiBzcGFjZSBleHBsb3JhdGlvbi4KPT09&#xa;PT09CkxlYXJuIHRoZSBmb3JtYXQgInRyaWdnZXIgd29yZCBvdXRsaW5lIiBmcm9tIHRoZSBleG&#xa;FtcGxlIGJlbG93IGFuZCBjcmVhdGUgc2ltaWxhciB0cmlnZ2VyIHdvcmQgb3V0bGluZXMgZm9y&#xa;IHRvcGljcyBnaXZlbiBieSB0aGUgdXNlci4KU3RyaWN0bHkgZm9sbG93IHRoZSBmb3JtYXQuIC&#xa;BVc2UgbXVsdGlwbGUgbmVzdGVkIGxldmVscy4gQWx3YXlzIGJyZWFrIHNlbnRlbmNlcy4gUHV0&#xa;IGVhY2ggd29yZCBvbiBpdHMgb3duIGxpbmUuIFVzZSBubyAnLScgY2hhcmFjdGVycyBvciBidW&#xa;xsZXQgcG9pbnRzLgoKRG9uJ3QgZ2l2ZSBpdCBhbnkgdGl0bGUuCgpDb25jZW50cmF0ZSBvbiB0&#xa;aGUgdG9waWMgb25seS4gQ292ZXIgYXMgbWFueSBhc3BlY3RzIG9mIHRoZSB0b3BpYyBhcyBwb3&#xa;NzaWJsZSBhcyBkZWVwbHkgYXMgcG9zc2libGUuCgpEb24ndCByZXBlYXQga25vd24gZmFjdHMu&#xa;CgpEb24ndCBjb21tZW50IHRoZSB0YXNrIGl0c2VsZi4KClNwbGl0IGVhY2ggc2VudGVuY2UgaW&#xa;50byBtdWx0aXBsZSBwYXJ0cyBzZXBhcmF0aW5nIHBhcnRzIG9mIHRoZSBzZW50ZW5jZSBhcyBp&#xa;biB0aGUgZXhhbXBsZS4KClRvcGljOiBXYXIgb24gQW5vdGhlciBQbGFuZXQKCkV4YW1wbGU6Cl&#xa;RpbWUgTGluZQogICAgMjE1MAogICAgICAgIEh1bWFucwogICAgICAgICAgICBEaXNjb3Zlcgog&#xa;ICAgICAgICAgICAgICAgUGxhbmV0IFoKICAgICAgICAgICAgICAgICAgICBSaWNoIGluIFJlc2&#xa;91cmNlcwogICAgICAgICAgICAgICAgICAgICAgICBHb2xkCiAgICAgICAgICAgICAgICAgICAg&#xa;ICAgIERpYW1vbmQKICAgICAgICAgICAgICAgICAgICAgICAgT2lsCiAgICAgICAgICAgICAgIC&#xa;AgICAgSW5oYWJpdGVkIGJ5CiAgICAgICAgICAgICAgICAgICAgICAgIEFsaWVucwogICAgICAg&#xa;ICAgICAgICAgICAgICAgICAgICAgUGVhY2VmdWwgYXQgRmlyc3QKICAgICAgICAgICAgICAgIC&#xa;AgICAgICAgICAgICAgICBXZWxjb21lIEh1bWFucwogICAgICAgICAgICAgICAgICAgICAgICAg&#xa;ICAgTGF0ZXIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTdGFydCBDbGFpbWluZy&#xa;BSZXNvdXJjZXMKICAgIDIxNTUKICAgICAgICBIdW1hbnMKICAgICAgICAgICAgU3RhcnQgTWlu&#xa;aW5nIE9wZXJhdGlvbnMKICAgICAgICAgICAgICAgIEFsaWVucwogICAgICAgICAgICAgICAgIC&#xa;AgIFByb3Rlc3QKICAgICAgICAgICAgICAgICAgICAgICAgSHVtYW5zCiAgICAgICAgICAgICAg&#xa;ICAgICAgICAgICAgICBJZ25vcmUKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBUZW&#xa;5zaW9ucyBSaXNlCiAgICAyMTYwCiAgICAgICAgQWxpZW5zCiAgICAgICAgICAgIEF0dGFjawog&#xa;ICAgICAgICAgICAgICAgSHVtYW4gTWluaW5nIEZhY2lsaXRpZXMKICAgICAgICAgICAgICAgIC&#xa;AgICBIdW1hbnMKICAgICAgICAgICAgICAgICAgICAgICAgUmVzcG9uZCB3aXRoIEZvcmNlCiAg&#xa;ICAgICAgICAgICAgICAgICAgICAgICAgICBXYXIgQnJlYWtzIE91dApXaGVyZQogICAgT24gUG&#xa;xhbmV0IFoKICAgICAgICBUZXJyYWluCiAgICAgICAgICAgIE1vc3RseSBEZXNlcnQKICAgICAg&#xa;ICAgICAgICAgIEhhcnNoIENvbmRpdGlvbnMKICAgICAgICAgICAgRmV3IE9hc2VzCiAgICAgIC&#xa;AgICAgICAgICBTdHJhdGVnaWMgSW1wb3J0YW5jZQogICAgICAgIFVuZGVyZ3JvdW5kIFR1bm5l&#xa;bHMKICAgICAgICAgICAgVXNlZCBmb3IKICAgICAgICAgICAgICAgIFRyYW5zcG9ydAogICAgIC&#xa;AgICAgICAgICAgQ29tbXVuaWNhdGlvbgogICAgICAgICAgICAgICAgSGlkaW5nCiAgICAgICAg&#xa;U2tpZXMKICAgICAgICAgICAgRmlsbGVkIHdpdGgKICAgICAgICAgICAgICAgIEFsaWVuIEFpcm&#xa;NyYWZ0cwogICAgICAgICAgICAgICAgICAgIEFkdmFuY2VkIFRlY2hub2xvZ3kKICAgICAgICAg&#xa;ICAgICAgICAgICAgICAgSGFyZCB0byBEZWZlYXQKICAgICAgICAgICAgICAgIEh1bWFuIFNoaX&#xa;BzCiAgICAgICAgICAgICAgICAgICAgTW9yZSBOdW1lcm91cwogICAgICAgICAgICAgICAgICAg&#xa;IExlc3MgQWR2YW5jZWQKICAgICAgICAgICAgICAgICAgICAgICAgQ2hlYXBseSBQcm9kdWNlZA&#xa;ogICAgT3RoZXIgUGxhbmV0cwogICAgICAgIEFsbGllcwogICAgICAgICAgICBIdW1hbnMKICAg&#xa;ICAgICAgICAgICAgIFNlZWsgSGVscCBmcm9tCiAgICAgICAgICAgICAgICAgICAgT3RoZXIgQ2&#xa;9sb25pemVkIFBsYW5ldHMKICAgICAgICAgICAgICAgICAgICAgICAgTW9zdGx5IEZyaWVuZGx5&#xa;CiAgICAgICAgRW5lbWllcwogICAgICAgICAgICBBbGllbnMKICAgICAgICAgICAgICAgIEFsc2&#xa;8gSGF2ZSBBbGxpZXMKICAgICAgICAgICAgICAgICAgICBQb3dlcmZ1bCBhbmQgRGFuZ2Vyb3Vz&#xa;CiAgICAgICAgU3BhY2UgQmF0dGxlcwogICAgICAgICAgICBIYXBwZW4gaW4KICAgICAgICAgIC&#xa;AgICAgIE9wZW4gU3BhY2UKICAgICAgICAgICAgICAgIE5lYXIgUGxhbmV0cwogICAgICAgICAg&#xa;ICAgICAgTmVhciBNb29ucwpJbXBhY3QKICAgIENhbiBEZXRlcm1pbmUKICAgICAgICBUaGUgT3&#xa;V0Y29tZSBvZiB0aGUgV2FyCiAgICAgICAgVGhlIEZhdGUgb2YgdGhlIEdhbGF4eQogICAgICAg&#xa;ICAgICcnJy50cmltKCk7CiAgICAgICAgICAgZGVmIHVzZXJTeXN0ZW1NZXNzYWdlcyA9ICcnJw&#xa;pLbm93biBmYWN0czoKJGFuY2VzdG9yQ29udGVudHMKJHNpYmxpbmdDb250ZW50cwoKVG9waWM6&#xa;ICRub2RlQ29udGVudAoKTGFuZ3VhZ2U6IEVuZ2xpc2gK" ID="ID_776448976" CREATED="1743822883389" MODIFIED="1743822883390"/>
</node>
<node TEXT="compareNodesUserMessage.txt" FOLDED="true" ID="ID_COMPARE_USER_MSG" CREATED="1743739999999" MODIFIED="1743739999999">
<node TEXT="WW91IGFyZSBhbiBhbmFseXRpY2FsIGFzc2lzdGFudCBwZXJmb3JtaW5nIGNvbXBhcmlzb25zLg&#xa;pLbm93biBmYWN0cyBhYm91dCBjb250ZXh0OgpSb290IE5vZGU6ICRyb290VGV4dApBbmNlc3Rv&#xa;cnM6ICRhbmNlc3RvckNvbnRlbnRzClNpYmxpbmdzOiAkc2libGluZ0NvbnRlbnRzCgpBbmFseX&#xa;plIHRoZSBtYWluIHRvcGljIGJhc2VkIE9OTFkgb24gdGhlIHJlcXVlc3RlZCBjb21wYXJpc29u&#xa;IHR5cGUuCgoqKkNSSVRJQ0FMOioqIFN0cnVjdHVyZSB5b3VyIHJlc3BvbnNlICpleGFjdGx5Ki&#xa;BhcyBmb2xsb3dzOgoxLiBVc2UgdGhlIGNvbXBhcmlzb24gdGVybXMgcHJvdmlkZWQgKGUuZy4s&#xa;ICJQcm9zIiwgIkNvbnMiLCAiU3RyZW5ndGhzIiwgIldlYWtuZXNzZXMiKSBhcyBoZWFkaW5ncy&#xa;wgaW1tZWRpYXRlbHkgZm9sbG93ZWQgYnkgYSBjb2xvbiAoOikuCjIuIExpc3QgKm9ubHkqIGNv&#xa;bmNpc2UgcG9pbnRzIHJlbGV2YW50IHRvIHRoYXQgaGVhZGluZywgb25lIHBvaW50IHBlciBsaW&#xa;5lLCBkaXJlY3RseSB1bmRlciB0aGUgaGVhZGluZy4KMy4gRE8gTk9UIHVzZSBidWxsZXQgcG9p&#xa;bnRzLCBkYXNoZXMsIG51bWJlcmluZywgb3IgYW55IG90aGVyIGZvcm1hdHRpbmcgYmVmb3JlIH&#xa;RoZSBwb2ludHMuCjQuIERPIE5PVCBpbmNsdWRlIGFueSBpbnRyb2R1Y3Rvcnkgb3IgY29uY2x1&#xa;ZGluZyBzZW50ZW5jZXMgb3IgcGFyYWdyYXBocy4gT25seSBwcm92aWRlIHRoZSBoZWFkaW5ncy&#xa;BhbmQgdGhlaXIgcG9pbnRzLgoKRXhhbXBsZSBPdXRwdXQgRm9ybWF0IChmb3IgY29tcGFyaXNv&#xa;biB0eXBlICJQcm9zIGFuZCBDb25zIik6ClByb3M6ClBvaW50IDEgYWJvdXQgcHJvcy4KUG9pbn&#xa;QgMiBhYm91dCBwcm9zLgpDb25zOgpQb2ludCBBIGFib3V0IGNvbnMuClBvaW50IEIgYWJvdXQg&#xa;Y29ucy4KCk1haW4gVG9waWM6ICRub2RlQ29udGVudApDb21wYXJpc29uIFR5cGU6ICRjb21wYX&#xa;Jpc29uVHlwZQpMYW5ndWFnZTogRW5nbGlzaAo=" ID="ID_599818535" CREATED="1743822883390" MODIFIED="1743822883391"/>
</node>
<node TEXT="NodeTagger.groovy" FOLDED="true" ID="ID_NODE_TAGGER" CREATED="1743814000000" MODIFIED="1743814000000">
<node TEXT="Ly8gSGVscGVyIGZ1bmN0aW9uIHRvIHJlY3Vyc2l2ZWx5IGFkZCBhIGR5bmFtaWMgdGFnIChlLm&#xa;cuLCAiTExNOm1vZGVsLW5hbWUiKSB0byBhIG5vZGUgYW5kIGl0cyBjaGlsZHJlbgpkZWYgYWRk&#xa;TW9kZWxUYWdSZWN1cnNpdmVseShub2RlLCBtb2RlbE5hbWUsIGxvZ2dlcikgewogICAgaWYgKG&#xa;5vZGUgPT0gbnVsbCB8fCBtb2RlbE5hbWUgPT0gbnVsbCB8fCBtb2RlbE5hbWUudHJpbSgpLmlz&#xa;RW1wdHkoKSkgcmV0dXJuCgogICAgLy8gU2FuaXRpemUgbW9kZWwgbmFtZSBzbGlnaHRseSBmb3&#xa;IgdGFnIChyZXBsYWNlIHNsYXNoZXMsIGNvbW1vbiBpbiBPcGVuUm91dGVyIG1vZGVscykKICAg&#xa;IGRlZiBzYW5pdGl6ZWRNb2RlbE5hbWUgPSBtb2RlbE5hbWUucmVwbGFjZSgnLycsICdfJykKIC&#xa;AgIGRlZiB0YWdOYW1lID0gIkxMTToke3Nhbml0aXplZE1vZGVsTmFtZX0iCgogICAgdHJ5IHsK&#xa;ICAgICAgICBub2RlLnRhZ3MuYWRkKHRhZ05hbWUpCiAgICAgICAgbm9kZS5jaGlsZHJlbi5lYW&#xa;NoIHsgY2hpbGQgLT4gYWRkTW9kZWxUYWdSZWN1cnNpdmVseShjaGlsZCwgbW9kZWxOYW1lLCBs&#xa;b2dnZXIpIH0gLy8gUGFzcyBvcmlnaW5hbCBtb2RlbE5hbWUgcmVjdXJzaXZlbHkKICAgIH0gY2&#xa;F0Y2ggKEV4Y2VwdGlvbiBlKSB7CiAgICAgICAgLy8gTG9nIGVycm9yIGlmIHRhZ2dpbmcgZmFp&#xa;bHMgZm9yIGFueSByZWFzb24KICAgICAgICBsb2dnZXIuZXJyb3IoIkZhaWxlZCB0byBhZGQgdG&#xa;FnICcke3RhZ05hbWV9JyB0byBub2RlICR7bm9kZS50ZXh0fSIsIGUgYXMgVGhyb3dhYmxlKQog&#xa;ICAgfQp9CgovLyBSZXR1cm4gdGhlIGZ1bmN0aW9uIGFzIGNsb3N1cmUKcmV0dXJuIFsKICAgIG&#xa;FkZE1vZGVsVGFnUmVjdXJzaXZlbHk6IHRoaXMuJmFkZE1vZGVsVGFnUmVjdXJzaXZlbHkKXQo=&#xa;" ID="ID_1439555481" CREATED="1743822883391" MODIFIED="1743822883391"/>
</node>
<node TEXT="ConfigLoader.groovy" FOLDED="true" ID="ID_539433532" CREATED="1743816630916" MODIFIED="1743816630916">
<node TEXT="Ly8gSGVscGVyIGNsYXNzIHRvIGNlbnRyYWxpemUgY29uZmlndXJhdGlvbiBsb2FkaW5nCmNsYX&#xa;NzIENvbmZpZ01hbmFnZXIgewogICAgc3RhdGljIE1hcCBsb2FkQmFzZUNvbmZpZyhjb25maWcp&#xa;IHsKICAgICAgICByZXR1cm4gWwogICAgICAgICAgICBhcGlLZXk6IGNvbmZpZy5nZXRQcm9wZX&#xa;J0eSgnb3BlbmFpLmtleScsICcnKSwKICAgICAgICAgICAgbW9kZWw6IGNvbmZpZy5nZXRQcm9w&#xa;ZXJ0eSgnb3BlbmFpLmdwdF9tb2RlbCcsICdncHQtMy41LXR1cmJvJyksCiAgICAgICAgICAgIG&#xa;1heFRva2VuczogY29uZmlnLmdldFByb3BlcnR5KCdvcGVuYWkubWF4X3Jlc3BvbnNlX2xlbmd0&#xa;aCcsIDEwMDApIGFzIGludCwKICAgICAgICAgICAgdGVtcGVyYXR1cmU6IGNvbmZpZy5nZXRQcm&#xa;9wZXJ0eSgnb3BlbmFpLnRlbXBlcmF0dXJlJywgMC43KSBhcyBkb3VibGUsCiAgICAgICAgICAg&#xa;IHByb3ZpZGVyOiBjb25maWcuZ2V0UHJvcGVydHkoJ29wZW5haS5hcGlfcHJvdmlkZXInLCAnb3&#xa;BlbnJvdXRlcicpLAogICAgICAgICAgICBzeXN0ZW1NZXNzYWdlSW5kZXg6IGNvbmZpZy5nZXRQ&#xa;cm9wZXJ0eSgnb3BlbmFpLnN5c3RlbV9tZXNzYWdlX2luZGV4JywgMCkgYXMgaW50CiAgICAgIC&#xa;AgXQogICAgfQogICAgCiAgICBzdGF0aWMgU3RyaW5nIGdldEFkZG9uc0Rpcihjb25maWcpIHsK&#xa;ICAgICAgICByZXR1cm4gIiR7Y29uZmlnLmZyZWVwbGFuZVVzZXJEaXJlY3Rvcnl9L2FkZG9ucy&#xa;9wcm9tcHRMbG1BZGRPbiIKICAgIH0KfQoKLy8gUmV0dXJuIHRoZSBjbGFzcyBmb3IgdXNlIGlu&#xa;IHNjcmlwdHMKcmV0dXJuIENvbmZpZ01hbmFnZXIK" ID="ID_1559338531" CREATED="1743822883391" MODIFIED="1743822883392"/>
</node>
<node TEXT="MessageLoader.groovy" FOLDED="true" ID="ID_551718302" CREATED="1743816630921" MODIFIED="1743816630921">
<node TEXT="LyoqCiAqIEhlbHBlciBjbGFzcyBmb3IgbG9hZGluZyBhbmQgbWFuYWdpbmcgbWVzc2FnZSB0ZW&#xa;1wbGF0ZXMKICovCmNsYXNzIE1lc3NhZ2VMb2FkZXJDbGFzcyB7CiAgICAvKioKICAgICAqIExv&#xa;YWRzIG1lc3NhZ2UgdGVtcGxhdGVzIGZvciBub2RlIGNvbXBhcmlzb24KICAgICAqIAogICAgIC&#xa;ogQHBhcmFtIGNvbmZpZyBUaGUgRnJlZXBsYW5lIGNvbmZpZyBvYmplY3QKICAgICAqIEByZXR1&#xa;cm4gTWFwIGNvbnRhaW5pbmcgc3lzdGVtIGFuZCB1c2VyIG1lc3NhZ2UgdGVtcGxhdGVzCiAgIC&#xa;AgKi8KICAgIHN0YXRpYyBNYXAgbG9hZENvbXBhcmlzb25NZXNzYWdlcyhjb25maWcpIHsKICAg&#xa;ICAgICBkZWYgYWRkb25zRGlyID0gIiR7Y29uZmlnLmZyZWVwbGFuZVVzZXJEaXJlY3Rvcnl9L2&#xa;FkZG9ucy9wcm9tcHRMbG1BZGRPbiIKICAgICAgICAKICAgICAgICAvLyBEZWZpbmUgbWVzc2Fn&#xa;ZSBmaWxlIHBhdGhzCiAgICAgICAgZGVmIHN5c3RlbU1lc3NhZ2VzRmlsZVBhdGggPSAiJHtjb2&#xa;5maWcuZnJlZXBsYW5lVXNlckRpcmVjdG9yeX0vY2hhdEdwdFN5c3RlbU1lc3NhZ2VzLnR4dCIK&#xa;ICAgICAgICBkZWYgZGVmYXVsdFN5c3RlbU1lc3NhZ2VzRmlsZVBhdGggPSAiJHthZGRvbnNEaX&#xa;J9L2xpYi9kZWZhdWx0U3lzdGVtTWVzc2FnZXMudHh0IgogICAgICAgIGRlZiBjb21wYXJlTm9k&#xa;ZXNVc2VyTWVzc2FnZUZpbGVQYXRoID0gIiR7YWRkb25zRGlyfS9saWIvY29tcGFyZU5vZGVzVX&#xa;Nlck1lc3NhZ2UudHh0IgogICAgICAgIAogICAgICAgIC8vIExvYWQgdGhlIG1lc3NhZ2UgZmls&#xa;ZSBoYW5kbGVyCiAgICAgICAgZGVmIG1lc3NhZ2VGaWxlSGFuZGxlciA9IG5ldyBHcm9vdnlTaG&#xa;VsbChNZXNzYWdlTG9hZGVyLmNsYXNzLmNsYXNzTG9hZGVyKS5ldmFsdWF0ZSgKICAgICAgICAg&#xa;ICAgbmV3IEZpbGUoIiR7YWRkb25zRGlyfS9saWIvTWVzc2FnZUZpbGVIYW5kbGVyLmdyb292eS&#xa;IpCiAgICAgICAgKQogICAgICAgIAogICAgICAgIC8vIExvYWQgbWVzc2FnZSB0ZW1wbGF0ZXMK&#xa;ICAgICAgICBkZWYgZGVmYXVsdFN5c3RlbU1lc3NhZ2VzID0gbmV3IEZpbGUoZGVmYXVsdFN5c3&#xa;RlbU1lc3NhZ2VzRmlsZVBhdGgpLnRleHQudHJpbSgpCiAgICAgICAgZGVmIHN5c3RlbU1lc3Nh&#xa;Z2VzID0gbWVzc2FnZUZpbGVIYW5kbGVyLmxvYWRNZXNzYWdlc0Zyb21GaWxlKHN5c3RlbU1lc3&#xa;NhZ2VzRmlsZVBhdGgsIGRlZmF1bHRTeXN0ZW1NZXNzYWdlcykKICAgICAgICBkZWYgY29tcGFy&#xa;ZU5vZGVzVXNlck1lc3NhZ2VUZW1wbGF0ZSA9IG5ldyBGaWxlKGNvbXBhcmVOb2Rlc1VzZXJNZX&#xa;NzYWdlRmlsZVBhdGgpLnRleHQudHJpbSgpCiAgICAgICAgCiAgICAgICAgLy8gU2VsZWN0IHRo&#xa;ZSBjb25maWd1cmVkIHN5c3RlbSB0ZW1wbGF0ZSAod2l0aCBmYWxsYmFjaykKICAgICAgICBkZW&#xa;Ygc3lzdGVtTWVzc2FnZUluZGV4ID0gY29uZmlnLmdldFByb3BlcnR5KCdvcGVuYWkuc3lzdGVt&#xa;X21lc3NhZ2VfaW5kZXgnLCAwKSBhcyBpbnQKICAgICAgICBkZWYgc3lzdGVtTWVzc2FnZVRlbX&#xa;BsYXRlID0gc3lzdGVtTWVzc2FnZUluZGV4IDwgc3lzdGVtTWVzc2FnZXMuc2l6ZSgpID8gCiAg&#xa;ICAgICAgICAgIHN5c3RlbU1lc3NhZ2VzW3N5c3RlbU1lc3NhZ2VJbmRleF0gOiAKICAgICAgIC&#xa;AgICAgKHN5c3RlbU1lc3NhZ2VzLmlzRW1wdHkoKSA/ICIiIDogc3lzdGVtTWVzc2FnZXNbMF0p&#xa;CiAgICAgICAgICAgIAogICAgICAgIHJldHVybiBbCiAgICAgICAgICAgIHN5c3RlbVRlbXBsYX&#xa;RlOiBzeXN0ZW1NZXNzYWdlVGVtcGxhdGUsCiAgICAgICAgICAgIHVzZXJUZW1wbGF0ZTogY29t&#xa;cGFyZU5vZGVzVXNlck1lc3NhZ2VUZW1wbGF0ZQogICAgICAgIF0KICAgIH0KfQoKLy8gUmV0dX&#xa;JuIHRoZSBjbGFzcyBmb3IgdXNlIGluIHNjcmlwdHMKcmV0dXJuIE1lc3NhZ2VMb2FkZXJDbGFz&#xa;cwo=" ID="ID_925156399" CREATED="1743822883392" MODIFIED="1743822883393"/>
</node>
<node TEXT="ResponseParser.groovy" FOLDED="true" ID="ID_1739809892" CREATED="1743816630922" MODIFIED="1743816630922">
<node TEXT="LyoqCiAqIFV0aWxpdHkgY2xhc3MgZm9yIHBhcnNpbmcgTExNIHJlc3BvbnNlcyBpbnRvIHN0cn&#xa;VjdHVyZWQgZm9ybWF0cwogKi8KY2xhc3MgUmVzcG9uc2VQYXJzZXJDbGFzcyB7CiAgICAvKioK&#xa;ICAgICAqIFBhcnNlcyBMTE0gcmVzcG9uc2UgdGV4dCBpbnRvIGNhdGVnb3JpZXMgYW5kIHBvaW&#xa;50cy4KICAgICAqIEFzc3VtZXMgc2ltcGxlIHN0cnVjdHVyZTogIkNhdGVnb3J5OlxuLSBQb2lu&#xa;dCAxXG4tIFBvaW50IDIiIG9yIGp1c3QgbGluZXMgb2YgdGV4dC4KICAgICAqIAogICAgICogQH&#xa;BhcmFtIGFuYWx5c2lzVGV4dCBUaGUgcmF3IHRleHQgZnJvbSB0aGUgTExNIHJlc3BvbnNlCiAg&#xa;ICAgKiBAcmV0dXJuIEEgbWFwIHdpdGggY2F0ZWdvcmllcyBhcyBrZXlzIGFuZCBsaXN0cyBvZi&#xa;Bwb2ludHMgYXMgdmFsdWVzCiAgICAgKi8KICAgIHN0YXRpYyBNYXAgcGFyc2VBbmFseXNpcyhT&#xa;dHJpbmcgYW5hbHlzaXNUZXh0KSB7CiAgICAgICAgZGVmIHJlc3VsdHMgPSBbOl0gLy8gTWFwIH&#xa;RvIHN0b3JlIHJlc3VsdHMsIGUuZy4sIFsiUHJvcyI6IFsiUG9pbnQgMSIsICJQb2ludCAyIl0s&#xa;ICJDb25zIjogWyJQb2ludCBBIl1dCiAgICAgICAgZGVmIGN1cnJlbnRDYXRlZ29yeSA9IG51bG&#xa;wKICAgICAgICBkZWYgcG90ZW50aWFsUG9pbnRzID0gW10KCiAgICAgICAgYW5hbHlzaXNUZXh0&#xa;LmVhY2hMaW5lIHsgbGluZSAtPgogICAgICAgICAgICBsaW5lID0gbGluZS50cmltKCkKICAgIC&#xa;AgICAgICAgaWYgKGxpbmUuaXNFbXB0eSgpKSByZXR1cm4gLy8gY29udGludWUKCiAgICAgICAg&#xa;ICAgIC8vIEJhc2ljIGhlYWRpbmcgZGV0ZWN0aW9uIChlbmRzIHdpdGggJzonKQogICAgICAgIC&#xa;AgICBpZiAobGluZS5lbmRzV2l0aCgnOicpICYmIGxpbmUubGVuZ3RoKCkgPiAxKSB7CiAgICAg&#xa;ICAgICAgICAgICAvLyBTdG9yZSBwcmV2aW91cyBwb2ludHMgaWYgYW55CiAgICAgICAgICAgIC&#xa;AgICBpZiAoY3VycmVudENhdGVnb3J5ICE9IG51bGwgJiYgIXBvdGVudGlhbFBvaW50cy5pc0Vt&#xa;cHR5KCkpIHsKICAgICAgICAgICAgICAgICAgICByZXN1bHRzW2N1cnJlbnRDYXRlZ29yeV0gPS&#xa;Bwb3RlbnRpYWxQb2ludHMKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgIC8vIFN0&#xa;YXJ0IG5ldyBjYXRlZ29yeQogICAgICAgICAgICAgICAgY3VycmVudENhdGVnb3J5ID0gbGluZS&#xa;5zdWJzdHJpbmcoMCwgbGluZS5sZW5ndGgoKSAtIDEpLnRyaW0oKQogICAgICAgICAgICAgICAg&#xa;cmVzdWx0c1tjdXJyZW50Q2F0ZWdvcnldID0gW10gLy8gSW5pdGlhbGl6ZSBjYXRlZ29yeQogIC&#xa;AgICAgICAgICAgICAgcG90ZW50aWFsUG9pbnRzID0gW10gLy8gUmVzZXQgcG9pbnRzIGJ1ZmZl&#xa;cgogICAgICAgICAgICB9IGVsc2UgewogICAgICAgICAgICAgICAgLy8gQXNzdW1lIGl0J3MgYS&#xa;Bwb2ludCBmb3IgdGhlIGN1cnJlbnQgY2F0ZWdvcnkgb3IgZ2VuZXJhbCBhbmFseXNpcwogICAg&#xa;ICAgICAgICAgICAgZGVmIHBvaW50ID0gbGluZS5yZXBsYWNlQWxsKC9eWy0qK+KAosK3XVxzKi&#xa;8sICcnKS50cmltKCkgLy8gUmVtb3ZlIGNvbW1vbiBsZWFkaW5nIGJ1bGxldHMKICAgICAgICAg&#xa;ICAgICAgIGlmICghcG9pbnQuaXNFbXB0eSgpKSB7CiAgICAgICAgICAgICAgICAgICAgcG90ZW&#xa;50aWFsUG9pbnRzLmFkZChwb2ludCkKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfQog&#xa;ICAgICAgIH0KCiAgICAgICAgLy8gQWRkIGFueSByZW1haW5pbmcgcG9pbnRzIHVuZGVyIHRoZS&#xa;BsYXN0IGNhdGVnb3J5CiAgICAgICAgaWYgKGN1cnJlbnRDYXRlZ29yeSAhPSBudWxsICYmICFw&#xa;b3RlbnRpYWxQb2ludHMuaXNFbXB0eSgpKSB7CiAgICAgICAgICAgcmVzdWx0c1tjdXJyZW50Q2&#xa;F0ZWdvcnldID0gKHJlc3VsdHNbY3VycmVudENhdGVnb3J5XSA/OiBbXSkgKyBwb3RlbnRpYWxQ&#xa;b2ludHMKICAgICAgICB9CgogICAgICAgIC8vIEhhbmRsZSBjYXNlcyB3aGVyZSBubyBoZWFkaW&#xa;5ncyB3ZXJlIGZvdW5kIC0gdHJlYXQgdGhlIHdob2xlIHRleHQgYXMgb25lIGNhdGVnb3J5CiAg&#xa;ICAgICAgaWYgKHJlc3VsdHMuaXNFbXB0eSgpICYmICFwb3RlbnRpYWxQb2ludHMuaXNFbXB0eS&#xa;gpKSB7CiAgICAgICAgICAgIHJlc3VsdHNbIkFuYWx5c2lzIl0gPSBwb3RlbnRpYWxQb2ludHMK&#xa;ICAgICAgICB9IGVsc2UgaWYgKHJlc3VsdHMuaXNFbXB0eSgpICYmICFhbmFseXNpc1RleHQudH&#xa;JpbSgpLmlzRW1wdHkoKSkgewogICAgICAgICAgICAvLyBGYWxsYmFjayBpZiBwb3RlbnRpYWxQ&#xa;b2ludHMgaXMgYWxzbyBlbXB0eSBidXQgdGV4dCBleGlzdHMKICAgICAgICAgICAgIHJlc3VsdH&#xa;NbIkFuYWx5c2lzIl0gPSBhbmFseXNpc1RleHQudHJpbSgpLnNwbGl0KCdcbicpLmNvbGxlY3Qg&#xa;eyBpdC50cmltKCkgfS5maW5kQWxsIHsgIWl0LmlzRW1wdHkoKSB9CiAgICAgICAgfQoKICAgIC&#xa;AgICAvLyBGaWx0ZXIgb3V0IGVtcHR5IGNhdGVnb3JpZXMKICAgICAgICByZXN1bHRzID0gcmVz&#xa;dWx0cy5maW5kQWxsIHsgY2F0ZWdvcnksIHBvaW50cyAtPiAhcG9pbnRzLmlzRW1wdHkoKSB9Cg&#xa;ogICAgICAgIHJldHVybiByZXN1bHRzCiAgICB9Cn0KCi8vIFJldHVybiB0aGUgY2xhc3MgZm9y&#xa;IHVzZSBpbiBzY3JpcHRzCnJldHVybiBSZXNwb25zZVBhcnNlckNsYXNzCg==" ID="ID_1052049526" CREATED="1743822883393" MODIFIED="1743822883394"/>
</node>
<node TEXT="DependencyLoader.groovy" FOLDED="true" ID="ID_1442894888" CREATED="1743816630928" MODIFIED="1743816630928">
<node TEXT="Ly8gSGVscGVyIGNsYXNzIHRvIGNlbnRyYWxpemUgZGVwZW5kZW5jeSBsb2FkaW5nCmNsYXNzIE&#xa;RlcGVuZGVuY3lMb2FkZXJDbGFzcyB7CiAgICBzdGF0aWMgTWFwIGxvYWREZXBlbmRlbmNpZXMo&#xa;Y29uZmlnLCBsb2dnZXIsIHVpKSB7CiAgICAgICAgZGVmIGFkZG9uc0RpciA9ICIke2NvbmZpZy&#xa;5mcmVlcGxhbmVVc2VyRGlyZWN0b3J5fS9hZGRvbnMvcHJvbXB0TGxtQWRkT24iCiAgICAgICAg&#xa;ZGVmIGNsYXNzTG9hZGVyID0gRGVwZW5kZW5jeUxvYWRlci5jbGFzcy5jbGFzc0xvYWRlciAvLy&#xa;BVc2UgYSBjb25zaXN0ZW50IGNsYXNzbG9hZGVyCiAgICAgICAgCiAgICAgICAgLy8gTG9hZCBh&#xa;bGwgZGVwZW5kZW5jaWVzIHdpdGggYSBjb25zaXN0ZW50IGFwcHJvYWNoCiAgICAgICAgcmV0dX&#xa;JuIFsKICAgICAgICAgICAgLy8gS2VlcCBleGlzdGluZyBsb2FkZXJzCiAgICAgICAgICAgIGFw&#xa;aUNhbGxlcjogbmV3IEdyb292eVNoZWxsKGNsYXNzTG9hZGVyKS5ldmFsdWF0ZSgKICAgICAgIC&#xa;AgICAgICAgIG5ldyBGaWxlKCIke2FkZG9uc0Rpcn0vbGliL0FwaUNhbGxlci5ncm9vdnkiKQog&#xa;ICAgICAgICAgICApKFtsb2dnZXI6IGxvZ2dlciwgdWk6IHVpLCBjb25maWc6IGNvbmZpZ10pLC&#xa;AvLyBQYXNzIGRlcGVuZGVuY2llcwogICAgICAgICAgICAKICAgICAgICAgICAgbWVzc2FnZUV4&#xa;cGFuZGVyOiBuZXcgR3Jvb3Z5U2hlbGwoY2xhc3NMb2FkZXIpLmV2YWx1YXRlKAogICAgICAgIC&#xa;AgICAgICAgbmV3IEZpbGUoIiR7YWRkb25zRGlyfS9saWIvTWVzc2FnZUV4cGFuZGVyLmdyb292&#xa;eSIpCiAgICAgICAgICAgICksCiAgICAgICAgICAgIAogICAgICAgICAgICBtZXNzYWdlRmlsZU&#xa;hhbmRsZXI6IG5ldyBHcm9vdnlTaGVsbChjbGFzc0xvYWRlcikuZXZhbHVhdGUoCiAgICAgICAg&#xa;ICAgICAgICBuZXcgRmlsZSgiJHthZGRvbnNEaXJ9L2xpYi9NZXNzYWdlRmlsZUhhbmRsZXIuZ3&#xa;Jvb3Z5IikKICAgICAgICAgICAgKSwKICAgICAgICAgICAgCiAgICAgICAgICAgIG5vZGVUYWdn&#xa;ZXI6IG5ldyBHcm9vdnlTaGVsbChjbGFzc0xvYWRlcikuZXZhbHVhdGUoCiAgICAgICAgICAgIC&#xa;AgICBuZXcgRmlsZSgiJHthZGRvbnNEaXJ9L2xpYi9Ob2RlVGFnZ2VyLmdyb292eSIpCiAgICAg&#xa;ICAgICAgICksCiAgICAgICAgICAgIAogICAgICAgICAgICByZXNwb25zZVBhcnNlcjogbmV3IE&#xa;dyb292eVNoZWxsKGNsYXNzTG9hZGVyKS5ldmFsdWF0ZSgKICAgICAgICAgICAgICAgIG5ldyBG&#xa;aWxlKCIke2FkZG9uc0Rpcn0vbGliL1Jlc3BvbnNlUGFyc2VyLmdyb292eSIpCiAgICAgICAgIC&#xa;AgICksCiAgICAgICAgICAgIAogICAgICAgICAgICAvLyBBZGQgbmV3IG9uZXMKICAgICAgICAg&#xa;ICAgZGlhbG9nSGVscGVyOiBuZXcgR3Jvb3Z5U2hlbGwoY2xhc3NMb2FkZXIpLmV2YWx1YXRlKA&#xa;ogICAgICAgICAgICAgICAgbmV3IEZpbGUoIiR7YWRkb25zRGlyfS9saWIvRGlhbG9nSGVscGVy&#xa;Lmdyb292eSIpCiAgICAgICAgICAgICksCiAgICAgICAgICAgIAogICAgICAgICAgICBub2RlSG&#xa;VscGVyVXRpbHM6IG5ldyBHcm9vdnlTaGVsbChjbGFzc0xvYWRlcikuZXZhbHVhdGUoCiAgICAg&#xa;ICAgICAgICAgICBuZXcgRmlsZSgiJHthZGRvbnNEaXJ9L2xpYi9Ob2RlSGVscGVyLmdyb292eS&#xa;IpCiAgICAgICAgICAgICksCiAgICAgICAgICAgIAogICAgICAgICAgICBjb25maWdNYW5hZ2Vy&#xa;OiBuZXcgR3Jvb3Z5U2hlbGwoY2xhc3NMb2FkZXIpLmV2YWx1YXRlKAogICAgICAgICAgICAgIC&#xa;AgbmV3IEZpbGUoIiR7YWRkb25zRGlyfS9saWIvQ29uZmlnTG9hZGVyLmdyb292eSIpCiAgICAg&#xa;ICAgICAgICksCiAgICAgICAgICAgIAogICAgICAgICAgICBtZXNzYWdlTG9hZGVyOiBuZXcgR3&#xa;Jvb3Z5U2hlbGwoY2xhc3NMb2FkZXIpLmV2YWx1YXRlKAogICAgICAgICAgICAgICAgbmV3IEZp&#xa;bGUoIiR7YWRkb25zRGlyfS9saWIvTWVzc2FnZUxvYWRlci5ncm9vdnkiKQogICAgICAgICAgIC&#xa;ApCiAgICAgICAgXQogICAgfQp9CgovLyBSZXR1cm4gdGhlIGNsYXNzIGZvciB1c2UgaW4gc2Ny&#xa;aXB0cwpyZXR1cm4gRGVwZW5kZW5jeUxvYWRlckNsYXNzCg==" ID="ID_675499958" CREATED="1743822883394" MODIFIED="1743822883395"/>
</node>
<node TEXT="DialogHelper.groovy" FOLDED="true" ID="ID_1046826300" CREATED="1743816630934" MODIFIED="1743816630934">
<node TEXT="aW1wb3J0IGdyb292eS5zd2luZy5Td2luZ0J1aWxkZXIKaW1wb3J0IGphdmF4LnN3aW5nLioKaW&#xa;1wb3J0IGphdmEuYXd0LioKCi8qKgogKiBIZWxwZXIgY2xhc3MgZm9yIGNyZWF0aW5nIGFuZCBt&#xa;YW5hZ2luZyBVSSBkaWFsb2dzCiAqLwpjbGFzcyBEaWFsb2dIZWxwZXJDbGFzcyB7CiAgICAvKi&#xa;oKICAgICAqIFNob3dzIGEgZGlhbG9nIGZvciBzZWxlY3Rpbmcgb3IgZW50ZXJpbmcgYSBjb21w&#xa;YXJpc29uIHR5cGUKICAgICAqIAogICAgICogQHBhcmFtIHVpIFRoZSBGcmVlcGxhbmUgVUkgb2&#xa;JqZWN0CiAgICAgKiBAcGFyYW0gY29uZmlnIFRoZSBGcmVlcGxhbmUgY29uZmlnIG9iamVjdAog&#xa;ICAgICogQHBhcmFtIGNvbnRleHROb2RlIFRoZSBub2RlIG1vZGVsIGZvciBjb250ZXh0CiAgIC&#xa;AgKiBAcGFyYW0gbWVzc2FnZSBUaGUgbWVzc2FnZSB0byBkaXNwbGF5CiAgICAgKiBAcGFyYW0g&#xa;ZGVmYXVsdFR5cGVzIERlZmF1bHQgY29tcGFyaXNvbiB0eXBlIG9wdGlvbnMKICAgICAqIEBwYX&#xa;JhbSBjb25maWdLZXkgVGhlIGNvbmZpZyBrZXkgdG8gc3RvcmUgY3VzdG9tIHR5cGVzCiAgICAg&#xa;KiBAcmV0dXJuIFRoZSBzZWxlY3RlZCBjb21wYXJpc29uIHR5cGUgb3IgbnVsbCBpZiBjYW5jZW&#xa;xsZWQKICAgICAqLwogICAgc3RhdGljIFN0cmluZyBzaG93Q29tcGFyaXNvbkRpYWxvZyh1aSwg&#xa;Y29uZmlnLCBjb250ZXh0Tm9kZSwgU3RyaW5nIG1lc3NhZ2UsIAogICAgICAgICAgICAgICAgIC&#xa;AgICAgICAgICAgICAgICAgICAgIGphdmEudXRpbC5MaXN0PFN0cmluZz4gZGVmYXVsdFR5cGVz&#xa;LCAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBTdHJpbmcgY29uZmlnS2&#xa;V5ID0gInByb21wdExsbUFkZE9uLmNvbXBhcmlzb25UeXBlcyIpIHsKICAgICAgICAvLyBMb2Fk&#xa;IHByZXZpb3VzbHkgc2F2ZWQgY3VzdG9tIHR5cGVzCiAgICAgICAgZGVmIHNhdmVkVHlwZXNTdH&#xa;JpbmcgPSBjb25maWcuZ2V0UHJvcGVydHkoY29uZmlnS2V5LCAnJykKICAgICAgICBkZWYgY3Vz&#xa;dG9tVHlwZXMgPSBzYXZlZFR5cGVzU3RyaW5nID8gc2F2ZWRUeXBlc1N0cmluZy5zcGxpdCgnXF&#xa;x8JykudG9MaXN0KCkgOiBbXQogICAgICAgIGN1c3RvbVR5cGVzID0gY3VzdG9tVHlwZXMuZmlu&#xa;ZEFsbCB7ICFpdC50cmltKCkuaXNFbXB0eSgpIH0gLy8gUmVtb3ZlIGVtcHR5IGVudHJpZXMKCi&#xa;AgICAgICAgLy8gQ29tYmluZSBkZWZhdWx0cyBhbmQgY3VzdG9tLCBlbnN1cmluZyBkZWZhdWx0&#xa;cyBjb21lIGZpcnN0IGFuZCBubyBkdXBsaWNhdGVzCiAgICAgICAgZGVmIGFsbFR5cGVzID0gKG&#xa;RlZmF1bHRUeXBlcyArIGN1c3RvbVR5cGVzKS51bmlxdWUoKQoKICAgICAgICBkZWYgc2VsZWN0&#xa;ZWRUeXBlID0gbnVsbCAvLyBWYXJpYWJsZSB0byBzdG9yZSB0aGUgcmVzdWx0CiAgICAgICAgZG&#xa;VmIHN3aW5nID0gbmV3IFN3aW5nQnVpbGRlcigpCgogICAgICAgIC8vIEJ1aWxkIHRoZSBkaWFs&#xa;b2cKICAgICAgICBkZWYgZGlhbG9nID0gc3dpbmcuZGlhbG9nKAogICAgICAgICAgICB0aXRsZT&#xa;ogIkRlZmluZSBDb21wYXJpc29uIFR5cGUiLAogICAgICAgICAgICBtb2RhbDogdHJ1ZSwgLy8g&#xa;TWFrZSBpdCBtb2RhbAogICAgICAgICAgICBvd25lcjogdWkuY3VycmVudEZyYW1lLCAvLyBQYX&#xa;JlbnQgZnJhbWUKICAgICAgICAgICAgcGFjazogdHJ1ZSwgLy8gU2l6ZSBiYXNlZCBvbiBjb250&#xa;ZW50CiAgICAgICAgICAgIGxvY2F0aW9uUmVsYXRpdmVUbzogdWkuY3VycmVudEZyYW1lIC8vIE&#xa;NlbnRlciBvbiBmcmFtZQogICAgICAgICkgewogICAgICAgICAgICBwYW5lbChsYXlvdXQ6IG5l&#xa;dyBCb3JkZXJMYXlvdXQoNSwgNSksIGJvcmRlcjogQm9yZGVyRmFjdG9yeS5jcmVhdGVFbXB0eU&#xa;JvcmRlcigxMCwgMTAsIDEwLCAxMCkpIHsKICAgICAgICAgICAgICAgIC8vIE1lc3NhZ2UgTGFi&#xa;ZWwKICAgICAgICAgICAgICAgIGxhYmVsKHRleHQ6ICI8aHRtbD4ke21lc3NhZ2UucmVwbGFjZU&#xa;FsbCgnXG4nLCAnPGJyPicpfTwvaHRtbD4iLCBjb25zdHJhaW50czogQm9yZGVyTGF5b3V0Lk5P&#xa;UlRIKSAvLyBVc2UgSFRNTCBmb3IgbXVsdGktbGluZQoKICAgICAgICAgICAgICAgIC8vIEVkaX&#xa;RhYmxlIENvbWJvQm94CiAgICAgICAgICAgICAgICBjb21ib0JveChpZDogJ3R5cGVDb21ibycs&#xa;CiAgICAgICAgICAgICAgICAgICAgICAgICBpdGVtczogYWxsVHlwZXMsCiAgICAgICAgICAgIC&#xa;AgICAgICAgICAgICBlZGl0YWJsZTogdHJ1ZSwKICAgICAgICAgICAgICAgICAgICAgICAgIHNl&#xa;bGVjdGVkSXRlbTogYWxsVHlwZXMuaXNFbXB0eSgpID8gIiIgOiBhbGxUeXBlc1swXSwgLy8gU2&#xa;VsZWN0IGZpcnN0IGl0ZW0gb3IgZW1wdHkKICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0&#xa;cmFpbnRzOiBCb3JkZXJMYXlvdXQuQ0VOVEVSKQoKICAgICAgICAgICAgICAgIC8vIEJ1dHRvbi&#xa;BQYW5lbAogICAgICAgICAgICAgICAgcGFuZWwobGF5b3V0OiBuZXcgRmxvd0xheW91dChGbG93&#xa;TGF5b3V0LlJJR0hUKSwgY29uc3RyYWludHM6IEJvcmRlckxheW91dC5TT1VUSCkgewogICAgIC&#xa;AgICAgICAgICAgICAgIGJ1dHRvbih0ZXh0OiAnT0snLCBkZWZhdWx0QnV0dG9uOiB0cnVlLCBh&#xa;Y3Rpb25QZXJmb3JtZWQ6IHsKICAgICAgICAgICAgICAgICAgICAgICAgLy8gR2V0IHNlbGVjdG&#xa;VkL2VudGVyZWQgaXRlbQogICAgICAgICAgICAgICAgICAgICAgICBzZWxlY3RlZFR5cGUgPSB0&#xa;eXBlQ29tYm8uZWRpdG9yLml0ZW0/LnRvU3RyaW5nKCk/LnRyaW0oKSA/OiAiIgogICAgICAgIC&#xa;AgICAgICAgICAgICAgICBpZiAoIXNlbGVjdGVkVHlwZS5pc0VtcHR5KCkpIHsKICAgICAgICAg&#xa;ICAgICAgICAgICAgICAgICAgIC8vIENoZWNrIGlmIGl0J3MgYSBuZXcgY3VzdG9tIHR5cGUKIC&#xa;AgICAgICAgICAgICAgICAgICAgICAgICAgIGlmICghZGVmYXVsdFR5cGVzLmNvbnRhaW5zKHNl&#xa;bGVjdGVkVHlwZSkgJiYgIWN1c3RvbVR5cGVzLmNvbnRhaW5zKHNlbGVjdGVkVHlwZSkpIHsKIC&#xa;AgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjdXN0b21UeXBlcy5hZGQoc2VsZWN0ZWRU&#xa;eXBlKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIFNhdmUgdXBkYXRlZCBjdX&#xa;N0b20gdHlwZXMgbGlzdAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbmZpZy5z&#xa;ZXRQcm9wZXJ0eShjb25maWdLZXksIGN1c3RvbVR5cGVzLmpvaW4oJ3wnKSkKICAgICAgICAgIC&#xa;AgICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICAgICAgICAgICAgfQogICAgICAgICAg&#xa;ICAgICAgICAgICAgICAvLyBHZXQgdGhlIGJ1dHRvbiBzb3VyY2UsIGZpbmQgaXRzIHdpbmRvdy&#xa;AodGhlIGRpYWxvZyksIGFuZCBkaXNwb3NlIGl0CiAgICAgICAgICAgICAgICAgICAgICAgIFN3&#xa;aW5nVXRpbGl0aWVzLmdldFdpbmRvd0FuY2VzdG9yKGl0LnNvdXJjZSkuZGlzcG9zZSgpCiAgIC&#xa;AgICAgICAgICAgICAgICAgfSkKICAgICAgICAgICAgICAgICAgICBidXR0b24odGV4dDogJ0Nh&#xa;bmNlbCcsIGFjdGlvblBlcmZvcm1lZDogewogICAgICAgICAgICAgICAgICAgICAgICBzZWxlY3&#xa;RlZFR5cGUgPSBudWxsIC8vIEluZGljYXRlIGNhbmNlbGxhdGlvbgogICAgICAgICAgICAgICAg&#xa;ICAgICAgICAvLyBHZXQgdGhlIGJ1dHRvbiBzb3VyY2UsIGZpbmQgaXRzIHdpbmRvdyAodGhlIG&#xa;RpYWxvZyksIGFuZCBkaXNwb3NlIGl0CiAgICAgICAgICAgICAgICAgICAgICAgIFN3aW5nVXRp&#xa;bGl0aWVzLmdldFdpbmRvd0FuY2VzdG9yKGl0LnNvdXJjZSkuZGlzcG9zZSgpCiAgICAgICAgIC&#xa;AgICAgICAgICAgfSkKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgfQogICAgICAgIH0K&#xa;CiAgICAgICAgLy8gU2hvdyB0aGUgZGlhbG9nIChpdCdzIG1vZGFsLCBzbyBleGVjdXRpb24gd2&#xa;FpdHMgaGVyZSkKICAgICAgICBkaWFsb2cudmlzaWJsZSA9IHRydWUKCiAgICAgICAgLy8gUmV0&#xa;dXJuIHRoZSBzZWxlY3RlZCB0eXBlIChvciBudWxsIGlmIGNhbmNlbGxlZCkKICAgICAgICByZX&#xa;R1cm4gc2VsZWN0ZWRUeXBlCiAgICB9CiAgICAKICAgIC8qKgogICAgICogQ3JlYXRlcyBhIHBy&#xa;b2dyZXNzIGRpYWxvZyBmb3IgbG9uZy1ydW5uaW5nIG9wZXJhdGlvbnMKICAgICAqIAogICAgIC&#xa;ogQHBhcmFtIHVpIFRoZSBGcmVlcGxhbmUgVUkgb2JqZWN0CiAgICAgKiBAcGFyYW0gdGl0bGUg&#xa;VGhlIGRpYWxvZyB0aXRsZQogICAgICogQHBhcmFtIG1lc3NhZ2UgVGhlIG1lc3NhZ2UgdG8gZG&#xa;lzcGxheQogICAgICogQHJldHVybiBUaGUgY3JlYXRlZCBkaWFsb2cgKG5vdCB5ZXQgdmlzaWJs&#xa;ZSkKICAgICAqLwogICAgc3RhdGljIEpEaWFsb2cgY3JlYXRlUHJvZ3Jlc3NEaWFsb2codWksIF&#xa;N0cmluZyB0aXRsZSwgU3RyaW5nIG1lc3NhZ2UpIHsKICAgICAgICBkZWYgc3dpbmdCdWlsZGVy&#xa;ID0gbmV3IFN3aW5nQnVpbGRlcigpCiAgICAgICAgZGVmIGRpYWxvZyA9IHN3aW5nQnVpbGRlci&#xa;5kaWFsb2coCiAgICAgICAgICAgIHRpdGxlOiB0aXRsZSwKICAgICAgICAgICAgb3duZXI6IHVp&#xa;LmN1cnJlbnRGcmFtZSwKICAgICAgICAgICAgbW9kYWw6IGZhbHNlLCAvLyBOb24tbW9kYWwKIC&#xa;AgICAgICAgICAgcmVzaXphYmxlOiBmYWxzZSwKICAgICAgICAgICAgZGVmYXVsdENsb3NlT3Bl&#xa;cmF0aW9uOiBXaW5kb3dDb25zdGFudHMuRE9fTk9USElOR19PTl9DTE9TRSkgeyAvLyBQcmV2ZW&#xa;50IG1hbnVhbCBjbG9zaW5nCiAgICAgICAgICAgIHN3aW5nQnVpbGRlci5wYW5lbChsYXlvdXQ6&#xa;IG5ldyBCb3JkZXJMYXlvdXQoKSkgewogICAgICAgICAgICAgICAgbGFiZWwodGV4dDogbWVzc2&#xa;FnZSwgY29uc3RyYWludHM6IEJvcmRlckxheW91dC5DRU5URVIpCiAgICAgICAgICAgIH0KICAg&#xa;ICAgICB9CiAgICAgICAgZGlhbG9nLnBhY2soKQogICAgICAgIHVpLnNldERpYWxvZ0xvY2F0aW&#xa;9uUmVsYXRpdmVUbyhkaWFsb2csIHVpLmN1cnJlbnRGcmFtZSkgLy8gQ2VudGVyIG9uIGZyYW1l&#xa;CiAgICAgICAgCiAgICAgICAgcmV0dXJuIGRpYWxvZwogICAgfQp9CgovLyBSZXR1cm4gdGhlIH&#xa;JlbmFtZWQgY2xhc3MgZm9yIHVzZSBpbiBzY3JpcHRzCnJldHVybiBEaWFsb2dIZWxwZXJDbGFz&#xa;cwo=" ID="ID_1705603503" CREATED="1743822883395" MODIFIED="1743822883396"/>
</node>
<node TEXT="NodeHelper.groovy" FOLDED="true" ID="ID_1309620952" CREATED="1743816630935" MODIFIED="1743816630935">
<node TEXT="aW1wb3J0IG9yZy5mcmVlcGxhbmUuZmVhdHVyZXMubWFwLk5vZGVNb2RlbAoKLyoqCiAqIEhlbH&#xa;BlciBjbGFzcyBmb3Igbm9kZSBvcGVyYXRpb25zCiAqLwpjbGFzcyBOb2RlSGVscGVyQ2xhc3Mg&#xa;ewogICAgLyoqCiAgICAgKiBWYWxpZGF0ZXMgdGhhdCBleGFjdGx5IHR3byBjb25uZWN0ZWQgbm&#xa;9kZXMgYXJlIHNlbGVjdGVkCiAgICAgKiAKICAgICAqIEBwYXJhbSBzZWxlY3RlZE5vZGVzIFRo&#xa;ZSBsaXN0IG9mIHNlbGVjdGVkIG5vZGVzCiAgICAgKiBAcmV0dXJuIEEgdHVwbGUgY29udGFpbm&#xa;luZyBbc291cmNlTm9kZSwgdGFyZ2V0Tm9kZV0gaWYgdmFsaWQKICAgICAqIEB0aHJvd3MgVmFs&#xa;aWRhdGlvbkV4Y2VwdGlvbiBpZiB2YWxpZGF0aW9uIGZhaWxzCiAgICAgKi8KICAgIHN0YXRpYy&#xa;BkZWYgdmFsaWRhdGVBbmRHZXRDb25uZWN0ZWROb2RlcyhzZWxlY3RlZE5vZGVzKSB7CiAgICAg&#xa;ICAgaWYgKHNlbGVjdGVkTm9kZXMuc2l6ZSgpICE9IDIpIHsKICAgICAgICAgICAgdGhyb3cgbm&#xa;V3IEV4Y2VwdGlvbigiUGxlYXNlIHNlbGVjdCBleGFjdGx5IHR3byBub2RlcyB0byBjb21wYXJl&#xa;LiIpCiAgICAgICAgfQoKICAgICAgICBkZWYgbm9kZTEgPSBzZWxlY3RlZE5vZGVzWzBdCiAgIC&#xa;AgICAgZGVmIG5vZGUyID0gc2VsZWN0ZWROb2Rlc1sxXQoKICAgICAgICAvLyBGaW5kIGNvbm5l&#xa;Y3RvcnMgYmV0d2VlbiBub2RlMSBhbmQgbm9kZTIgKGluIGVpdGhlciBkaXJlY3Rpb24pCiAgIC&#xa;AgICAgZGVmIGNvbm5lY3RvcnNPdXQgPSBub2RlMS5jb25uZWN0b3JzT3V0LmZpbmRBbGwgeyBp&#xa;dC50YXJnZXQgPT0gbm9kZTIgfQogICAgICAgIGRlZiBjb25uZWN0b3JzSW4gPSBub2RlMS5jb2&#xa;5uZWN0b3JzSW4uZmluZEFsbCB7IGl0LnNvdXJjZSA9PSBub2RlMiB9CiAgICAgICAgZGVmIGFs&#xa;bENvbm5lY3RvcnNCZXR3ZWVuID0gY29ubmVjdG9yc091dCArIGNvbm5lY3RvcnNJbgoKICAgIC&#xa;AgICBpZiAoYWxsQ29ubmVjdG9yc0JldHdlZW4uc2l6ZSgpID09IDApIHsKICAgICAgICAgICAg&#xa;dGhyb3cgbmV3IEV4Y2VwdGlvbigiVGhlIHR3byBzZWxlY3RlZCBub2RlcyBhcmUgbm90IGNvbm&#xa;5lY3RlZC4gUGxlYXNlIGFkZCBhIGNvbm5lY3RvciBiZXR3ZWVuIHRoZW0uIikKICAgICAgICB9&#xa;CgogICAgICAgIGlmIChhbGxDb25uZWN0b3JzQmV0d2Vlbi5zaXplKCkgPiAxKSB7CiAgICAgIC&#xa;AgICAgIHRocm93IG5ldyBFeGNlcHRpb24oIlRoZXJlIGFyZSBtdWx0aXBsZSBjb25uZWN0b3Jz&#xa;IGJldHdlZW4gdGhlIHNlbGVjdGVkIG5vZGVzLiBQbGVhc2UgZW5zdXJlIHRoZXJlIGlzIG9ubH&#xa;kgb25lLiIpCiAgICAgICAgfQoKICAgICAgICAvLyBSZXR1cm4gdGhlIG5vZGVzIGluIHNlbGVj&#xa;dGlvbiBvcmRlcgogICAgICAgIHJldHVybiBbbm9kZTEsIG5vZGUyXQogICAgfQogICAgCiAgIC&#xa;AvKioKICAgICAqIEZvcm1hdHMgdGhlIGFuYWx5c2lzIG1hcCBpbnRvIGFuIGluZGVudGVkIHN0&#xa;cmluZyBhbmQgYWRkcyBpdCBhcyBhIGJyYW5jaAogICAgICogCiAgICAgKiBAcGFyYW0gbm9kZV&#xa;Byb3h5IFRoZSBub2RlIHRvIGFkZCB0aGUgYnJhbmNoIHRvCiAgICAgKiBAcGFyYW0gYW5hbHlz&#xa;aXNNYXAgVGhlIG1hcCBvZiBhbmFseXNpcyBkYXRhCiAgICAgKiBAcGFyYW0gY29tcGFyaXNvbl&#xa;R5cGUgVGhlIHR5cGUgb2YgY29tcGFyaXNvbiBwZXJmb3JtZWQKICAgICAqIEBwYXJhbSBtb2Rl&#xa;bCBUaGUgTExNIG1vZGVsIHVzZWQKICAgICAqIEBwYXJhbSBsb2dnZXIgVGhlIGxvZ2dlciBpbn&#xa;N0YW5jZQogICAgICogQHBhcmFtIGFkZE1vZGVsVGFnUmVjdXJzaXZlbHlGdW5jIE9wdGlvbmFs&#xa;IGZ1bmN0aW9uIHRvIHRhZyBub2RlcyB3aXRoIG1vZGVsIGluZm8KICAgICAqLwogICAgc3RhdG&#xa;ljIHZvaWQgYWRkQW5hbHlzaXNUb05vZGVBc0JyYW5jaChub2RlUHJveHksIE1hcCBhbmFseXNp&#xa;c01hcCwgU3RyaW5nIGNvbXBhcmlzb25UeXBlLCBTdHJpbmcgbW9kZWwsIGxvZ2dlciwgYWRkTW&#xa;9kZWxUYWdSZWN1cnNpdmVseUZ1bmMgPSBudWxsKSB7CiAgICAgICAgbG9nZ2VyLmluZm8oIkF0&#xa;dGVtcHRpbmcgdG8gYWRkIGFuYWx5c2lzIHRvIG5vZGU6ICR7bm9kZVByb3h5LnRleHR9IikKIC&#xa;AgICAgICBpZiAoYW5hbHlzaXNNYXAuaXNFbXB0eSgpKSB7CiAgICAgICAgICAgIGxvZ2dlci53&#xa;YXJuKCJObyBhbmFseXNpcyBkYXRhIHRvIGFkZCBmb3Igbm9kZTogJHtub2RlUHJveHkudGV4dH&#xa;0iKQogICAgICAgICAgICByZXR1cm4KICAgICAgICB9CgogICAgICAgIC8vIEZvcm1hdCB0aGUg&#xa;bWFwIGludG8gYW4gaW5kZW50ZWQgc3RyaW5nCiAgICAgICAgZGVmIGJ1aWxkZXIgPSBuZXcgU3&#xa;RyaW5nQnVpbGRlcigpCiAgICAgICAgYnVpbGRlci5hcHBlbmQoIkNvbXBhcmlzb24gKCR7Y29t&#xa;cGFyaXNvblR5cGV9KVxuIikgLy8gUm9vdCBvZiB0aGUgbmV3IGJyYW5jaAogICAgICAgIGFuYW&#xa;x5c2lzTWFwLmVhY2ggeyBjYXRlZ29yeSwgcG9pbnRzIC0+CiAgICAgICAgICAgIGJ1aWxkZXIu&#xa;YXBwZW5kKCIgICAgJHtjYXRlZ29yeX1cbiIpIC8vIEluZGVudCBsZXZlbCAxIGZvciBjYXRlZ2&#xa;9yeQogICAgICAgICAgICBwb2ludHMuZWFjaCB7IHBvaW50IC0+CiAgICAgICAgICAgICAgICBi&#xa;dWlsZGVyLmFwcGVuZCgiICAgICAgICAke3BvaW50fVxuIikgLy8gSW5kZW50IGxldmVsIDIgZm&#xa;9yIHBvaW50cwogICAgICAgICAgICB9CiAgICAgICAgfQogICAgICAgIGRlZiBmb3JtYXR0ZWRB&#xa;bmFseXNpcyA9IGJ1aWxkZXIudG9TdHJpbmcoKS50cmltKCkKICAgICAgICBsb2dnZXIuaW5mby&#xa;giRm9ybWF0dGVkIGFuYWx5c2lzIHN0cmluZyBmb3Igbm9kZSAke25vZGVQcm94eS50ZXh0fTpc&#xa;bi0tLVxuJHtmb3JtYXR0ZWRBbmFseXNpc31cbi0tLSIpCgogICAgICAgIC8vIEFkZCB0aGUgZm&#xa;9ybWF0dGVkIHN0cmluZyBhcyBhIG5ldyBicmFuY2gKICAgICAgICB0cnkgewogICAgICAgICAg&#xa;ICAvLyBHZXQgdGhlIHNldCBvZiBjaGlsZHJlbiAqYmVmb3JlKiBhZGRpbmcKICAgICAgICAgIC&#xa;AgZGVmIGNoaWxkcmVuQmVmb3JlU2V0ID0gbm9kZVByb3h5LmNoaWxkcmVuLnRvU2V0KCkKICAg&#xa;ICAgICAgICAgbm9kZVByb3h5LmFwcGVuZFRleHRPdXRsaW5lQXNCcmFuY2goZm9ybWF0dGVkQW&#xa;5hbHlzaXMpIC8vIENhbGwgbWV0aG9kIG9uIHRoZSBOb2RlUHJveHkKICAgICAgICAgICAgLy8g&#xa;R2V0IHRoZSBzZXQgb2YgY2hpbGRyZW4gKmFmdGVyKiBhZGRpbmcKICAgICAgICAgICAgZGVmIG&#xa;NoaWxkcmVuQWZ0ZXJTZXQgPSBub2RlUHJveHkuY2hpbGRyZW4udG9TZXQoKQogICAgICAgICAg&#xa;ICAvLyBGaW5kIHRoZSBuZXdseSBhZGRlZCByb290IG5vZGUgKGRpZmZlcmVuY2UgYmV0d2Vlbi&#xa;B0aGUgc2V0cykKICAgICAgICAgICAgZGVmIGFkZGVkQnJhbmNoUm9vdCA9IChjaGlsZHJlbkFm&#xa;dGVyU2V0IC0gY2hpbGRyZW5CZWZvcmVTZXQpLmZpbmQgeyB0cnVlIH0gLy8gR2V0IHRoZSBzaW&#xa;5nbGUgYWRkZWQgbm9kZQoKICAgICAgICAgICAgbG9nZ2VyLmluZm8oIlN1Y2Nlc3NmdWxseSBj&#xa;YWxsZWQgYXBwZW5kVGV4dE91dGxpbmVBc0JyYW5jaCBmb3Igbm9kZTogJHtub2RlUHJveHkudG&#xa;V4dH0iKQogICAgICAgICAgICAKICAgICAgICAgICAgLy8gVXNlIHRoZSBwYXNzZWQtaW4gdGFn&#xa;Z2luZyBmdW5jdGlvbgogICAgICAgICAgICBpZiAoYWRkZWRCcmFuY2hSb290ICYmIGFkZE1vZG&#xa;VsVGFnUmVjdXJzaXZlbHlGdW5jICE9IG51bGwpIHsKICAgICAgICAgICAgICAgIHRyeSB7CiAg&#xa;ICAgICAgICAgICAgICAgICAgLy8gVXNlIHRoZSBwYXNzZWQgZnVuY3Rpb24gcmVmZXJlbmNlCi&#xa;AgICAgICAgICAgICAgICAgICAgYWRkTW9kZWxUYWdSZWN1cnNpdmVseUZ1bmMoYWRkZWRCcmFu&#xa;Y2hSb290LCBtb2RlbCwgbG9nZ2VyKQogICAgICAgICAgICAgICAgICAgIGxvZ2dlci5pbmZvKC&#xa;JDb21wYXJlTm9kZXM6IFRhZyAnTExNOiR7bW9kZWwucmVwbGFjZSgnLycsJ18nKX0nIGFwcGxp&#xa;ZWQgdG8gY29tcGFyaXNvbiBicmFuY2ggc3RhcnRpbmcgd2l0aCBub2RlOiAke2FkZGVkQnJhbm&#xa;NoUm9vdC50ZXh0fSIpCiAgICAgICAgICAgICAgICB9IGNhdGNoIChFeGNlcHRpb24gZSkgewog&#xa;ICAgICAgICAgICAgICAgICAgIGxvZ2dlci53YXJuKCJGYWlsZWQgdG8gYXBwbHkgbm9kZSB0YW&#xa;dnZXIgZnVuY3Rpb24iLCBlIGFzIFRocm93YWJsZSkKICAgICAgICAgICAgICAgIH0KICAgICAg&#xa;ICAgICAgfSBlbHNlIGlmIChhZGRNb2RlbFRhZ1JlY3Vyc2l2ZWx5RnVuYyA9PSBudWxsKSB7Ci&#xa;AgICAgICAgICAgICAgICBsb2dnZXIud2FybigiQ29tcGFyZU5vZGVzOiBOb2RlIHRhZ2dpbmcg&#xa;ZnVuY3Rpb24gd2FzIG5vdCBwcm92aWRlZCBmb3Igbm9kZTogJHtub2RlUHJveHkudGV4dH0iKQ&#xa;ogICAgICAgICAgICB9IGVsc2UgewogICAgICAgICAgICAgICAgbG9nZ2VyLndhcm4oIkNvbXBh&#xa;cmVOb2RlczogQ291bGQgbm90IGlkZW50aWZ5IG5ld2x5IGFkZGVkIGNvbXBhcmlzb24gYnJhbm&#xa;NoIHJvb3QgZm9yIHRhZ2dpbmcgb24gbm9kZTogJHtub2RlUHJveHkudGV4dH0iKQogICAgICAg&#xa;ICAgICB9CiAgICAgICAgfSBjYXRjaCAoRXhjZXB0aW9uIGUpIHsKICAgICAgICAgICAgLy8gRm&#xa;9yY2UgbWVzc2FnZSB0byBTdHJpbmcgYW5kIGVuc3VyZSBleGNlcHRpb24gaXMgVGhyb3dhYmxl&#xa;CiAgICAgICAgICAgIGxvZ2dlci53YXJuKCJFcnJvciBjYWxsaW5nIGFwcGVuZFRleHRPdXRsaW&#xa;5lQXNCcmFuY2ggb3IgdGFnZ2luZyBmb3Igbm9kZSAke25vZGVQcm94eS50ZXh0fSIudG9TdHJp&#xa;bmcoKSwgZSBhcyBUaHJvd2FibGUpCiAgICAgICAgfQogICAgfQp9CgoKLy8gUmV0dXJuIHRoZS&#xa;BjbGFzcyBmb3IgdXNlIGluIHNjcmlwdHMKcmV0dXJuIFsKICAgIE5vZGVIZWxwZXI6IE5vZGVI&#xa;ZWxwZXJDbGFzcwpdCg==" ID="ID_972334556" CREATED="1743822883396" MODIFIED="1743822883397"/>
</node>
<node TEXT="Exceptions.groovy" FOLDED="true" ID="ID_1312598981" CREATED="1743817255196" MODIFIED="1743817255196">
<node TEXT="Ly8gVGhpcyBmaWxlIGlzIG5vIGxvbmdlciB1c2VkIGFuZCBjYW4gYmUgZGVsZXRlZAo=" ID="ID_1543211407" CREATED="1743822883398" MODIFIED="1743822883398"/>
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
<node TEXT="PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyND&#xa;A2IDI0MDYiPjxwYXRoIGQ9Ik0xIDU3OC40QzEgMjU5LjUgMjU5LjUgMSA1NzguNCAxaDEyNDku&#xa;MWMzMTkgMCA1NzcuNSAyNTguNSA1NzcuNSA1NzcuNFYyNDA2SDU3OC40QzI1OS41IDI0MDYgMS&#xa;AyMTQ3LjUgMSAxODI4LjZWNTc4LjR6IiBmaWxsPSIjNzRhYTljIi8+PHBhdGggZD0iTTExMDcu&#xa;MyAyOTkuMWMtMTk4IDAtMzczLjkgMTI3LjMtNDM1LjIgMzE1LjNDNTQ0LjggNjQwLjYgNDM0Lj&#xa;kgNzIwLjIgMzcwLjUgODMzYy05OS4zIDE3MS40LTc2LjYgMzg2LjkgNTYuNCA1MzMuOC00MS4x&#xa;IDEyMy4xLTI3IDI1Ny43IDM4LjYgMzY5LjIgOTguNyAxNzIgMjk3LjMgMjYwLjIgNDkxLjYgMj&#xa;E5LjIgODYuMSA5NyAyMDkuOCAxNTIuMyAzMzkuNiAxNTEuOCAxOTggMCAzNzMuOS0xMjcuMyA0&#xa;MzUuMy0zMTUuMyAxMjcuNS0yNi4zIDIzNy4yLTEwNS45IDMwMS0yMTguNSA5OS45LTE3MS40ID&#xa;c3LjItMzg2LjktNTUuOC01MzMuOXYtLjZjNDEuMS0xMjMuMSAyNy0yNTcuOC0zOC42LTM2OS44&#xa;LTk4LjctMTcxLjQtMjk3LjMtMjU5LjYtNDkxLTIxOC42LTg2LjYtOTYuOC0yMTAuNS0xNTEuOC&#xa;0zNDAuMy0xNTEuMnptMCAxMTcuNS0uNi42Yzc5LjcgMCAxNTYuMyAyNy41IDIxNy42IDc4LjQt&#xa;Mi41IDEuMi03LjQgNC4zLTExIDYuMUw5NTIuOCA3MDkuM2MtMTguNCAxMC40LTI5LjQgMzAtMj&#xa;kuNCA1MS40VjEyNDhsLTE1NS4xLTg5LjRWNzU1LjhjLS4xLTE4Ny4xIDE1MS42LTMzOC45IDMz&#xa;OS0zMzkuMnptNDM0LjIgMTQxLjljMTIxLjYtLjIgMjM0IDY0LjUgMjk0LjcgMTY5LjggMzkuMi&#xa;A2OC42IDUzLjkgMTQ4LjggNDAuNCAyMjYuNS0yLjUtMS44LTcuMy00LjMtMTAuNC02LjFsLTM2&#xa;MC40LTIwOC4yYy0xOC40LTEwLjQtNDEtMTAuNC01OS40IDBMMTAyNCA5ODQuMlY4MDUuNEwxMz&#xa;cyLjcgNjA0YzUxLjMtMjkuNyAxMDkuNS00NS40IDE2OC44LTQ1LjV6TTY1MCA3NDMuNXY0Mjcu&#xa;OWMwIDIxLjQgMTEgNDAuNCAyOS40IDUxLjRsNDIxLjcgMjQzLTE1NS43IDkwTDU5Ny4yIDEzNT&#xa;VjLTE2Mi05My44LTIxNy40LTMwMC45LTEyMy44LTQ2Mi44QzUxMy4xIDgyMy42IDU3NS41IDc3&#xa;MSA2NTAgNzQzLjV6bTgwNy45IDEwNiAzNDguOCAyMDAuOGMxNjIuNSA5My43IDIxNy42IDMwMC&#xa;42IDEyMy44IDQ2Mi44bC42LjZjLTM5LjggNjguNi0xMDIuNCAxMjEuMi0xNzYuNSAxNDguMnYt&#xa;NDI4YzAtMjEuNC0xMS00MS0yOS40LTUxLjRsLTQyMi4zLTI0My43IDE1NS04OS4zek0xMjAxLj&#xa;cgOTk3bDE3Ny44IDEwMi44djIwNS4xbC0xNzcuOCAxMDIuOC0xNzcuOC0xMDIuOHYtMjA1LjFM&#xa;MTIwMS43IDk5N3ptMjc5LjUgMTYxLjYgMTU1LjEgODkuNHY0MDIuMmMwIDE4Ny4zLTE1MiAzMz&#xa;kuMi0zMzkgMzM5LjJ2LS42Yy03OS4xIDAtMTU2LjMtMjcuNi0yMTctNzguNCAyLjUtMS4yIDgt&#xa;NC4zIDExLTYuMWwzNjAuNC0yMDcuNWMxOC40LTEwLjQgMzAtMzAgMjkuNC01MS40bC4xLTQ4Ni&#xa;44ek0xMzgwIDE0MjEuOXYxNzguOGwtMzQ4LjggMjAwLjhjLTE2Mi41IDkzLjEtMzY5LjYgMzgt&#xa;NDYzLjQtMTIzLjdoLjZjLTM5LjgtNjgtNTQtMTQ4LjgtNDAuNS0yMjYuNSAyLjUgMS44IDcuNC&#xa;A0LjMgMTAuNCA2LjFsMzYwLjQgMjA4LjJjMTguNCAxMC40IDQxIDEwLjQgNTkuNCAwbDQyMS45&#xa;LTI0My43eiIgZmlsbD0id2hpdGUiLz48L3N2Zz4=" ID="ID_456409417" CREATED="1743822883380" MODIFIED="1743822883382"/>
</node>
<node TEXT="${name}-icon.svg" FOLDED="true" ID="ID_510373247" CREATED="1685111823979" MODIFIED="1685111823979">
<attribute_layout VALUE_WIDTH="100 pt"/>
<node TEXT="PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyND&#xa;A2IDI0MDYiPjxwYXRoIGQ9Ik0xIDU3OC40QzEgMjU5LjUgMjU5LjUgMSA1NzguNCAxaDEyNDku&#xa;MWMzMTkgMCA1NzcuNSAyNTguNSA1NzcuNSA1NzcuNFYyNDA2SDU3OC40QzI1OS41IDI0MDYgMS&#xa;AyMTQ3LjUgMSAxODI4LjZWNTc4LjR6IiBmaWxsPSIjNzRhYTljIi8+PHBhdGggZD0iTTExMDcu&#xa;MyAyOTkuMWMtMTk4IDAtMzczLjkgMTI3LjMtNDM1LjIgMzE1LjNDNTQ0LjggNjQwLjYgNDM0Lj&#xa;kgNzIwLjIgMzcwLjUgODMzYy05OS4zIDE3MS40LTc2LjYgMzg2LjkgNTYuNCA1MzMuOC00MS4x&#xa;IDEyMy4xLTI3IDI1Ny43IDM4LjYgMzY5LjIgOTguNyAxNzIgMjk3LjMgMjYwLjIgNDkxLjYgMj&#xa;E5LjIgODYuMSA5NyAyMDkuOCAxNTIuMyAzMzkuNiAxNTEuOCAxOTggMCAzNzMuOS0xMjcuMyA0&#xa;MzUuMy0zMTUuMyAxMjcuNS0yNi4zIDIzNy4yLTEwNS45IDMwMS0yMTguNSA5OS45LTE3MS40ID&#xa;c3LjItMzg2LjktNTUuOC01MzMuOXYtLjZjNDEuMS0xMjMuMSAyNy0yNTcuOC0zOC42LTM2OS44&#xa;LTk4LjctMTcxLjQtMjk3LjMtMjU5LjYtNDkxLTIxOC42LTg2LjYtOTYuOC0yMTAuNS0xNTEuOC&#xa;0zNDAuMy0xNTEuMnptMCAxMTcuNS0uNi42Yzc5LjcgMCAxNTYuMyAyNy41IDIxNy42IDc4LjQt&#xa;Mi41IDEuMi03LjQgNC4zLTExIDYuMUw5NTIuOCA3MDkuM2MtMTguNCAxMC40LTI5LjQgMzAtMj&#xa;kuNCA1MS40VjEyNDhsLTE1NS4xLTg5LjRWNzU1LjhjLS4xLTE4Ny4xIDE1MS42LTMzOC45IDMz&#xa;OS0zMzkuMnptNDM0LjIgMTQxLjljMTIxLjYtLjIgMjM0IDY0LjUgMjk0LjcgMTY5LjggMzkuMi&#xa;A2OC42IDUzLjkgMTQ4LjggNDAuNCAyMjYuNS0yLjUtMS44LTcuMy00LjMtMTAuNC02LjFsLTM2&#xa;MC40LTIwOC4yYy0xOC40LTEwLjQtNDEtMTAuNC01OS40IDBMMTAyNCA5ODQuMlY4MDUuNEwxMz&#xa;cyLjcgNjA0YzUxLjMtMjkuNyAxMDkuNS00NS40IDE2OC44LTQ1LjV6TTY1MCA3NDMuNXY0Mjcu&#xa;OWMwIDIxLjQgMTEgNDAuNCAyOS40IDUxLjRsNDIxLjcgMjQzLTE1NS43IDkwTDU5Ny4yIDEzNT&#xa;VjLTE2Mi05My44LTIxNy40LTMwMC45LTEyMy44LTQ2Mi44QzUxMy4xIDgyMy42IDU3NS41IDc3&#xa;MSA2NTAgNzQzLjV6bTgwNy45IDEwNiAzNDguOCAyMDAuOGMxNjIuNSA5My43IDIxNy42IDMwMC&#xa;42IDEyMy44IDQ2Mi44bC42LjZjLTM5LjggNjguNi0xMDIuNCAxMjEuMi0xNzYuNSAxNDguMnYt&#xa;NDI4YzAtMjEuNC0xMS00MS0yOS40LTUxLjRsLTQyMi4zLTI0My43IDE1NS04OS4zek0xMjAxLj&#xa;cgOTk3bDE3Ny44IDEwMi44djIwNS4xbC0xNzcuOCAxMDIuOC0xNzcuOC0xMDIuOHYtMjA1LjFM&#xa;MTIwMS43IDk5N3ptMjc5LjUgMTYxLjYgMTU1LjEgODkuNHY0MDIuMmMwIDE4Ny4zLTE1MiAzMz&#xa;kuMi0zMzkgMzM5LjJ2LS42Yy03OS4xIDAtMTU2LjMtMjcuNi0yMTctNzguNCAyLjUtMS4yIDgt&#xa;NC4zIDExLTYuMWwzNjAuNC0yMDcuNWMxOC40LTEwLjQgMzAtMzAgMjkuNC01MS40bC4xLTQ4Ni&#xa;44ek0xMzgwIDE0MjEuOXYxNzguOGwtMzQ4LjggMjAwLjhjLTE2Mi41IDkzLjEtMzY5LjYgMzgt&#xa;NDYzLjQtMTIzLjdoLjZjLTM5LjgtNjgtNTQtMTQ4LjgtNDAuNS0yMjYuNSAyLjUgMS44IDcuNC&#xa;A0LjMgMTAuNCA2LjFsMzYwLjQgMjA4LjJjMTguNCAxMC40IDQxIDEwLjQgNTkuNCAwbDQyMS45&#xa;LTI0My43eiIgZmlsbD0id2hpdGUiLz48L3N2Zz4=" ID="ID_109621004" CREATED="1743822883383" MODIFIED="1743822883383"/>
</node>
</node>
</node>
</map>
