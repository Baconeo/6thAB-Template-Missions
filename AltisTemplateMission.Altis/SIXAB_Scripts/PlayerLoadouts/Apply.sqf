
// Create parameters
private ["_unit", "_loadout"];
_unit = _this select 0;
_loadout = toUpper(_this select 1);

// Wait for player to be initialised.
waitUntil {
	((getPlayerUID player) != "");
};

// Ensure the player passed in is equal to the "player" special variable.
if (player == _unit) then {

	// Remove all the weapons.
	removeAllWeapons _unit; 
	_unit disableAI "MOVE"; 
	
	// Switch the loadout and apply it.
	switch (_loadout) do {
		
		// Commanding Officer.
		case "CO": {
			_unit addvest "UK3CB_BAF_V_Osprey_Holster"; 
			_unit addHeadgear "B_P_Beret";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
		};
		
		// Squad leaders.
		case "SQUADLEADER1": {
			_unit addbackpack "UK3CB_BAF_B_Bergen_MTP_SL_L_A";
			_unit addvest "UK3CB_BAF_V_Osprey_SL_C"; 
			_unit addHeadgear "B_P_Beret";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
		};
		
		// Squad leaders.
		case "SQUADLEADER2": {
			_unit addbackpack "UK3CB_BAF_B_Bergen_MTP_SL_L_A";
			_unit addvest "UK3CB_BAF_V_Osprey_SL_D"; 
			_unit addHeadgear "B_P_Beret";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
		};
		
		// Designated Marksman.
		case "DMR": {
			_unit addbackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B";
			_unit addvest "UK3CB_BAF_V_Osprey_Marksman_A";
			_unit addHeadgear "B_P_Beret";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
		};
		
		// Grenadier.
		case "GREN": {
			_unit addbackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C";
			_unit addvest "UK3CB_BAF_V_Osprey_Grenadier_B";
			_unit addHeadgear "B_P_Beret";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
		};
			
		// Combat Medical Technician.
		case "CMT": {
			_unit addbackpack "UK3CB_BAF_B_Bergen_MTP_Medic_L_A"; 
			_unit addvest "UK3CB_BAF_V_Osprey_Medic_C"; 
			_unit addHeadgear "B_P_Beret";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
			(unitBackpack _unit) addItemCargoGlobal ["ace_quikclot", 15];		
			(unitBackpack _unit) addItemCargoGlobal ["ace_fieldDressing", 15];
			(unitBackpack _unit) addItemCargoGlobal ["ace_packingbandage", 30];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_elasticBandage", 15];
			(unitBackpack _unit) addItemCargoGlobal ["ace_tourniquet", 4];
			(unitBackpack _unit) addItemCargoGlobal ["ace_salineiv", 4];
			(unitBackpack _unit) addItemCargoGlobal ["ace_morphine", 20];
			(unitBackpack _unit) addItemCargoGlobal ["ace_epinephrine", 20];
			(unitBackpack _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(unitBackpack _unit) addItemCargoGlobal ["ACE_surgicalKit", 8];
		};	
		
		// Automatic Rifleman/Machine Gunner.
		case "AR": {
			_unit addbackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D";
			_unit addvest "UK3CB_BAF_V_Osprey_MG_A"; 
			_unit addHeadgear "B_P_Beret";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_salineiv", 1];
		};
		
		// Standard Rifleman.
		case "RIFLEMAN": {
			_unit addbackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B";
			_unit addvest "UK3CB_BAF_V_Osprey_Rifleman_E"; 
			_unit addHeadgear "B_P_Beret";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
		};
		
		// Recruits.
		case "RECRUIT": {
			_unit addbackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";
			_unit addvest "UK3CB_BAF_V_Osprey_Rifleman_A"; 
			_unit addHeadgear "H_Beret_blk";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
		};
		
		// Recce Group.
		case "RECCE": {
			_unit addvest "UK3CB_BAF_V_Osprey_MG_B"; 
			_unit addHeadgear "B_P_Beret";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
		};
		
		// Pilots.
		case "PILOT": {
			removeUniform _unit;
			_unit addUniform "UK3CB_BAF_U_HeliPilotCoveralls_RAF";
			_unit addvest "UK3CB_BAF_V_Pilot_A"; 
			_unit addHeadgear "B_P_Beret";
			_unit addweapon "ItemCompass";
			(uniformContainer _unit) addItemCargoGlobal ["ace_fieldDressing", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_packingbandage", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ACE_elasticBandage", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_tourniquet", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_personalaidkit", 1];
			(uniformContainer _unit) addItemCargoGlobal ["ace_morphine", 2];
			(uniformContainer _unit) addItemCargoGlobal ["ace_epinephrine", 2];
		};						
	};
	
	// Exit with a initialised message.
	if(true) exitWith{
		player sideChat "Character Initialised"; 
	};
};