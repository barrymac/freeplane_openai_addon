<map version="freeplane 1.9.13">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="Gpt-AddOn" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1683247985032" LINK="https://github.com/barrymac/freeplane" BACKGROUND_COLOR="#97c7dc" STYLE="oval">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" associatedTemplateLocation="template:/standard-1.6.mm"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" STYLE="bubble" POSITION="bottom_or_right">
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
<stylenode LOCALIZED_TEXT="styles.user-defined" STYLE="bubble" POSITION="bottom_or_right">
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
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" STYLE="bubble" POSITION="bottom_or_right">
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
<hook NAME="AutomaticEdgeColor" COUNTER="14" RULE="ON_BRANCH_CREATION"/>
<attribute_layout NAME_WIDTH="93.75 pt" VALUE_WIDTH="138.75 pt"/>
<attribute NAME="name" VALUE="gptAddOn"/>
<attribute NAME="version" VALUE="v0.2"/>
<attribute NAME="author" VALUE="barry"/>
<attribute NAME="freeplaneVersionFrom" VALUE="1.9" OBJECT="org.freeplane.features.format.FormattedNumber|1.9"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="updateUrl" VALUE="http://github.com"/>
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
</html>
</richcontent>
<node TEXT="description" POSITION="left" ID="ID_365830098" CREATED="1683214810552" MODIFIED="1683247985046">
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
</html>
</richcontent>
<node TEXT="Add on to use GPT api to generate ideas" ID="ID_110054152" CREATED="1683215195029" MODIFIED="1683215204841"/>
</node>
<node TEXT="changes" POSITION="left" ID="ID_138977336" CREATED="1683214810577" MODIFIED="1683247985049">
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
</html>
</richcontent>
</node>
<node TEXT="license" FOLDED="true" POSITION="left" ID="ID_950695085" CREATED="1683214810585" MODIFIED="1683247985052">
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
</html>
</richcontent>
<node TEXT="&#xa;This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 2 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the&#xa;GNU General Public License for more details.&#xa;" ID="ID_726417928" CREATED="1683214810595" MODIFIED="1683236204175"/>
</node>
<node TEXT="preferences.xml" POSITION="left" ID="ID_902316079" CREATED="1683214810705" MODIFIED="1683247985056">
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
</html>
</richcontent>
<node TEXT="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#xa;&lt;preferences_structure xmlns=&quot;http://freeplane.sf.net/ui/preferences/1.0&quot;&gt;&#xa;    &lt;tabbed_pane&gt;&#xa;        &lt;tab name=&quot;plugins&quot;&gt;&#xa;            &lt;separator name=&quot;gpt_plugin&quot;&gt;&#xa;                &lt;string name=&quot;openai_key&quot;/&gt;&#xa;                &lt;string name=&quot;gpt_prompt&quot;/&gt;&#xa;            &lt;/separator&gt;&#xa;        &lt;/tab&gt;&#xa;    &lt;/tabbed_pane&gt;&#xa;&lt;/preferences_structure&gt;" ID="ID_516268456" CREATED="1683231106968" MODIFIED="1683231182719"/>
</node>
<node TEXT="default.properties" POSITION="left" ID="ID_769124461" CREATED="1683214810715" MODIFIED="1683247985060">
<edge COLOR="#00ffff"/>
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
</html>
</richcontent>
<node TEXT="openai.key&#x9;Gpt-AddOn" ID="ID_1225509203" CREATED="1683219113270" MODIFIED="1683236908491">
<attribute_layout VALUE_WIDTH="123 pt"/>
<attribute NAME="openai_key" VALUE=""/>
<attribute NAME="gpt_prompt" VALUE=""/>
<attribute NAME="${name}.icon" VALUE="/images/${name}-icon.png"/>
</node>
</node>
<node TEXT="translations" POSITION="left" ID="ID_1606264590" CREATED="1683214810723" MODIFIED="1683247985063">
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
</html>
</richcontent>
<node TEXT="en" ID="ID_1097454652" CREATED="1683214810733" MODIFIED="1683235720937" POSITION="top_or_left">
<attribute_layout NAME_WIDTH="158.25 pt"/>
<attribute NAME="addons.${name}" VALUE="Gpt-AddOn"/>
<attribute NAME="addons.${name}.openAiGpt" VALUE="GPT Ideas"/>
<attribute NAME="addons.${name}.openAiGptAsync" VALUE="GPT Ideas Async"/>
<attribute NAME="OptionPanel.separator.gpt_plugin" VALUE="GPT Options"/>
<attribute NAME="separator.gpt_plugin" VALUE="GPT Options"/>
<attribute NAME="gpt_plugin" VALUE="GPT Options"/>
<attribute NAME="openai_key" VALUE="Open AI API key"/>
<attribute NAME="gpt_prompt" VALUE="Default GPT Prompt"/>
</node>
</node>
<node TEXT="deinstall" POSITION="left" ID="ID_1927303474" CREATED="1683214810777" MODIFIED="1683247985067">
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
</html>
</richcontent>
<attribute_layout NAME_WIDTH="37.5 pt" VALUE_WIDTH="268.49999 pt"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/openAiGpt.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/openAiGptAsync.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/icons/ChatGPT-Logo-PNG-1.png"/>
<attribute NAME="delete" VALUE="${installationbase}/icons/gptAddOn.png"/>
<attribute NAME="delete" VALUE="${installationbase}/icons/gptAddOn-icon.png"/>
</node>
<node TEXT="scripts" ID="ID_684917236" CREATED="1683214810801" MODIFIED="1683247985076" POSITION="bottom_or_right">
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
</html>
</richcontent>
<node TEXT="openAiGpt.groovy" ID="ID_1920654188" CREATED="1683215707210" MODIFIED="1683217027807">
<attribute_layout NAME_WIDTH="190.49999 pt" VALUE_WIDTH="313.49999 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.openAiGpt"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="true"/>
</node>
<node TEXT="openAiGptAsync.groovy" ID="ID_1109549336" CREATED="1683215899138" MODIFIED="1683215899243">
<attribute NAME="menuTitleKey" VALUE="addons.${name}.openAiGptAsync"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
</node>
</node>
<node TEXT="lib" ID="ID_1845190577" CREATED="1683214810838" MODIFIED="1683247985108" POSITION="bottom_or_right">
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
</html>
</richcontent>
</node>
<node TEXT="zips" ID="ID_169986368" CREATED="1683214810850" MODIFIED="1683247985114" POSITION="bottom_or_right">
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
      &nbsp;- The immediate child nodes contain a description of the zip. The devtools script releaseAddOn.groovy allows automatic zip creation if the name of this node matches a directory in the current directory.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The child nodes of these nodes contain the actual zip files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- Any zip file will be extracted in the &lt;installationbase&gt;. Currently, &lt;installationbase&gt; is always Freeplane's &lt;userhome&gt;, e.g. ~/.freeplane/1.3.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="icons" ID="ID_2478986" CREATED="1683215866037" MODIFIED="1683215868362"/>
</node>
<node TEXT="images" ID="ID_295383454" CREATED="1683214810860" MODIFIED="1683247985124" POSITION="bottom_or_right">
<edge COLOR="#7c7c00"/>
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
</html>
</richcontent>
<attribute_layout NAME_WIDTH="104.25 pt"/>
<attribute NAME="${name}-icon.png" VALUE=""/>
</node>
</node>
</map>
