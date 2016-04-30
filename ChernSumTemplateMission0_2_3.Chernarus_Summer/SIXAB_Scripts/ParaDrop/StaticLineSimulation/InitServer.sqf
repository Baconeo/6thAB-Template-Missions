
// Ensure we're running on the server.
if (!isServer) exitWith {
	diag_log "SIXAB_Scripts/ParaDrop/StaticLineSimulation/InitServer: Not server, exiting."
};

// SERVER LOGIC
// Takes two pre-placed markers and generates a vector between the two. Then calculates
// the X and Y required to move the _distanceBetweenDrops along that vector. Once
// calculated, registers a handler to accept "coordinates" requests where the client
// will receive the coordinates to para drop on.

// Create private variables for arguments.
private ["_marker1", "_marker2", "_distanceBetweenDrops"];

// Create argument alias'.
_marker1 = _this select 0;
_marker2 = _this select 1;
_distanceBetweenDrops = _this select 2;

// Calculate angle.
// Calculate L & W increments.
// Every time someone makes request, "next coordinates" with 
private ["_m1X", "_m1Y", "_m2X", "_m2Y", "_currentXLength", "_currentYLength", 
	"_xDirection", "_yDirection", "_angle"];

//Getting Marker 1 and Marker 2 x and y pos
//Marker1
_m1X = (getMarkerPos _marker1) select 0;
_m1Y = (getMarkerPos _marker1) select 1;

//Marker2
_m2X = (getMarkerPos _marker2) select 0;
_m2Y = (getMarkerPos _marker2) select 1;
	
//Working out the adjacent and opposite
_currentXLength = round (_m1X - _m2X);
_currentYLength = round (_m1Y - _m2Y);

// Working out direction of the vector.
if (_currentXLength >= 0) then {
	_xDirection = -1;
} else {
	_xDirection = 1;
};

if (_currentYLength >= 0) then {
	_yDirection = -1;
} else {
	_yDirection = 1;
};

diag_log format ["(SERVER) PARAJUMP: X Direction = %1; Y Direction = %2", 
	_xDirection, _yDirection];

// Force differences in X and Y to be positive.
if (_currentXLength < 0) then {
	_currentXLength = _currentXLength * -1;
};

if (_currentYLength < 0) then {
	_currentYLength = _currentYLength * -1;
};

diag_log format ["(SERVER) PARAJUMP: X Difference = %1; Y Difference = %2", 
	_currentXLength, _currentYLength];

// Determine the opposite and adjacent sides so we can calculate the angle.
if (_yDirection == -1) then {
	_angle = round (atan(_currentXLength / _currentYLength));
} else {
	_angle = round (atan(_currentYLength / _currentXLength));
};

diag_log format ["(SERVER) PARAJUMP: Angle = %1", _angle];

// If we have a positive Y axis, the Y axis is the opposite side from the angle.
// If it's a negative Y axis, the X axis is the opposite side from the angle.
if (_yDirection == -1) then { 
	// Take x axis as opposite
	PARAJUMP_yIncrementalDistance = (sin(_angle) * _distanceBetweenDrops) * _yDirection;
	PARAJUMP_xIncrementalDistance = (cos(_angle) * _distanceBetweenDrops) * _xDirection;
} else {
	//Take y axus as opposite
	PARAJUMP_yIncrementalDistance = (cos(_angle) * _distanceBetweenDrops) * _yDirection;
	PARAJUMP_xIncrementalDistance = (sin(_angle) * _distanceBetweenDrops) * _xDirection;
};

diag_log format ["(SERVER) PARAJUMP: X Increment = %1; Y Increment = %2", 
	PARAJUMP_xIncrementalDistance, PARAJUMP_yIncrementalDistance];

// Create the coordinates starting point.
PARAJUMP_Coordinates = getMarkerPos _marker1;

diag_log "(SERVER) PARAJUMP Coordinates: Registering handler.";

// Reset the coordinates to the original marker.
"PARAJUMP_CoordinatesReset" addPublicVariableEventHandler {
	PARAJUMP_Coordinates = _marker1;
};

// Register handler for coordinates request.
"PARAJUMP_CoordinatesRequest" addPublicVariableEventHandler {
	diag_log format ["(SERVER) PARAJUMP Coordinates: %1", PARAJUMP_Coordinates];
	
	// Send to requesting client.
	(owner (_this select 1)) publicVariableClient "PARAJUMP_Coordinates";
	
	// Add incremental number to the X and Y coordinates (incremental calculated above).
	PARAJUMP_Coordinates set [0, 
		(PARAJUMP_Coordinates select 0) + PARAJUMP_xIncrementalDistance];
	PARAJUMP_Coordinates set [1, 
		(PARAJUMP_Coordinates select 1) + PARAJUMP_yIncrementalDistance];
};