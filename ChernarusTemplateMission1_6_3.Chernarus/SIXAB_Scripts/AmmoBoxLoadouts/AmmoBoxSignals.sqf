//................................
//	Fill Ammo Box Script by REME (6TH AB)
//................................

if (!isServer) exitWith {};

// Settings
private ["_amountWeapon", "_amountAmmo", "_box"];
//_amountWeapon = 20;
//_amountAmmo = 100;

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

_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_UGL_6th",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_UGL_HWS_6th",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_EMAG_6th",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_RIS_AFG_6th",10];

//Ammo

_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd_T",100];

_box addMagazineCargoGlobal ["UGL_FlareCIR_F",100];
_box addMagazineCargoGlobal ["UGL_FlareGreen_F",100];
_box addMagazineCargoGlobal ["UGL_FlareRed_F",100];
_box addMagazineCargoGlobal ["UGL_FlareWhite_F",100];
_box addMagazineCargoGlobal ["UGL_FlareYellow_F",100];
_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell",100];

// Throw Items

_box addMagazineCargoGlobal ["SmokeShellRed",100];
_box addMagazineCargoGlobal ["SmokeShellGreen",100];
_box addMagazineCargoGlobal ["SmokeShellYellow",100];
_box addMagazineCargoGlobal ["SmokeShellPurple",100];
_box addMagazineCargoGlobal ["SmokeShellBlue",100];
_box addMagazineCargoGlobal ["SmokeShell",100];
_box addMagazineCargoGlobal ["Chemlight_green",100];
_box addMagazineCargoGlobal ["Chemlight_red",100];
_box addMagazineCargoGlobal ["Chemlight_yellow",100];
_box addMagazineCargoGlobal ["Chemlight_blue",100];

// Items

_box addItemCargoGlobal ["UK3CB_BAF_Eotech",10];
_box addItemCargoGlobal ["UK3CB_BAF_SpecterLDS_Dot_3D",10];
_box addItemCargoGlobal ["UK3CB_BAF_SUSAT_3D",10];
_box addItemCargoGlobal ["UK3CB_BAF_TA31F_Hornbill_3D",10];

_box addItemCargoGlobal ["UK3CB_BAF_sffh",10];
_box addItemCargoGlobal ["UK3CB_BAF_Flashlight_L131A1",10];
_box addItemCargoGlobal ["UK3CB_BAF_LLM_Flashlight_Tan",10];

_box addItemCargoGlobal ["tf_rf7800str",20];
_box addItemCargoGlobal ["tf_anprc152",50];

_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Camo_A",10];
_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Net_CESS_A",10];
_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Scrim_ESS_C",10];

_box addItemCargoGlobal ["UK3CB_BAF_G_Tactical_Yellow",10];
_box addItemCargoGlobal ["UK3CB_BAF_G_Tactical_Clear",10];

_box addItemCargoGlobal ["ItemCompass",10];
_box addItemCargoGlobal ["ItemGPS",10];
_box addItemCargoGlobal ["ItemMap",10];
_box addItemCargoGlobal ["ItemWatch",10];
_box addItemCargoGlobal ["ACE_MapTools",10];
_box addItemCargoGlobal ["ACE_EarPlugs",10];
_box addWeaponCargoGlobal ["ACE_DAGR",10];
_box addItemCargoGlobal ["ACE_IR_Strobe_Item",10];

_box addWeaponCargoGlobal ["ACE_Vector",10];
_box addWeaponCargoGlobal ["Binocular",10];
_box addWeaponCargoGlobal ["Rangefinder",10];
_box addItemCargoGlobal ["UK3CB_BAF_HMNVS",10];
_box addItemCargoGlobal ["ACE_Flashlight_XL50",10];
_box addItemCargoGlobal ["ACE_Flashlight_MX991",20];

_box addWeaponCargoGlobal ["UK3CB_BAF_Soflam_Laserdesignator",10];
_box addWeaponCargoGlobal ["Laserdesignator",10];
_box addItemCargoGlobal ["laserbatteries",10];
_box addItemCargoGlobal ["ItemcTab", 10];

// Backpacks
    
_box addbackpackcargoGlobal ["UK3CB_BAF_B_Bergen_MTP_JTAC_L_A",10];
_box addbackpackcargoGlobal ["UK3CB_BAF_B_Bergen_MTP_Radio_L_A",10];
_box addbackpackcargoGlobal ["UK3CB_BAF_B_Bergen_MTP_Radio_L_B",10];