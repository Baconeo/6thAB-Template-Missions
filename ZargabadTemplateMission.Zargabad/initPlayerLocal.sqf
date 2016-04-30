// Initialise player locally only.
// Executed once when the player first loads in.

// Ensure the player has been assigned to their unit.
if (!isServer && (getPlayerUID player) == "") then {
	waitUntil {
		(getPlayerUID player) != "";
	};
};

// Initialise the Mis-drop feature.
nul = [] execVM "SIXAB_Scripts\MisDrop\InitClient.sqf";

// Initialise respawn checker module
nul = [] execVM "SIXAB_Scripts\RespawnHandler\InitClient.sqf";

_curators = ['Curator_1', 'Curator_2'];

// Loop through all names passed in.
{
	// Is the player on the list?
	if (player == (missionNamespace getVariable _x)) then {
		// Include the menu function set-up.
		execVM "SIXAB_Scripts\AddAliveMenu.sqf";
	};
} foreach _curators;

_admins = ["76561198039617393","76561197973675421","76561198055381091"];
// Loop through all UID's passed in.
{
	// Is the player on the list?
	if (getPlayerUID player == _x) then {
		// Include the menu function set-up.
		execVM "SIXAB_Scripts\AddAliveMenu.sqf";
		
	};
} foreach _admins;

// Set TFAR to NOT automatically give manpacks by default.
tf_no_auto_long_range_radio = true;

// Initialise interior lighting (jump lights)
nul=[] execVM "IntLight.sqf";

// Strict exit script statement.
if(true) exitWith {}; 