Wing Hotkeys:
============
By: Allectus

Github: https://github.com/A11ectus/X4-Wing-Hotkeys
Steam: https://steamcommunity.com/sharedfiles/filedetails/?id=2484521478
Nexus: https://www.nexusmods.com/x4foundations/mods/720

Mod effects:
============
Adds quick select functionality to select fleets and wings, then rapidly issue orders to them.  Includes both right-click and hotkey integration to allow you to command from either the map, bridge, or cockpit.

Requirements:
=============
SirNukes' Mod Support API - https://www.nexusmods.com/x4foundations/mods/503
	Required for right click menu integration

SirNukes Pipe Server (Optional) - https://github.com/bvbohnen/x4-projects/releases
	Required for hotkey support

My Subsystem Targeting Orders Mod (Optional) - https://steamcommunity.com/sharedfiles/filedetails/?id=2437198154
	If present with version >= 3.4: Adds additional supported orders for targeting ship subsystems

My Urgent Orders Mod (Optional) - https://steamcommunity.com/sharedfiles/filedetails/?id=2459574093
	If present with version >= 1.2: Adds additional supported high priority orders

What the mod does:
==================

This mod adds new quick select functionality to allow you to issue orders from either the map, bridge, or cockpit more rapidly.  By default you may quick select wings attached to the player fleet; you may also designate up to two additional fleets that you would like be able to quick select and issue orders to.  By this means you may have control of up to three separate fleets, as well as individually control wings within those fleets.

To save a fleet for later recall simply right click on the fleet leader in the map menu and you will have an option to set that fleet as either the 1st or 2nd fleet.  Selected fleet leaders will have their ship names prepended with a fleet id to make it easier to identify them later.  Once fleets have been set the interface is divided into two separate tranches:

	1) Hotkeys (optional): You may assign hotkeys to recall fleet selections and issue orders, either on the map, standing on the bridge, or while flying in your cockpit. The target for these commands are always taken as the _player's current target_, while assigned ships are taken from your fleet/wing selections. Commands executed in this way are executed immediately (moved to the front of the order queue).  Enabling hotkeys requires the installation of SirNukes Pipe Server into your X4 game directory, and then launching the pipe server each time before starting X4.  This is necessary as there is no native support for adding custom hotkeys to X4.   This functionality (and consequently the Pipe Server) is optional.
	
	2) Right click menu: You may recall quick selections and issue orders via right click menu in the map. Selections are retained until they are proactively cleared, and may be accessed in the map menu by right clicking on targets when you have _no other ships selected by the normal means_.  Commands executed in this way are executed normally (placed at the back of the order queue), unless they explicitly "immediate/urgent" orders.  This approach will always work, irrespective of whether or not you are running the pipe server.

By default a number of standard commands are supported.  Additionally if you have my Subsystem Targeting Orders or Urgent Orders mods installed you will have additional options to use those orders as well.  Even amongst vanilla commands there are a few special new additions.  For example You may now issue protect orders on targets directly without assigning those ships to the fleet structure of whatever you're protecting.  You may also remove orders for subordinates more easily.
	
Some Notes:

	* Hotkeys are bound the general section of the controls menu.  You must be running SN's pipe server and the mod must also have loaded first (meaning you must have started or loaded a game, i.e not at the initial game startup menu) to see the hotkeys in the menu.

	* The quick select actions are only visible in the right click menu if nothing else is selected.  However the quick selection will be retained in the background even if you have another ship selected.  For example, you may select the 1st Fleet-Beta Wing and issue a set of quick-orders via menu or hotkeys, then left click to select a different ship and issue another set of orders to them normally, and then deselect that ship (left-click in space) to immediately reselect 1st Fleet-Beta Wing.

	* Note that the hotkeys take the players target as the order target.  This is slightly different than simply left or right clicking on an object on the map if you are trying to use the hotkeys in map mode--you must actively target (by pressing 't' by default) the object you want the hotkey to set the order against.
	
	* Selections are kept in an internal state and _not_ reflected in the map menu as highlighted ships.  This is to allow the quick selections to be persistent to support hotkeys without seriously degrading the experience of using the map in the normal way.  A series of auditory, text, and notification cues are presented to the player to help them keep track of the quick selection state.
	
	* If you issue orders to the fleet without selecting wings then the order is issued to the fleet commander directly as a single order and prosecuted according to the normal fleet logic.  If you issue orders to a wing within the fleet then each member of that wing will receive an individual copy of the order and break off from the fleet to perform it.
	
	* If you have no fleet selected (either because it has not been set, or you cleared the selection) you will default to selecting wings within the player fleet.  Note that as the player themselves can not be issued orders you will need to issue orders explicitly to subsidiary wings if you are flying the fleet commanding ship.
	
	* The player fleet is identified as the fleet attached to the ship the player is flying, or standing on.  If flying the ship yourself the ship must be the fleet commander (otherwise it is detached from the fleet as per normal vanilla behaviour).  If you are standing on the bridge of a ship then the command structure will be resolved up to the commander of the fleet that that ship is associated with.

	* Fleet recall is based off the fleet commander.  If the fleet commander dies you will need to reset the selection.
	
	* There are two remove order commands.  The standard remove orders command behaves as normal and will remove the orders from your selection.  A different remove orders from subordinates command can be issued to fleet commanders to remove the individual orders given to their wings without affecting the orders for the commander -- this allows you to recall detached wings without affecting the orders of the commander.  This is slightly different from the vanilla recall subordinates command as it simply clears the order stack of subordinates (returning them to their normal fleet assignments) without placing a recall order on the top of the fleet commanders stack and forcing them to wait for all of their subordinates to dock.
	
See here for a demonstration: https://youtu.be/kzkR9ay0Uio

Install:
========
-(Optional) If you wish to enable hotkey functionality download  the pipe server (sn_x4_python_pipe_server_exe_v1.4.zip) from https://github.com/bvbohnen/x4-projects/releases and unzip it in your x4 base directory.  Run this program each time before you start X4.

-Unzip mod archive to 'X4 Foundations/extensions/al_wing_hotkeys' / subscribe on Steam

-Make sure the sub-folders and files are in 'X4 Foundations/extensions/al_wing_hotkeys' and not in 'X4 Foundations/extensions/al_wing_hotkeys/al_wing_hotkeys'.

-Installation is savegame safe

Uninstall:
==========
-Delete the mod folder / unsubscribe on Steam.

My Thanks:
============
-SirNukes for the Mod Support API that made the right click integration possible as well as the pipe server and hotkey API which makes it possible to use custom hotkeys in X4.

History:
========
1.0, 2021-05-11: Initial release