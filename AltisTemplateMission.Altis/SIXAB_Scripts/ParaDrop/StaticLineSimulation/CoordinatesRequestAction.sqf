
// Ensure player is initialised.
waitUntil {
	((getPlayerUID player) != "");
};

// Setup payload for coordinates request. Server needs a reference to this 
// player so it can send back to this client only.
PARAJUMP_CoordinatesRequest = player;

// Fire off request.
publicVariableServer "PARAJUMP_CoordinatesRequest";