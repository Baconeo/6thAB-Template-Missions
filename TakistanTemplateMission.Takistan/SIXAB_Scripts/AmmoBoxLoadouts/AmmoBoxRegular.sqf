//................................
//	Fill Ammo Box Script by REME (6th AB)
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

_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_EMAG_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_RIS_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_RIS_AFG_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_UGL_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_UGL_HWS_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L129A1_FGrip",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L86A2_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L110A2",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L131A1",20];

//Ammo

_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_20Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_20Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_100Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_100Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_17Rnd_9mm",100];

_box addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell",100];

_box addMagazineCargoGlobal ["UGL_FlareCIR_F",100];
_box addMagazineCargoGlobal ["UGL_FlareGreen_F",100];
_box addMagazineCargoGlobal ["UGL_FlareRed_F",100];
_box addMagazineCargoGlobal ["UGL_FlareWhite_F",100];
_box addMagazineCargoGlobal ["UGL_FlareYellow_F",100];

// Launchers & Ammo

_box addWeaponCargoGlobal ["UK3CB_BAF_NLAW_Launcher",50];
_box addWeaponCargoGlobal ["UK3CB_BAF_AT4_CS_AT_Launcher",50];
_box addWeaponCargoGlobal ["UK3CB_BAF_AT4_CS_AP_Launcher",50];

// Throw Items

_box addMagazineCargoGlobal ["SmokeShell",100];
_box addMagazineCargoGlobal ["SmokeShellRed",100];
_box addMagazineCargoGlobal ["SmokeShellGreen",100];
_box addMagazineCargoGlobal ["SmokeShellYellow",100];
_box addMagazineCargoGlobal ["SmokeShellPurple",100];
_box addMagazineCargoGlobal ["SmokeShellBlue",100];

_box addMagazineCargoGlobal ["HandGrenade",50];
_box addMagazineCargoGlobal ["MiniGrenade",50];

_box addMagazineCargoGlobal ["Chemlight_green",50];
_box addMagazineCargoGlobal ["Chemlight_red",50];
_box addMagazineCargoGlobal ["Chemlight_yellow",50];
_box addMagazineCargoGlobal ["Chemlight_blue",50];

// Items

_box addItemCargoGlobal ["UK3CB_BAF_Eotech",20];
_box addItemCargoGlobal ["UK3CB_BAF_SpecterLDS_Dot_3D",20];
_box addItemCargoGlobal ["UK3CB_BAF_SUSAT_3D",20];
_box addItemCargoGlobal ["UK3CB_BAF_TA31F_Hornbill_3D",20];
_box addItemCargoGlobal ["UK3CB_BAF_TA648_308",20];

_box addItemCargoGlobal ["UK3CB_BAF_sffh",20];
_box addItemCargoGlobal ["UK3CB_BAF_Flashlight_L131A1",20];
_box addItemCargoGlobal ["UK3CB_BAF_LLM_Flashlight_Tan",20];
_box addItemCargoGlobal ["ace_sparebarrelbag",20];

_box addItemCargoGlobal ["tf_rf7800str",20];
_box addItemCargoGlobal ["tf_anprc152",20];

_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Camo_B",20];
_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Net_B",20];
_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Scrim_B",20];
_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Scrim_F",20];

_box addItemCargoGlobal ["UK3CB_BAF_G_Tactical_Grey",20];
_box addItemCargoGlobal ["UK3CB_BAF_G_Tactical_Black",20];


_box addItemCargoGlobal ["ACE_MapTools",10];
_box addItemCargoGlobal ["ACE_EarPlugs",10];
_box addItemCargoGlobal ["ACE_CableTie",20];
_box addItemCargoGlobal ["ACE_wirecutter",10];
_box addWeaponCargoGlobal ["ACE_DAGR",10];
_box addItemCargoGlobal ["ACE_IR_Strobe_Item",10];

_box addWeaponCargoGlobal ["ACE_Vector",20];
_box addWeaponCargoGlobal ["Binocular",20];
_box addWeaponCargoGlobal ["Rangefinder",20];
_box addItemCargoGlobal ["UK3CB_BAF_HMNVS",20];
_box addItemCargoGlobal ["ACE_Flashlight_XL50",20];
_box addItemCargoGlobal ["ACE_Flashlight_MX991",20];

_box addWeaponCargoGlobal ["MineDetector",20];

_box addItemCargoGlobal ["ItemCompass",10];
_box addItemCargoGlobal ["ItemGPS",10];
_box addItemCargoGlobal ["ItemMap",10];
_box addItemCargoGlobal ["ItemWatch",10];

// Backpacks
    
_box addbackpackcargoGlobal ["UK3CB_BAF_B_Bergen_MTP_SL_L_A",3];
_box addbackpackcargoGlobal ["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",10];