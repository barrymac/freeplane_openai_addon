Freeplane Documentation

Preparations
Install developer tools
Editors, build tools, IDEs
Steps towards your own add-on
Script configuration
menuLocations
Adding JARs and class files
Creating Libraries
Translations
Adding new languages
Add-ons may have their own preferences
preferences.xml
default.properties
Translation of preference entries
Access the variables
Publish
Worked out example
This page gives instructions for developing Freeplane add-ons.

Freeplane is built from modules called "plugins" like the Scripting, Formula or LaTeX plugin, ... Add-ons are a more light-weight extension mechanism than plugins. There are several add-ons that don't need any programming know-how, but depending on the purpose of your add-on you might have to write scripts. Scripts can be organized in a special lib where they are compiled automatically when Freeplane is run, see wiki.

Add-ons are installed in the Freeplane user directory (see Tools > Open user directory). They may contain any number of scripts and Zip archives which are unpacked on installation. Combinations of scripts and Zips are especially interesting since they enable you to package scripts with required libraries/JARs/class files. For instance it's possible to bundle some Groovy scripts for creating diagrams with the JFreechart library - so there's no need to download and install the JFreechart libraries anymore. Another applications are custom Java libraries that provide additional functionality for use in formulas. See Adding JARs and class files on how to handle these cases.

Note: You will find th most current documentation of the add-on file format as comments in the add-on map itself after it has been updated by the "Check Add-on" tool.

Preparations
Install developer tools
Update to the most recent Freeplane version and install the Developer Tools from the Add-ons page (follow the installation instructions there). The add-on provides scripts that relieves you from most of the tedious work. If you experience any problems with it in the future first check if you actually have the most recent add-on version installed.

The add-on functions are available in: Tools > Developer tools

Editors, build tools, IDEs
If you are considering to create scripts as part of your add-on you it's advisable to set up an integrated scripting environment. If you have 250 MB spare disk space do it. - It will pay-off soon. There is a gradle plug-in which makes development and IDE integration easier. You find it at https://github.com/freeplane/gradle-plugin.

Steps towards your own add-on
The goal of the example add-on is to put:

an existing script myCoolScript.groovy in /script/myCoolScript.groovy; and
an icon mycoolicon.png in /icons/mycoolicon.png.
The steps to follow are:

In Freeplane create a new empty map by Ctrl+n.
Invoke Tools > Developer Tools > Build add-on. You will be asked for the name of your add-on. Answer My Cool Add-on
Look through the messages in the info box that is shown if everything looks alright. The name attribute of the root node will be myCoolAddOn. This is the identifying technical name of the add-on that is usually used as a file name, for menu locations and translation keys and so on. The node text My Cool Add-on is the English name/translation of the add-on.
Set the version attribute of the root node to v0.1 and fill the other attributes of the root node (only freeplaneVersionTo is optional).
Write an initial description of the add-on as a child node of the description node.
Create a new directory somewhere with the technical name of the add-on, myCoolAddOn.
Save the new map to myCoolAddOn/myCoolAddOn.mm.
Copy or move myCoolScript.groovy to myCoolAddOn/scripts/myCoolScript.groovy.
In the map create a new subnode of the scripts node with name myCoolScript.groovy.
Copy mycoolicon.png to zips/icons/mycoolicon.png.
In the map create a new subnode of the zips node with name icons.
Invoke Tools > Developer Tools > Build add-on again. This will add the required attributes of the script node and proposes proper deinstall rules (just accept them when you are asked for it).
Fill the attributes of the myCoolScript.groovy node. The notes on the scripts node will help you to find the right attribute values. See also the section about menuLocation below.
Save the map.
Invoke Tools > Developer Tools > Package add-on for publication. This will create the file myCoolAddOn-v0.1.mm which can be installed via Tools > Scripts > Install Add-on (or via Tools > Add-ons).
Before publishing your add-on read all notes in the add-on map. (They are meant for add-on developers, not for users since users are not expected to read an add-on package.) The notes should guide you to add all missing information. Carefully revise the defaults that the Build add-on script has entered.

Script configuration
This is a bit tricky since the script configuration consists of quite a lot attributes, some of them with a strong relation to translations and to menu configuration. For most questions the notes on the scripts node will be sufficient as a documentation.

menuLocations
A menu location is the menu or submenu into which the new menu item for the script will be put into.

The Freeplane menus (main menu, context menu, menu for applets and file browser) are configured via XML files. It helps a lot if you get an understanding how the structure in this file relates to the actual menu. The most relevant menus for scripts are configured through mindmapmodemenu.xml. To inspect it select Download file and load the file in your web browser. To get an overview over its structure fold/unfold the nodes. You see that the "file" submenu is a sub node of the "menu_bar" menu_category which defines the main menu. (There're also definitions for context menus: "map_popup", "node_popup" and the "main_toolbar"). A menu location is a path that starts with a root menu_category, e.g.

/menu_bar/file/import
For some paths there are aliases/shortcuts. These are defined as "menu_key" attribute of a menu_submenu node, e.g.

main_menu_scripting
which is an alias for

/menu_bar/extras/first/scripting
Note that you can define menuLocations that do not exist in the menu already. If you do that you have to make sure that for every submenu level there's a translation for its name. Here's an example from the Edit Goodies add-on:

/menu_bar/edit/editGoodies
This creates a new submenu below the Edit menu. From Freeplane v1.2.10_5 on this only requires the definition of a translation for

addons.editGoodies
("addons." could have been omitted but leave it there to avoid naming collisions.)

More about the configuration of menus can be found on the wiki page Menus and commands.

Adding JARs and class files
An add-on map may contain any number of nodes containing binary files (normally .jar files) which are automatically added to the add-on's classpath if you place them under the "lib" node.

The immediate child nodes contain the name of the file, e.g. 'mysql-connector-java-5.1.25.jar'). Put the file into a 'lib' subdirectory of the add-on base directory.
The child nodes of these nodes contain the actual files.
Any lib file will be extracted in //lib.
The files will be processed in the sequence as seen in the map.
Creating Libraries
Libraries (JARs) can not only be used to include external software. Often the scripts of an add-on can be improved by extracting common functions into a library created from one or more aditional Groovy or Java files.

To create such libraries you should use a builder like Gradle:

Place your source files in the right subdirectory:
for .groovy files: src/main/groovy
for .java files: src/main/java
create a build.gradle file like one of wikdshell or roan-presentation.
run gradle to create the jar
Translations
Add-ons can be translated. If you used the "Build add-on" script from the "Developer tools" add-on to create your add-on, it created a "translations" branch and an "en" node for your add-on. The following keys are mandatory:

'addons.${name}' for the add-on's name
'addons.${name}.description' for the description, e.g. in the add-on overview dialog (not necessary for English)
'addons.${name}.' for the menuTitleKey attribute of each script which is used as the menu title.
Add-on developers can define more messages at their will and use them via textUtils.getText("addons.myAddon.someAdditionalMessageKey"). Include the add-on name to avoid clashes with keys that Freeplane uses for itself.

Adding new languages
Duplicate the "en" node under "translations" and rename it to your locale (e.g. "fr", "de", "ru", ...).
Edit the translations.
Don't forget to send the file/translation node to the add-on author!
Note that if the translations contain non-ASCII characters you should upgrade to minimally Developer Tools v0.9.24 and Freeplane v1.7.4. With older versions your will see java escape codes instead of non-ASCII characters in your menus and other translations. Despite the fact that Freeplane can only work with java-encoded non-ASCII characters in translation strings, there is no need java-encode them before installation: this is automatically done during installation. On the other hand it is not a problem if non-ASCII characters in your translations already have been java-encoded.

Add-ons may have their own preferences
If you have properties/variables that should be configurable by the user you can extend the option panel under Tools->Preferences. Let's assume the plugin needs the variables

my_addon_server_url
my_addon_timeout_sec
You have to consider the following nodes in the add-on source map:

preferences.xml
This is a complete, syntactically correct XML string that is constructed like the preferences.xml files that are part of Freeplane. (There is one main file, one of the Scripting plugin and one of the Formula plugin.) For our purpose we need (see the previous links for extensive examples):

<?xml version="1.0" encoding="UTF-8"?>
<preferences_structure>
<tabbed_pane>
<tab name="plugins">
<separator name="myaddon">
<string name="my_addon_server_url" />
<number name="my_addon_timeout_sec" min="0" />
</separator>
</tab>
</tabbed_pane>
</preferences_structure>
This will place a new block for the new add-on in the "Plugins" tab.

Some other types to use are:

    <number name="my_addon_timeout_sec" min="0" max="1000" />
    <number name="my_addon_timeout_sec" />
    <boolean name="myAddon_myBoolean"/>
default.properties
All preference variables should have a default value so the "default.properties" node needs two attributes:

default.properties
my_addon_server_url	http://server.org/my_addon
my_addon_timeout_sec	15
Unfortunately it leads to an error during the creation of the add-on if you enter an URL up to Freeplane version 1.2.20. Workaround: Add a single quote in front the URL to avoid it being parsed and remove the space by manually editing the .mm file.

Translation of preference entries
You have to add translations for the preferences block ("separator") and for each variable. For preferences the key is the variable name prefixed by "OptionPanel." For messages which are not preferences the variable is the key only:

en
OptionPanel.separator.myaddon	My add-on
OptionPanel.my_addon_server_url	Server URL
OptionPanel.my_addon_timeout_sec	Timeout[seconds]
my_addon_message_text	ERROR: some message text
Access the variables
Here's how you access the variables set in the OptionPanel in scripts (second parameter are default values if the value should be null):

def timeout = config.getIntProperty('my_addon_timeout_sec', 15)
def url = config.getProperty('my_addon_server_url', 'http://server.org/default')
See FreeplaneScriptBaseClass.ConfigProperties in the scripting API documentation for details.

Variables which hold a translation of e.g. a message text can be accessed in a similar way:

def static textUtils= new org.freeplane.core.util.TextUtils()
def myMessage=textUtils.getText('my_addon_message_text', 'ERROR: example message')
In scripts textUltils is a global parameter, hence the first rule is redundant. myMessage returns its text in the current language (translation).

Publish
Once you are done with a new add-on you can create a package for publication via Tools > Developer Tools > Package add-on for publication. If this succeeds you can actually publish it, see the How to publish add-ons page. - Don't miss the information on the add-on updater there!

Worked out example
See scriptlib for a worked out example. It also contains some generic scripts and illustrates adding Help to your script.


For developers
Developer Tools
by Volker Börchers

This add-on collects some utilities that script and/or add-on developers will find useful.

Build add-on: adds all standard nodes, attributes and notes to the current map. Can be used with an empty Map to create a basic add-on.
Package add-on for release: It copies the .mm to -.mm and updates the script node's context from the files lying around.
Generate add-on documentation: Creates a snippet for the Freeplane add-ons wiki page.
Insert binary: Asks for a file to insert as text of the current node (BASE64 encoded).
Extract binary: Asks for a file to extract the BASE64 encoded binary in the current node to.
Encode translation: Encode non-ASCII characters so that they don't get scrambled while packaging or installation. This function is included in Package add-on for release so you don't need this function.
Menu item info: Shows technical details about a selected menu item.
freeplane.dsld: Adds Eclipse editor support for predefined script bindings such as node, c, ui, textUtils, ...

