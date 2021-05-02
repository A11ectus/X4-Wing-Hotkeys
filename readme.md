Wing Hotkeys:
============
By: Allectus

Github:
Steam:
Nexus:

Mod effects:
============
Adds hotkeys to select wings and issue orders to them.

Requirements:
=============
SirNukes Mod Suppot API

What the mod does:
==================

Stuff

Some Notes:

	* Stuff
	
See here for a demonstration:

Install:
========
-Unzip to 'X4 Foundations/extensions/al_wing_hotkeys' / subscribe on Steam

-Make sure the sub-folders and files are in 'X4 Foundations/extensions/al_wing_hotkeys' and not in 'X4 Foundations/extensions/al_wing_hotkeys/al_wing_hotkeys'.

-Installation is savegame safe

Uninstall:
==========
-Delete the mod folder / unsubscribe on Steam.

History:
========
1.0, 2021-05-01: Initial release


=> add entries like this to your sound_library.xml
<soundlibrary>
  <sound id="PAGEID_normal" description="Board computer - Betty" repeat="1" is3d="1" preload="0">
    <sample start="extensions\MODFOLDER\voice\PAGEID\normal"/>
    <effects>
      <filter mode="bandpass" frequency="0.26" oneoverq="1.45"/>
      <reverb room="sewer pipe" roomsize="10" drymix="5" density="90"/>
    </effects>
  </sound>
  <sound id="PAGEID_comm" description="Board computer - Betty" repeat="1" is3d="1" preload="0">
    <sample start="\extensions\MODFOLDER\voice\PAGEID\normal"/>
    <effects>
      <filter mode="bandpass" frequency="0.26" oneoverq="1.45"/>
      <reverb room="sewer pipe" roomsize="10" drymix="5" density="90"/>
    </effects>
  </sound>
</soundlibrary>

=> create folder structure in your mod:
voice\PAGEID\normal
=> put each entry as .ogg file in there (name is TID.ogg obviously)(edited)
[5:54 PM]


  <datatype name="controllable" type="object">
    <property name="commander" result="Commander object (if this is a subordinate)" type="controllable" />
    <property name="assignment" result="Assignment of this subordinate under the commanding object" type="assignment" />
    <property name="canuseassignment.{$assignment}.{$controllable}" result="Can this object use the specified assignment when subordinate to the specified commander. $assignment can be null." type="boolean"/>
    <property name="commanderentity" result="Commander entity (if this is a subordinate)" type="entity" />
    <property name="activesubordinategroupids" result="List of subordinate group IDs with assigned ships" type="list" />
    <property name="subordinates" result="List of subordinates" type="list" />
    <property name="subordinates.{$assignment}" result="List of subordinates of the commander with the specified assignment" type="list" />
    <property name="subordinategroupassignment.{$subordinategroupid}" result="Assignment of subordinate group with specified ID" type="assignment"/>
    <property name="subordinategroupdockoverride" result="Whether subordinate group of controllable is set to always dock at commander" type="boolean"/>
    <property name="subordinategroupid" result="Subordinate group ID that controllable currently belongs to" type="integer"/>
    <property name="subordinatesingroup.{$subordinategroupid}" result="List of direct subordinates of the commander in the specified subordinate group" type="list" />
    <property name="allsubordinates" result="List of all subordinates, including those not directly commanded by this" type="list" />
    <property name="allcommanders" result="List of all commanders, including those not directly commanding this" type="list" />
    <property name="canhavecommander.{$component}" result="true iff the $component (or its controllable context) can be a commander for this" type="boolean" />
    <property name="fleet.name" result="Name of fleet (empty string if not a fleet commander)" type="string" />
    <property name="fleet.iscommander" result="True if object is commander of its own fleet" type="boolean"/>
    <property name="fleet.commander" result="Fleet commander object (top level fleet, null if that commander is not a fleet commader, e.g. is a unit or not player owned)" type="controllable"/>
    <property name="toplevelcommander" result="Top-level commander object. May be a station or the ship that the player is flying." type="controllable"/>

	
	
<do_if value="$myvalue == 'A'">
	<set_value name="$myid" exact=1/>
</do_if>
<do_elseif value="$myvalue == 'B'">
	<set_value name="$myid" exact=2/>
</do_elseif/>
<do_else>
	<set_value name="$myid" exact="null"/>
</do_else>