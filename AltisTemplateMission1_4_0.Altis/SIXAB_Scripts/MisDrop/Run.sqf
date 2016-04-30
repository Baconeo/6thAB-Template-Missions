
// Create private variables and create alias'
private ["_markerPos", "_unit", "_radius", "_locationx", "_locationy", "_locationz", "_finalLocation"];

// If there is more than 1 argument, use the marker passed in, else try to use the coords 
// set dynamically.
if ((count _this) > 1) then {
	// Get marker pos and unit.
	_markerPos = (getMarkerPos (_this select 0));
	_unit = (_this select 1);
} else {
	// Select the unit and use the global coordinates.
	_unit = (_this select 0);
	
	// Set marker post to the coords.
	_markerPos = SIXAB_MisDrop_Coordinates;
};

if ((count SIXAB_MisDrop_Coordinates) != 0) then {

diag_log format ["Coordinates: %1", _markerPos];

// Set the locations for the mis-drop.
_locationx = (_markerPos select 0);
_locationy = (_markerPos select 1);
_locationz = (_markerPos select 2);

// Set radius for spawn
_radius = 1500 + random(1500);

// Move player to new location.
_finalLocation = [(_locationx) + _radius * sin(random 359), (_locationy) + _radius * cos(random 359), (_locationz) + 100];
_unit setPos _finalLocation;
_unit allowDamage false;

// Put the unit in a newly created parachute.
_para = "OH_T10_PARACHUTE" createVehicle (position player);
_para setPos (getPos player);
player moveInDriver _para;

waitUntil {isTouchingGround _unit};

//Enable damage taking on the unit
_unit allowDamage true;

} else {
		hintC "No mis-drop coordinates available";
		diag_log "SIXAB_Scripts/MisDrop/Run: No Misdrop coords, exiting.";
		};