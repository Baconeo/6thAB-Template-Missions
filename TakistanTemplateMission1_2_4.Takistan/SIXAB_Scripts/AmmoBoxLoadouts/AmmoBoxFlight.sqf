//................................
//	Fill Ammo Box Script by REME (6th AB)
//................................

if (!isServer) exitWith {};

// Settings
private ["_amountWeapon", "_amountAmmo", "_box"];
_amountWeapon = 20;
_amountAmmo = 100;

// Set the box variable
_box = (_this select 0);

//_box allowDamage false;

// Clear box
clearWeaponCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearItemCargoGlobal _box;
clearBackpackCargoGlobal _box;

// Fill box

// Weapons

_box addWeaponCargoGlobal ["UK3CB_BAF_L22_6th",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L22A2_6th",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L131A1",10];

//Ammo

_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_17Rnd_9mm",100];

// Throw Items

_box addMagazineCargoGlobal ["SmokeShell",50];
_box addMagazineCargoGlobal ["SmokeShellRed",50];
_box addMagazineCargoGlobal ["SmokeShellGreen",50];
_box addMagazineCargoGlobal ["SmokeShellYellow",50];
_box addMagazineCargoGlobal ["SmokeShellPurple",50];
_box addMagazineCargoGlobal ["SmokeShellBlue",50];

_box addMagazineCargoGlobal ["Chemlight_green",50];
_box addMagazineCargoGlobal ["Chemlight_red",50];
_box addMagazineCargoGlobal ["Chemlight_yellow",50];
_box addMagazineCargoGlobal ["Chemlight_blue",50];

// Items

_box addItemCargoGlobal ["UK3CB_BAF_Eotech",10];
_box addItemCargoGlobal ["UK3CB_BAF_SpecterLDS_Dot_3D",10];
_box addItemCargoGlobal ["UK3CB_BAF_SUSAT_3D",10];
_box addItemCargoGlobal ["UK3CB_BAF_TA31F_Hornbill_3D",10];

_box addItemCargoGlobal ["UK3CB_BAF_sffh",10];
_box addItemCargoGlobal ["UK3CB_BAF_Flashlight_L131A1",10];
_box addItemCargoGlobal ["UK3CB_BAF_LLM_Flashlight_Tan",10];

_box addItemCargoGlobal ["tf_rf7800str",20];
_box addItemCargoGlobal ["tf_anprc152",20];

_box addItemCargoGlobal ["UK3CB_BAF_H_PilotHelmetHeli_A",10];
_box addItemCargoGlobal ["H_PilotHelmetFighter_B",10];
_box addItemCargoGlobal ["UK3CB_BAF_G_Tactical_Black",20];
_box addItemCargoGlobal ["UK3CB_BAF_G_Tactical_Grey",20];
_box addItemCargoGlobal ["UK3CB_BAF_HMNVS",10];
_box addItemCargoGlobal ["U_B_PilotCoveralls",10];

_box addItemCargoGlobal ["ACE_MapTools",10];
_box addWeaponCargoGlobal ["ACE_DAGR",10];
_box addWeaponCargoGlobal ["ACE_Vector",10];
_box addWeaponCargoGlobal ["Rangefinder",10];
_box addItemCargoGlobal ["ItemcTab",10];
_box addItemCargoGlobal ["ACE_Flashlight_XL50",20];
_box addItemCargoGlobal ["ACE_Flashlight_MX991",20];

_box addItemCargoGlobal ["ACE_EarPlugs",10];
_box addItemCargoGlobal ["ItemCompass",10];
_box addItemCargoGlobal ["ItemGPS",10];
_box addItemCargoGlobal ["ItemMap",10];
_box addItemCargoGlobal ["ItemWatch",10];

// Backpacks
    
_box addbackpackcargoGlobal ["tf_rt1523g_rhs",20];
