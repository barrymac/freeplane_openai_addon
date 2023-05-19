<map version="freeplane 1.11.1">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Ask-GPT-AddOn" FOLDED="false" ID="ID_696401721" CREATED="1684435528719" MODIFIED="1684507405709" LINK="https://github.com/dpolivaev/freeplane_openai_addon" BACKGROUND_COLOR="#97c7dc" STYLE="oval" MAX_WIDTH="20 cm">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" mapUsesOwnSaveOptions="true" save_modification_times="false" save_last_visited_node="default" show_note_icons="true" associatedTemplateLocation="template:/standard-1.6.mm" save_folding="save_folding_if_map_is_changed" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="bottom_or_right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
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
<hook NAME="AutomaticEdgeColor" COUNTER="17" RULE="ON_BRANCH_CREATION"/>
<attribute_layout NAME_WIDTH="112.61538 pt" VALUE_WIDTH="333.23076 pt"/>
<attribute NAME="name" VALUE="AskGPTAddOn"/>
<attribute NAME="version" VALUE="v0.3.0"/>
<attribute NAME="author" VALUE="barry, dpolivaev"/>
<attribute NAME="freeplaneVersionFrom" VALUE="v1.11.3" OBJECT="org.freeplane.features.format.FormattedObject|java.lang.String&amp;#x7c;v1.11.3|number:decimal:#0.####"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="homepage" VALUE="github.com/dpolivaev/freeplane_openai_addon"/>
<attribute NAME="downloadUrl" VALUE="https://${homepage}/releases/download/${version}/"/>
<attribute NAME="changelogUrl" VALUE="https://${homepage}/releases/latest/download/history.md"/>
<attribute NAME="addonsMenu" VALUE="/menu_bar/OpenAI"/>
<attribute NAME="updateUrl" VALUE="https://${homepage}/releases/latest/download/version.properties"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
    </ul>
  </body>
</html></richcontent>
<node TEXT="description" POSITION="top_or_left" ID="ID_365830098" CREATED="1684435528724" MODIFIED="1684435528724">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      Description would be awkward to edit as an attribute.
    </p>
    <p>
      So you have to put the add-on description as a child of the <i>'description'</i>&nbsp;node.
    </p>
    <p>
      To translate the description you have to define a translation for the key 'addons.${name}.description'.
    </p>
  </body>
</html></richcontent>
<node TEXT="Add on to use OpenAI GPT API to generate mind map content" ID="ID_110054152" CREATED="1684435528724" MODIFIED="1684500854104"/>
</node>
<node TEXT="changes" POSITION="top_or_left" ID="ID_138977336" CREATED="1684435528724" MODIFIED="1684435528724">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="license" FOLDED="true" POSITION="top_or_left" ID="ID_950695085" CREATED="1684435528724" MODIFIED="1684501151623">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
      The License text has to be entered as a child of the <i>'license'</i>&nbsp;node, either as plain text or as HTML.
    </p>
  </body>
</html></richcontent>
<node TEXT="&#xa;This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 2 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the&#xa;GNU General Public License for more details.&#xa;" ID="ID_726417928" CREATED="1684435528725" MODIFIED="1684501151615"/>
</node>
<node TEXT="preferences.xml" POSITION="top_or_left" ID="ID_902316079" CREATED="1684435528725" MODIFIED="1684435528725">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">The child node contains the add-on configuration as an extension to mindmapmodemenu.xml (in Tools-&gt;Preferences-&gt;Add-ons). </font>
    </p>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">Every property in the configuration should receive a default value in <i>default.properties</i>&nbsp;node.</font>
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="default.properties" POSITION="top_or_left" ID="ID_1363888784" CREATED="1684505300337" MODIFIED="1684506069649">
<attribute_layout NAME_WIDTH="138.75 pt" VALUE_WIDTH="138.75 pt"/>
<attribute NAME="${name}.icon" VALUE="/images/${name}.svg"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="translations" POSITION="top_or_left" ID="ID_1606264590" CREATED="1684435528726" MODIFIED="1684435528726">
<edge COLOR="#7c0000"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="en" ID="ID_1097454652" CREATED="1684435528726" MODIFIED="1684504699899">
<attribute_layout NAME_WIDTH="159 pt" VALUE_WIDTH="102 pt"/>
<attribute NAME="addons.${name}" VALUE="Ask GPT AddOn"/>
<attribute NAME="addons.${name}.openAiGpt" VALUE="AskGPT"/>
</node>
</node>
<node TEXT="deinstall" POSITION="top_or_left" ID="ID_1927303474" CREATED="1684435528727" MODIFIED="1684507307377">
<edge COLOR="#00007c"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/openAiGpt.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/images/${name}.svg"/>
<attribute NAME="delete" VALUE="${installationbase}/images/${name}-icon.svg"/>
</node>
<node TEXT="scripts" POSITION="bottom_or_right" ID="ID_684917236" CREATED="1684435528727" MODIFIED="1684435528727">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
      &nbsp;&nbsp;&nbsp;- Defines the menu location, defaults a sub menu 'main_menu_scripting/addons.${name}'.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;-&nbsp;Use developer tool menuItemInfo to inspect menu location keys.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * menuTitleKey: &lt;key&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The menu item title will be looked up under the translation key &lt;key&gt; - don't forget to define its translation.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * executionMode: &lt;mode&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The execution mode as described in the Freeplane wiki (http://freeplane.sourceforge.net/wiki/index.php/Scripting)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SINGLE_NODE: Execute the script once. The <i>node</i>&nbsp;variable is set to the selected node.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SELECTED_NODE: Execute the script n times for n selected nodes, once for each node.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SELECTED_NODE_RECURSIVELY: Execute the script on every selected node and recursively on all of its children.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- In doubt use ON_SINGLE_NODE.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * keyboardShortcut: &lt;shortcut&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Optional: keyboard combination / accelerator for this script, e.g. control alt I
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Use lowercase letters for modifiers and uppercase for letters. Use no + signs.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The available key names are listed at http://download.oracle.com/javase/1.4.2/docs/api/java/awt/event/KeyEvent.html#VK_0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In the list only entries with a 'VK_' prefix count. Omit the prefix in the shortcut definition.
    </p>
    <p>
      
    </p>
    <p>
      * Permissions&nbsp;that the script(s) require, each either false or true:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_asking
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_file_restriction: permission to read files
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_write_restriction: permission to create/change/delete files
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_exec_restriction: permission to execute other programs
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_network_restriction: permission to access the network
    </p>
    <p>
      &nbsp;&nbsp;Notes:
    </p>
    <p>
      &nbsp;&nbsp;- The set of permissions is fixed.
    </p>
    <p>
      &nbsp;&nbsp;- Don't change the attribute names, don't omit one.
    </p>
    <p>
      &nbsp;&nbsp;- Set the values either to true or to false
    </p>
    <p>
      &nbsp;&nbsp;- In any case set execute_scripts_without_asking to true unless you want to annoy users.
    </p>
  </body>
</html></richcontent>
<node TEXT="openAiGpt.groovy" FOLDED="true" ID="ID_231711959" CREATED="1684435528727" MODIFIED="1684435528727">
<attribute_layout NAME_WIDTH="202.49999 pt" VALUE_WIDTH="156.75 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.openAiGpt"/>
<attribute NAME="menuLocation" VALUE="${addonsMenu}/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="true"/>
<node TEXT="import groovy.swing.SwingBuilder&#xa;import java.awt.GridBagConstraints&#xa;import java.awt.GridBagLayout&#xa;import java.awt.FlowLayout&#xa;import javax.swing.*&#xa;import java.nio.file.*&#xa;import groovy.json.JsonOutput&#xa;import groovy.json.JsonSlurper&#xa;&#xa;String apiKey = config.getProperty(&apos;openai.key&apos;, &apos;&apos;)&#xa;String gptModel = config.getProperty(&apos;openai.gpt_model&apos;, &apos;gpt-3.5-turbo&apos;)&#xa;int maxResponseLength = config.getProperty(&apos;openai.max_response_length&apos;, 1000)&#xa;int selectedSystemMessageIndex = config.getProperty(&apos;openai.system_message_index&apos;, 0)&#xa;int selectedUserMessageIndex = config.getProperty(&apos;openai.user_message_index&apos;, 0)&#xa;&#xa;String systemMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptSystemMessages.txt&quot;&#xa;String userMessagesFilePath = &quot;${config.freeplaneUserDirectory}/chatGptUserMessages.txt&quot;&#xa;&#xa;String defaultSystemMessages = &apos;&apos;&apos;&#xa;You are creative assistent.&#xa;Please generate a list of ideas related to the topic given by user.&#xa;Separate each idea with a newline.&#xa;&#xa;Don&apos;t give it any heading like &quot;Ideas&quot;.&#xa;Don&apos;t enumerate generated ideas.&#xa;Don&apos;t use any indentation characters like bullet points, asterics or minus characters.&#xa;Write your ideas one per line.&#xa;Don&apos;t repeat known facts.&#xa;Don&apos;t comment the task itself.&#xa;&#xa;Concentrate on the topic only.&#xa;Cover as many aspects of the topic as possible as deeply as possible.&#xa;======&#xa;Learn the format &quot;outline&quot; from the example below and create similar outlines for topics given by the user.&#xa;Strictly follow the format.  Use multiple nested levels. Start a new paragraph for each new sentence. Suppress any bullet points or other characters like - at the beginning of the list, use just the formatting as in the example     &#xa;&#xa;Don&apos;t give it any title. &#xa;&#xa;Concentrate on the topic only. Cover as many aspects of the topic as possible as deeply as possible.&#xa;&#xa;Don&apos;t repeat known facts.&#xa;&#xa;Don&apos;t comment the task itself.&#xa;&#xa;Topis: Discovery of Space&#xa;&#xa;Example:&#xa;Introduction&#xa;    The discovery of space refers to the exploration of the universe beyond Earth, including celestial bodies such as planets, stars, and galaxies.&#xa;Historical Background&#xa;    The first known observation of space was made by ancient civilizations, including the Greeks and Egyptians, who used the stars for navigation and as a basis for their calendars.&#xa;    In 1957, the Soviet Union launched the first artificial satellite, Sputnik 1, sparking the Space Race between the United States and the Soviet Union.&#xa;Major Accomplishments&#xa;    1961 - Yuri Gagarin becomes the first human to travel to space.&#xa;    1969 - Neil Armstrong and Buzz Aldrin become the first humans to walk on the Moon.&#xa;    1971 - The Soviet Union launches the first space station, Salyut 1.&#xa;    1998 - The first components of the International Space Station (ISS) are launched into orbit.&#xa;Space Agencies&#xa;    National Aeronautics and Space Administration (NASA) - United States&#xa;    Roscosmos - Russia&#xa;    European Space Agency (ESA) - Europe&#xa;    China National Space Administration (CNSA) - China&#xa;    Indian Space Research Organisation (ISRO) - India&#xa;Spacecraft and Technology&#xa;    Satellites - used for communication, navigation, and observation of Earth and space.&#xa;    Space Probes - used for exploration and data collection of celestial bodies.&#xa;    Space Shuttles - reusable spacecraft used for carrying crew and cargo to and from space.&#xa;    Rockets - used for launching spacecraft into orbit and beyond.&#xa;Challenges and Risks&#xa;    Space exploration poses various challenges and risks, including:&#xa;        Exposure to radiation and microgravity can have negative effects on human health.&#xa;        Space debris can pose a threat to spacecraft and astronauts.&#xa;        The high cost of space exploration and the risk of equipment failure.&#xa;Benefits and Impact&#xa;    Space exploration has led to numerous scientific discoveries and technological advancements, including:&#xa;        Improved weather forecasting and disaster management.&#xa;        Development of new materials and technologies for use on Earth.&#xa;        Advancements in medical research and technology.&#xa;        Increased understanding of the universe and our place in it.&#xa;    The space industry also provides economic benefits, generating jobs and revenue for countries involved in space exploration.&#xa;======&#xa;Learn the format &quot;trigger word outline&quot; from the example below and create similar trigger word outlines for topics given by the user.&#xa;Strictly follow the format.  Use multiple nested levels. Always break sentences. Put each word on its own line. Use no &apos;-&apos; characters or bullet points. &#xa;&#xa;Don&apos;t give it any title. &#xa;&#xa;Concentrate on the topic only. Cover as many aspects of the topic as possible as deeply as possible.&#xa;&#xa;Don&apos;t repeat known facts.&#xa;&#xa;Don&apos;t comment the task itself.&#xa;&#xa;Split each sentence into multiple parts separating parts of the sentence as in the example.&#xa;&#xa;Topic: War on Another Planet&#xa;&#xa;Example:&#xa;Time Line&#xa;    2150&#xa;        Humans&#xa;            Discover&#xa;                Planet Z&#xa;                    Rich in Resources&#xa;                        Gold&#xa;                        Diamond&#xa;                        Oil&#xa;                    Inhabited by&#xa;                        Aliens&#xa;                            Peaceful at First&#xa;                                Welcome Humans&#xa;                            Later&#xa;                                Start Claiming Resources&#xa;    2155&#xa;        Humans&#xa;            Start Mining Operations&#xa;                Aliens&#xa;                    Protest&#xa;                        Humans&#xa;                            Ignore&#xa;                                Tensions Rise&#xa;    2160&#xa;        Aliens&#xa;            Attack&#xa;                Human Mining Facilities&#xa;                    Humans&#xa;                        Respond with Force&#xa;                            War Breaks Out&#xa;Where&#xa;    On Planet Z&#xa;        Terrain&#xa;            Mostly Desert&#xa;                Harsh Conditions&#xa;            Few Oases&#xa;                Strategic Importance&#xa;        Underground Tunnels&#xa;            Used for&#xa;                Transport&#xa;                Communication&#xa;                Hiding&#xa;        Skies&#xa;            Filled with&#xa;                Alien Aircrafts&#xa;                    Advanced Technology&#xa;                        Hard to Defeat&#xa;                Human Ships&#xa;                    More Numerous&#xa;                    Less Advanced&#xa;                        Cheaply Produced&#xa;    Other Planets&#xa;        Allies&#xa;            Humans&#xa;                Seek Help from&#xa;                    Other Colonized Planets&#xa;                        Mostly Friendly&#xa;        Enemies&#xa;            Aliens&#xa;                Also Have Allies&#xa;                    Powerful and Dangerous&#xa;        Space Battles&#xa;            Happen in&#xa;                Open Space&#xa;                Near Planets&#xa;                Near Moons&#xa;Impact&#xa;    Can Determine&#xa;        The Outcome of the War&#xa;        The Fate of the Galaxy&#xa;           &apos;&apos;&apos;.trim();&#xa;           def userSystemMessages = &apos;&apos;&apos;&#xa;Known facts:&#xa;$ancestorContents&#xa;$siblingContents&#xa;&#xa;Topic: $nodeContent&#xa;&#xa;Language: English&#xa;            &apos;&apos;&apos;.trim();&#xa;&#xa;def expandMessage(String message) {&#xa;    def node = c.selected&#xa;    def pathToRoot = node.pathToRoot&#xa;    pathToRoot = pathToRoot.take(pathToRoot.size() - 1)&#xa;    String ancestorContents = pathToRoot*.plainText.join(&apos;\n&apos;)&#xa;    String siblingContents = node.isRoot()?&apos;&apos;: node.parent.children.findAll { it != node } *.plainText.join(&apos;\n&apos;)&#xa;    def binding = [&#xa;        nodeContent: node.plainText,&#xa;        ancestorContents: ancestorContents,&#xa;        siblingContents:siblingContents&#xa;        ]&#xa;    def engine = new groovy.text.SimpleTemplateEngine()&#xa;    def template = engine.createTemplate(message).make(binding)&#xa;    def expandedMessage = template.toString()&#xa;    return expandedMessage&#xa;}&#xa;&#xa;def generateBranches(String apiKey, String systemMessage, String userMessage, String model, Integer maxTokens) {&#xa;    List&lt;Map&lt;String, String&gt;&gt; messages = [&#xa;            [role: &apos;system&apos;, content: systemMessage],&#xa;            [role: &apos;user&apos;, content: userMessage]&#xa;    ]&#xa;    def node = c.selected&#xa;    def workerThread = new Thread({&#xa;        def response = call_openai_chat(apiKey, messages, model, maxTokens)&#xa;        logger.info(&quot;GPT response: $response&quot;)&#xa;        SwingUtilities.invokeLater {&#xa;            node.appendTextOutlineAsBranch(response)&#xa;        }&#xa;    })&#xa;    workerThread.setContextClassLoader(getClass().classLoader)&#xa;    workerThread.start()&#xa;    logger.info(userMessage)&#xa;    ui.informationMessage(ui.currentRootComponent, userMessage, &quot;Wait. Your question:&quot;)&#xa;}&#xa;&#xa;&#xa;def call_openai_chat(String apiKey, List&lt;Map&lt;String, String&gt;&gt; messages,&#xa;                     String model,&#xa;                     Integer max_tokens, &#xa;                     Double temperature = 0.7,&#xa;                     Double top_p = 1, Integer n = 1, Boolean stream = false,&#xa;                     Integer logprobs = null, Boolean echo = false, List&lt;String&gt; stop = null,&#xa;                     Double presence_penalty = 0, Double frequency_penalty = 0,&#xa;                     Integer best_of = 1, Map&lt;String, Integer&gt; logit_bias = null,&#xa;                     String user = null) {&#xa;&#xa;    def payloadMap = [&#xa;            &apos;model&apos;            : model,&#xa;            &apos;messages&apos;         : messages,&#xa;            &apos;temperature&apos;      : temperature,&#xa;            &apos;max_tokens&apos;       : max_tokens,&#xa;            &apos;top_p&apos;            : top_p,&#xa;            &apos;n&apos;                : n,&#xa;            &apos;stream&apos;           : stream,&#xa;//            &apos;echo&apos;             : echo,&#xa;            &apos;presence_penalty&apos; : presence_penalty,&#xa;            &apos;frequency_penalty&apos;: frequency_penalty,&#xa;//            &apos;best_of&apos;          : best_of&#xa;    ]&#xa;&#xa;    if (logprobs != null) payloadMap[&apos;logprobs&apos;] = logprobs&#xa;    if (stop != null) payloadMap[&apos;stop&apos;] = stop&#xa;    if (logit_bias != null) payloadMap[&apos;logit_bias&apos;] = logit_bias&#xa;    if (user != null) payloadMap[&apos;user&apos;] = user&#xa;&#xa;    def responseText = make_api_call(apiKey, payloadMap)&#xa;&#xa;    if(responseText.isEmpty())&#xa;        return &quot;&quot;&#xa;&#xa;    def jsonSlurper = new JsonSlurper()&#xa;    def jsonResponse = jsonSlurper.parseText(responseText)&#xa;    def assistantMessage = jsonResponse.choices[0].message.content&#xa;    println(assistantMessage)&#xa;    return assistantMessage&#xa;}&#xa;&#xa;// Function to make the API call&#xa;def make_api_call(String apiKey, Map&lt;String, Object&gt; payloadMap) {&#xa;    def responseText = &quot;&quot;&#xa;&#xa;    try {&#xa;        String apiUrl = &apos;https://api.openai.com/v1/chat/completions&apos;&#xa;        def post = new URL(apiUrl).openConnection()&#xa;        post.setRequestMethod(&quot;POST&quot;)&#xa;        post.setDoOutput(true)&#xa;        post.setRequestProperty(&quot;Content-Type&quot;, &quot;application/json&quot;)&#xa;        post.setRequestProperty(&quot;Authorization&quot;, &quot;Bearer &quot; + apiKey)&#xa;&#xa;        def payload = JsonOutput.toJson(payloadMap)&#xa;        post.getOutputStream().write(payload.getBytes(&quot;UTF-8&quot;))&#xa;&#xa;        def postRC = post.getResponseCode()&#xa;&#xa;        if (postRC.equals(200)) {&#xa;            responseText = post.getInputStream().getText()&#xa;            logger.info(&quot;GPT response: $responseText&quot;)&#xa;        } else if (postRC.equals(401)) {&#xa;            ui.errorMessage(&quot;Invalid authentication or incorrect API key provided.&quot;)&#xa;        } else if (postRC.equals(404)) {&#xa;            ui.errorMessage(&quot;You must be a member of an organization to use the API.&quot;)&#xa;        } else if (postRC.equals(429)) {&#xa;            ui.errorMessage(&quot;Rate limit reached for requests or current quota exceeded.&quot;)&#xa;        } else {&#xa;            ui.errorMessage(&quot;Unhandled error code returned from API.&quot;)&#xa;        }&#xa;&#xa;    } catch (Exception e) {&#xa;        ui.errorMessage(e.toString())&#xa;    }&#xa;&#xa;    return responseText&#xa;}&#xa;&#xa;&#xa;def loadMessagesFromFile(String filePath, String fallback) {&#xa;    def messages&#xa;    def fileContent&#xa;    try {&#xa;        fileContent = new File(filePath).text&#xa;    } catch (Exception e) {&#xa;        fileContent = fallback&#xa;        new File(filePath).write(fallback)&#xa;    }&#xa;    messages = fileContent.split(/======+\n/)*.trim()&#xa;    return messages&#xa;}&#xa;&#xa;def saveMessagesToFile(String filePath, List messages) {&#xa;    def fileContent = messages.join(&quot;\n======\n&quot;)&#xa;    new File(filePath).write(fileContent)&#xa;}&#xa;&#xa;class MessageArea {&#xa;    JTextArea textArea&#xa;    JComboBox comboBox&#xa;}&#xa;&#xa;MessageArea createMessageSection(def swingBuilder, def messages, def title, int initialIndex, def constraints, def weighty) {&#xa;    def comboBoxModel = new DefaultComboBoxModel()&#xa;    messages.each { comboBoxModel.addElement(it.replaceAll(/\s+/, &apos; &apos;).take(120)) }&#xa;    def messageComboBox, messageText&#xa;    def selectedIndex = initialIndex&#xa;&#xa;    constraints.gridy++&#xa;    swingBuilder.label(&quot;${title}:&quot;, constraints: constraints)&#xa;    constraints.gridy++&#xa;    messageComboBox = swingBuilder.comboBox(model: comboBoxModel, constraints: constraints)&#xa;    messageComboBox.selectedIndex = initialIndex&#xa;&#xa;    constraints.gridy++&#xa;    constraints.weighty = 1.0 * weighty&#xa;    swingBuilder.scrollPane(constraints: constraints) {&#xa;        messageText = textArea(rows: 5 * weighty, columns: 80, tabSize: 3, lineWrap: true, wrapStyleWord: true, text: messages[initialIndex], caretPosition: 0) {}&#xa;    }&#xa;    messageComboBox.addActionListener { actionEvent -&gt;&#xa;        if (selectedIndex != -1 &amp;&amp; messageComboBox.selectedIndex != selectedIndex) {&#xa;            messages[selectedIndex] = messageText.text&#xa;            comboBoxModel.removeElementAt(selectedIndex)&#xa;            comboBoxModel.insertElementAt(messages[selectedIndex].replaceAll(/\s+/, &apos; &apos;).take(120), selectedIndex)&#xa;        }&#xa;        selectedIndex = messageComboBox.selectedIndex&#xa;        messageText.text = messages[selectedIndex]&#xa;        messageText.caretPosition = 0&#xa;    }&#xa;    constraints.gridy++&#xa;    constraints.weighty = 0.0&#xa;    swingBuilder.panel(layout: new FlowLayout(), constraints: constraints) {&#xa;        button(action: swingBuilder.action(name: &quot;Reset Changes ${title}&quot;.toString()) {&#xa;            messageText.text = messages[selectedIndex]&#xa;            messageText.caretPosition = 0       &#xa;        })&#xa;        button(action: swingBuilder.action(name: &quot;Add New Message ${title}&quot;.toString()) {&#xa;            messages.add(&quot;&quot;)&#xa;            comboBoxModel.addElement(&quot;&quot;)&#xa;        })&#xa;        button(action: swingBuilder.action(name: &quot;Delete Current Message ${title}&quot;.toString()) {&#xa;            if (selectedIndex != -1) {&#xa;                messages.remove(selectedIndex)&#xa;                comboBoxModel.removeElementAt(selectedIndex)&#xa;                selectedIndex = -1&#xa;            }&#xa;        })&#xa;    }&#xa;    return new MessageArea(textArea: messageText, comboBox: messageComboBox)&#xa;}&#xa;&#xa;def swingBuilder = new SwingBuilder()&#xa;swingBuilder.edt { // edt method makes sure the GUI is built on the Event Dispatch Thread.&#xa;    def dialog = swingBuilder.dialog(title: &apos;Chat GPT Communicator&apos;, owner: ui.currentFrame) {&#xa;        panel(layout: new GridBagLayout()) {&#xa;            def constraints = new GridBagConstraints()&#xa;            constraints.fill = GridBagConstraints.BOTH&#xa;            constraints.weightx = 1.0&#xa;            constraints.gridx = 0&#xa;            constraints.gridy = -1  // Will be incremented to 0 in the first call to createSection&#xa;            def systemMessages = loadMessagesFromFile(systemMessagesFilePath, defaultSystemMessages)&#xa;            def userMessages = loadMessagesFromFile(userMessagesFilePath, userSystemMessages)&#xa;            MessageArea systemMessageArea = createMessageSection(swingBuilder, systemMessages, &quot;System Messages&quot;, selectedSystemMessageIndex, constraints, 4)&#xa;            MessageArea userMessageArea = createMessageSection(swingBuilder, userMessages, &quot;User Messages&quot;, selectedUserMessageIndex, constraints, 1)&#xa;            constraints.gridy++&#xa;            swingBuilder.panel(constraints: constraints) {&#xa;                layout = new FlowLayout()&#xa;                label(&apos;API Key:&apos;)&#xa;                def apiKeyField = textField(columns: 20, text: apiKey)&#xa;                label(&apos;Maximum Response Length:&apos;)&#xa;                def responseLengthField = formattedTextField(columns: 10, value: maxResponseLength)&#xa;                label(&apos;GPT Model:&apos;)&#xa;                def gptModelBox = comboBox(items: [&apos;gpt-3.5-turbo&apos;, &apos;gpt-4&apos;], selectedItem: gptModel)&#xa;                def askGptButton = button(action: swingBuilder.action(name: &apos;Ask GPT&apos;) {&#xa;                    generateBranches(apiKeyField.text, &#xa;                    systemMessageArea.textArea.text, &#xa;                    expandMessage(userMessageArea.textArea.text), &#xa;                    gptModelBox.selectedItem, &#xa;                    responseLengthField.value) &#xa;                })&#xa;                askGptButton.rootPane.defaultButton = askGptButton&#xa;                swingBuilder.button(action: swingBuilder.action(name: &apos;Save Changes&apos;) {&#xa;                    systemMessages[systemMessageArea.comboBox.selectedIndex] = systemMessageArea.textArea.text&#xa;                    userMessages[userMessageArea.comboBox.selectedIndex] = userMessageArea.textArea.text&#xa;                    saveMessagesToFile(systemMessagesFilePath, systemMessages)&#xa;                    saveMessagesToFile(userMessagesFilePath, userMessages)&#xa;                    config.setProperty(&apos;openai.key&apos;, apiKeyField.text)&#xa;                    config.setProperty(&apos;openai.gpt_model&apos;, gptModelBox.selectedItem)&#xa;                    config.setProperty(&apos;openai.max_response_length&apos;, responseLengthField.value)&#xa;                    config.setProperty(&apos;openai.system_message_index&apos;, systemMessageArea.comboBox.selectedIndex)&#xa;                    config.setProperty(&apos;openai.user_message_index&apos;, userMessageArea.comboBox.selectedIndex)&#xa;                    })&#xa;                }&#xa;            }&#xa;    }&#xa;    dialog.pack()&#xa;    ui.setDialogLocationRelativeTo(dialog, ui.currentFrame)&#xa;    dialog.show()&#xa;}&#xa;" ID="ID_741151667" CREATED="1684507427203" MODIFIED="1684507427212"/>
</node>
</node>
<node TEXT="lib" POSITION="bottom_or_right" ID="ID_1845190577" CREATED="1684435528728" MODIFIED="1684435528728">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
      &nbsp;- The immediate child nodes contain the name of the file, e.g. 'mysql-connector-java-5.1.25.jar'). Put the file into a 'lib' subdirectory of the add-on base directory.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The child nodes of these nodes contain the actual files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- Any lib file will be extracted in &lt;installationbase&gt;/&lt;addonname&gt;/lib.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html></richcontent>
</node>
<node TEXT="zips" POSITION="bottom_or_right" ID="ID_169986368" CREATED="1684435528728" MODIFIED="1684505850147">
<edge COLOR="#007c7c"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
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
<node TEXT="images" POSITION="bottom_or_right" ID="ID_295383454" CREATED="1684435528728" MODIFIED="1684505850137">
<edge COLOR="#7c0000"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="xml/">
<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may define any number of images as child nodes of the images node. The actual image data has to be placed as base64 encoded binary data into the text of a subnode.
    </p>
    <p>
      The images are saved to the <i>${installationbase}/resources/images</i>&nbsp;directory.
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
      Images can be added automatically by releaseAddOn.groovy or must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&nbsp;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html></richcontent>
<attribute_layout NAME_WIDTH="104.25 pt"/>
<node TEXT="${name}.svg" FOLDED="true" ID="ID_1000617651" CREATED="1684505614605" MODIFIED="1684506081991">
<attribute_layout VALUE_WIDTH="100 pt"/>
<node TEXT="PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyND&#xa;A2IDI0MDYiPjxwYXRoIGQ9Ik0xIDU3OC40QzEgMjU5LjUgMjU5LjUgMSA1NzguNCAxaDEyNDku&#xa;MWMzMTkgMCA1NzcuNSAyNTguNSA1NzcuNSA1NzcuNFYyNDA2SDU3OC40QzI1OS41IDI0MDYgMS&#xa;AyMTQ3LjUgMSAxODI4LjZWNTc4LjR6IiBmaWxsPSIjNzRhYTljIi8+PHBhdGggZD0iTTExMDcu&#xa;MyAyOTkuMWMtMTk4IDAtMzczLjkgMTI3LjMtNDM1LjIgMzE1LjNDNTQ0LjggNjQwLjYgNDM0Lj&#xa;kgNzIwLjIgMzcwLjUgODMzYy05OS4zIDE3MS40LTc2LjYgMzg2LjkgNTYuNCA1MzMuOC00MS4x&#xa;IDEyMy4xLTI3IDI1Ny43IDM4LjYgMzY5LjIgOTguNyAxNzIgMjk3LjMgMjYwLjIgNDkxLjYgMj&#xa;E5LjIgODYuMSA5NyAyMDkuOCAxNTIuMyAzMzkuNiAxNTEuOCAxOTggMCAzNzMuOS0xMjcuMyA0&#xa;MzUuMy0zMTUuMyAxMjcuNS0yNi4zIDIzNy4yLTEwNS45IDMwMS0yMTguNSA5OS45LTE3MS40ID&#xa;c3LjItMzg2LjktNTUuOC01MzMuOXYtLjZjNDEuMS0xMjMuMSAyNy0yNTcuOC0zOC42LTM2OS44&#xa;LTk4LjctMTcxLjQtMjk3LjMtMjU5LjYtNDkxLTIxOC42LTg2LjYtOTYuOC0yMTAuNS0xNTEuOC&#xa;0zNDAuMy0xNTEuMnptMCAxMTcuNS0uNi42Yzc5LjcgMCAxNTYuMyAyNy41IDIxNy42IDc4LjQt&#xa;Mi41IDEuMi03LjQgNC4zLTExIDYuMUw5NTIuOCA3MDkuM2MtMTguNCAxMC40LTI5LjQgMzAtMj&#xa;kuNCA1MS40VjEyNDhsLTE1NS4xLTg5LjRWNzU1LjhjLS4xLTE4Ny4xIDE1MS42LTMzOC45IDMz&#xa;OS0zMzkuMnptNDM0LjIgMTQxLjljMTIxLjYtLjIgMjM0IDY0LjUgMjk0LjcgMTY5LjggMzkuMi&#xa;A2OC42IDUzLjkgMTQ4LjggNDAuNCAyMjYuNS0yLjUtMS44LTcuMy00LjMtMTAuNC02LjFsLTM2&#xa;MC40LTIwOC4yYy0xOC40LTEwLjQtNDEtMTAuNC01OS40IDBMMTAyNCA5ODQuMlY4MDUuNEwxMz&#xa;cyLjcgNjA0YzUxLjMtMjkuNyAxMDkuNS00NS40IDE2OC44LTQ1LjV6TTY1MCA3NDMuNXY0Mjcu&#xa;OWMwIDIxLjQgMTEgNDAuNCAyOS40IDUxLjRsNDIxLjcgMjQzLTE1NS43IDkwTDU5Ny4yIDEzNT&#xa;VjLTE2Mi05My44LTIxNy40LTMwMC45LTEyMy44LTQ2Mi44QzUxMy4xIDgyMy42IDU3NS41IDc3&#xa;MSA2NTAgNzQzLjV6bTgwNy45IDEwNiAzNDguOCAyMDAuOGMxNjIuNSA5My43IDIxNy42IDMwMC&#xa;42IDEyMy44IDQ2Mi44bC42LjZjLTM5LjggNjguNi0xMDIuNCAxMjEuMi0xNzYuNSAxNDguMnYt&#xa;NDI4YzAtMjEuNC0xMS00MS0yOS40LTUxLjRsLTQyMi4zLTI0My43IDE1NS04OS4zek0xMjAxLj&#xa;cgOTk3bDE3Ny44IDEwMi44djIwNS4xbC0xNzcuOCAxMDIuOC0xNzcuOC0xMDIuOHYtMjA1LjFM&#xa;MTIwMS43IDk5N3ptMjc5LjUgMTYxLjYgMTU1LjEgODkuNHY0MDIuMmMwIDE4Ny4zLTE1MiAzMz&#xa;kuMi0zMzkgMzM5LjJ2LS42Yy03OS4xIDAtMTU2LjMtMjcuNi0yMTctNzguNCAyLjUtMS4yIDgt&#xa;NC4zIDExLTYuMWwzNjAuNC0yMDcuNWMxOC40LTEwLjQgMzAtMzAgMjkuNC01MS40bC4xLTQ4Ni&#xa;44ek0xMzgwIDE0MjEuOXYxNzguOGwtMzQ4LjggMjAwLjhjLTE2Mi41IDkzLjEtMzY5LjYgMzgt&#xa;NDYzLjQtMTIzLjdoLjZjLTM5LjgtNjgtNTQtMTQ4LjgtNDAuNS0yMjYuNSAyLjUgMS44IDcuNC&#xa;A0LjMgMTAuNCA2LjFsMzYwLjQgMjA4LjJjMTguNCAxMC40IDQxIDEwLjQgNTkuNCAwbDQyMS45&#xa;LTI0My43eiIgZmlsbD0id2hpdGUiLz48L3N2Zz4=" ID="ID_894375473" CREATED="1684507427214" MODIFIED="1684507427218"/>
</node>
<node TEXT="${name}-icon.svg" FOLDED="true" ID="ID_510373247" CREATED="1684505614605" MODIFIED="1684507255199">
<attribute_layout VALUE_WIDTH="100 pt"/>
<node TEXT="PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyND&#xa;A2IDI0MDYiPjxwYXRoIGQ9Ik0xIDU3OC40QzEgMjU5LjUgMjU5LjUgMSA1NzguNCAxaDEyNDku&#xa;MWMzMTkgMCA1NzcuNSAyNTguNSA1NzcuNSA1NzcuNFYyNDA2SDU3OC40QzI1OS41IDI0MDYgMS&#xa;AyMTQ3LjUgMSAxODI4LjZWNTc4LjR6IiBmaWxsPSIjNzRhYTljIi8+PHBhdGggZD0iTTExMDcu&#xa;MyAyOTkuMWMtMTk4IDAtMzczLjkgMTI3LjMtNDM1LjIgMzE1LjNDNTQ0LjggNjQwLjYgNDM0Lj&#xa;kgNzIwLjIgMzcwLjUgODMzYy05OS4zIDE3MS40LTc2LjYgMzg2LjkgNTYuNCA1MzMuOC00MS4x&#xa;IDEyMy4xLTI3IDI1Ny43IDM4LjYgMzY5LjIgOTguNyAxNzIgMjk3LjMgMjYwLjIgNDkxLjYgMj&#xa;E5LjIgODYuMSA5NyAyMDkuOCAxNTIuMyAzMzkuNiAxNTEuOCAxOTggMCAzNzMuOS0xMjcuMyA0&#xa;MzUuMy0zMTUuMyAxMjcuNS0yNi4zIDIzNy4yLTEwNS45IDMwMS0yMTguNSA5OS45LTE3MS40ID&#xa;c3LjItMzg2LjktNTUuOC01MzMuOXYtLjZjNDEuMS0xMjMuMSAyNy0yNTcuOC0zOC42LTM2OS44&#xa;LTk4LjctMTcxLjQtMjk3LjMtMjU5LjYtNDkxLTIxOC42LTg2LjYtOTYuOC0yMTAuNS0xNTEuOC&#xa;0zNDAuMy0xNTEuMnptMCAxMTcuNS0uNi42Yzc5LjcgMCAxNTYuMyAyNy41IDIxNy42IDc4LjQt&#xa;Mi41IDEuMi03LjQgNC4zLTExIDYuMUw5NTIuOCA3MDkuM2MtMTguNCAxMC40LTI5LjQgMzAtMj&#xa;kuNCA1MS40VjEyNDhsLTE1NS4xLTg5LjRWNzU1LjhjLS4xLTE4Ny4xIDE1MS42LTMzOC45IDMz&#xa;OS0zMzkuMnptNDM0LjIgMTQxLjljMTIxLjYtLjIgMjM0IDY0LjUgMjk0LjcgMTY5LjggMzkuMi&#xa;A2OC42IDUzLjkgMTQ4LjggNDAuNCAyMjYuNS0yLjUtMS44LTcuMy00LjMtMTAuNC02LjFsLTM2&#xa;MC40LTIwOC4yYy0xOC40LTEwLjQtNDEtMTAuNC01OS40IDBMMTAyNCA5ODQuMlY4MDUuNEwxMz&#xa;cyLjcgNjA0YzUxLjMtMjkuNyAxMDkuNS00NS40IDE2OC44LTQ1LjV6TTY1MCA3NDMuNXY0Mjcu&#xa;OWMwIDIxLjQgMTEgNDAuNCAyOS40IDUxLjRsNDIxLjcgMjQzLTE1NS43IDkwTDU5Ny4yIDEzNT&#xa;VjLTE2Mi05My44LTIxNy40LTMwMC45LTEyMy44LTQ2Mi44QzUxMy4xIDgyMy42IDU3NS41IDc3&#xa;MSA2NTAgNzQzLjV6bTgwNy45IDEwNiAzNDguOCAyMDAuOGMxNjIuNSA5My43IDIxNy42IDMwMC&#xa;42IDEyMy44IDQ2Mi44bC42LjZjLTM5LjggNjguNi0xMDIuNCAxMjEuMi0xNzYuNSAxNDguMnYt&#xa;NDI4YzAtMjEuNC0xMS00MS0yOS40LTUxLjRsLTQyMi4zLTI0My43IDE1NS04OS4zek0xMjAxLj&#xa;cgOTk3bDE3Ny44IDEwMi44djIwNS4xbC0xNzcuOCAxMDIuOC0xNzcuOC0xMDIuOHYtMjA1LjFM&#xa;MTIwMS43IDk5N3ptMjc5LjUgMTYxLjYgMTU1LjEgODkuNHY0MDIuMmMwIDE4Ny4zLTE1MiAzMz&#xa;kuMi0zMzkgMzM5LjJ2LS42Yy03OS4xIDAtMTU2LjMtMjcuNi0yMTctNzguNCAyLjUtMS4yIDgt&#xa;NC4zIDExLTYuMWwzNjAuNC0yMDcuNWMxOC40LTEwLjQgMzAtMzAgMjkuNC01MS40bC4xLTQ4Ni&#xa;44ek0xMzgwIDE0MjEuOXYxNzguOGwtMzQ4LjggMjAwLjhjLTE2Mi41IDkzLjEtMzY5LjYgMzgt&#xa;NDYzLjQtMTIzLjdoLjZjLTM5LjgtNjgtNTQtMTQ4LjgtNDAuNS0yMjYuNSAyLjUgMS44IDcuNC&#xa;A0LjMgMTAuNCA2LjFsMzYwLjQgMjA4LjJjMTguNCAxMC40IDQxIDEwLjQgNTkuNCAwbDQyMS45&#xa;LTI0My43eiIgZmlsbD0id2hpdGUiLz48L3N2Zz4=" ID="ID_1499487695" CREATED="1684507427218" MODIFIED="1684507427219"/>
</node>
</node>
</node>
</map>
