
// Server side Initialisation.
// Executed once on the server when the mission starts.

// Initialise server side mis-drop.
execVM "SIXAB_Scripts\MisDrop\InitServer.sqf";
execVM "IntLight.sqf";
execVM "SIXAB_Scripts\RespawnHandler\InitServer.sqf";
if(true) exitWith {}; 