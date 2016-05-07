
// Make sure this is not a server.
if (isServer) exitWith {
	diag_log "SIXAB_Scripts/PAraDrop/StaticLineSimulation/InitClient: Not client, exiting.";
};

// CLIENT SIDE LOGIC.
// Registers a handler to accept new coordinates once a request is dispatched. When coordinates
// are receieved, a non-steerable parachute is spawned at the coordinates 250m AGL and the 
// player moved into the parachute (it's a vehicle, go figure).

// Register handler for coordinates request, response.
"PARAJUMP_Coordinates" addPublicVariableEventHandler {
	// Create private variable.
	private ["_coordinates", "_parachute"];
	
	// Alias for payload.
	_coordinates = ((_this select 1) vectorAdd [0, 0, 250]);
	
	// Create parachute and put player into it (it's a vehicle :|... wtf).
	_parachute = "6th_T10_PARACHUTE" createVehicle _coordinates;
	_parachute setPosATL _coordinates;
	player moveInDriver _parachute;
	player allowDamage false;
	
	waitUntil {isTouchingGround player};

	//Enable damage taking on the unit
	player allowDamage true;
};