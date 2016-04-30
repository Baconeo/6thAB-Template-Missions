

// Ensure the player is initalised
if (!isServer) exitWith {};

// SERVER LOGIC
// Register public variable handler to respond to coordinates requests.

// Default the coordinates to empty array so clients know they've not been set.
SIXAB_MisDrop_Coordinates = [];

// Register public variable handler to setup misdrop point.
"SIXAB_MisDrop_Coordinates" addPublicVariableEventHandler {
	diag_log format ["SIXAB_Scripts/MisDrop/InitServer: Coords = %1", _this select 1];
	SIXAB_MisDrop_Coordinates = (_this select 1);
};

// Request for coordinates. Dispatches the coordinates to the requesting client.
"SIXAB_MisDrop_CoordinatesRequest" addPublicVariableEventHandler {
	(owner (_this select 1)) publicVariableClient "SIXAB_MisDrop_Coordinates";
};