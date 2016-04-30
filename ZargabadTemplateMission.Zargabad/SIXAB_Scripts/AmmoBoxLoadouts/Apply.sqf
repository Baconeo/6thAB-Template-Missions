
// Ensure we're on the server.
if (!isServer) exitWith {};

// Create argument alias'
private ["_box", "_loadout"];
_box = (_this select 0);
_loadout = toUpper(_this select 1);

diag_log format ["SIXAB AmmoBoxLoadouts: Loadout = %1", _loadout];

// Switch the loadout and pass in the box to the relevant script.
switch (_loadout) do 
{
	case "AIRDROP": {
		nul = [_box] execVM "SIXAB_Scripts\AmmoBoxLoadouts\AmmoBoxAirdrop.sqf";
	};
	case "EMPTY": {
		nul = [_box] execVM "SIXAB_Scripts\AmmoBoxLoadouts\AmmoBoxEmpty.sqf";
	};
	
	case "FLIGHT": {
		nul = [_box] execVM "SIXAB_Scripts\AmmoBoxLoadouts\AmmoBoxFlight.sqf";
	};
	
	case "FSG": {
		nul = [_box] execVM "SIXAB_Scripts\AmmoBoxLoadouts\AmmoBoxFSG.sqf";
	};
	
	case "HQ": {
		nul = [_box] execVM "SIXAB_Scripts\AmmoBoxLoadouts\AmmoBoxHQ.sqf";
	};
	
	case "MEDICAL": {
		nul = [_box] execVM "SIXAB_Scripts\AmmoBoxLoadouts\AmmoBoxMedical.sqf";
	};
	
	case "RECCE": {
		nul = [_box] execVM "SIXAB_Scripts\AmmoBoxLoadouts\AmmoBoxRecce.sqf";
	};
	
	case "REGULAR": {
		nul = [_box] execVM "SIXAB_Scripts\AmmoBoxLoadouts\AmmoBoxRegular.sqf";
	};
		
	case "SIGNALS": {
		nul = [_box] execVM "SIXAB_Scripts\AmmoBoxLoadouts\AmmoBoxSignals.sqf";
	};
};