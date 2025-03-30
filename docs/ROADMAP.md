# LLM plugin for freeplane
1. Separate promt configuration so you don't get the prompt edit dialogue every time if there is already a saved configuration. 
Add a menu item for the add on to bring up this dialogue to change the plugin configuration if they need to. Add keyboard shortcut to prompt model directly without menu navigation.

2. Comparative link Vectors, explore a polar sepearation between two branches connected with a connector https://docs.freeplane.org/api/org/freeplane/api/Connector.html 
Examples:
   a. Pros and cons between two adjacent branches.
   b. Link to other branch , compare and contrast
   c. Left wing  right wing  political bias
   d. Optimistic or pessimistic 
Usage:
The user makes a connection between two nodes. They right click on the connection, and the add-on has added an entry to the context menu, with the title "compare". 
The user click the compare menu item, and a dialogue comes up which allows the user to enter the comparison, for example pros and cons between the branches.
   The add-on adds a 
   The add-on queries the LLM for pros and cons of each of the two branches and adds a branch for pros, containing sub branches of the pros, and another for cons , containing the cons.   

3. Compare Model outputs
4. Serial thought Vectors
5. Prompt refresh sub tree
