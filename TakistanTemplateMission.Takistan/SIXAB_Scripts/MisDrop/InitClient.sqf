

// Ensure the player is initalised
if (isDedicated) exitWith {};
waitUntil {
	(getPlayerUID player) != "";
};

// CLIENT LOGIC
// Registers a handler to accept coordinates for the mis-drop centre point.
// Then determines if the player/client is controlling a unit identified
// by the argument list. If so, registers an action to allow them to configure the 
// centre point for the mis-drop dynamically. 

// Set public coordantes var to default value nul, and the map close global var.
SIXAB_MisDrop_Coordinates = [];
SIXAB_MisDrop_Close = false;

// Register public variable handler to setup misdrop point.
"SIXAB_MisDrop_Coordinates" addPublicVariableEventHandler {
	diag_log format ["SIXAB_Scripts/MisDrop/InitClient: Coords = %1", _this select 1];
	SIXAB_MisDrop_Coordinates = (_this select 1);
};

// Request the coordinates from the server.
SIXAB_MisDrop_CoordinatesRequest = player;
publicVariableServer "SIXAB_MisDrop_CoordinatesRequest";

// Create function to be called when map is clicked.
SIXAB_MisDrop_MapClicked = {
	diag_log format ["Alt: %1", _this select 4];
	if (_this select 4) then {
		SIXAB_MisDrop_Coordinates = _pos;
		SIXAB_MisDrop_Close = true;
		hint "Mis-drop point set";
	};
};

// Create function to specify mis-drop centre point.
SIXAB_MisDrop_SpecifyCentrePoint = {
	// Hint message because we need to sleep temporarily while the alive menu closes.
	hint "ALT (Hold) + LMB to set centre point";
	
	// Register on map click function.
	onMapSingleClick "
	[_this, _pos, _units, _shift, _alt] call SIXAB_MisDrop_MapClicked;
	true;
	";
	
	// Set close map to false.
	SIXAB_MisDrop_Close = false;
	
	// Open the players map.
	openMap true;
	
	// Wait for signal to close map.
	waitUntil {
		SIXAB_MisDrop_Close;
	};
	
	// Close map and remove single click listener.
	openMap false;
	onMapSingleClick "false;";
	
	// Broadcast the variable to all clients.
	publicVariable "SIXAB_MisDrop_Coordinates";
};

