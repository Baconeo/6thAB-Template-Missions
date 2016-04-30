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

_box addWeaponCargoGlobal ["FHQ_M4A1_WDL",10];
_box addWeaponCargoGlobal ["FHQ_M4A1_M203_WDL",10];
_box addWeaponCargoGlobal ["FHQ_M4A1_TAN",10];
_box addWeaponCargoGlobal ["FHQ_M4A1_M203_TAN",10];
_box addWeaponCargoGlobal ["FHQ_M4A1_BLK",10];
_box addWeaponCargoGlobal ["FHQ_M4A1_M203_BLK",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L129A1_FGrip",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L110A2",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L131A1",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L115A3",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L115A3_Desert",5];

//Ammo

_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_20Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_100Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_17Rnd_9mm",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_L115A3_Mag",100];

_box addMagazineCargoGlobal ["UGL_FlareCIR_F",100];
_box addMagazineCargoGlobal ["UGL_FlareGreen_F",100];
_box addMagazineCargoGlobal ["UGL_FlareRed_F",100];
_box addMagazineCargoGlobal ["UGL_FlareWhite_F",100];
_box addMagazineCargoGlobal ["UGL_FlareYellow_F",100];

_box addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell",100];

// Launchers & Ammo

_box addWeaponCargoGlobal ["UK3CB_BAF_AT4_CS_AT_Launcher",50];
_box addWeaponCargoGlobal ["UK3CB_BAF_AT4_CS_AP_Launcher",50];

// Throw Items

_box addMagazineCargoGlobal ["SmokeShell",100];
_box addMagazineCargoGlobal ["SmokeShellRed",100];
_box addMagazineCargoGlobal ["SmokeShellGreen",100];
_box addMagazineCargoGlobal ["SmokeShellYellow",100];
_box addMagazineCargoGlobal ["SmokeShellPurple",100];
_box addMagazineCargoGlobal ["SmokeShellBlue",100];

_box addMagazineCargoGlobal ["HandGrenade",100];
_box addMagazineCargoGlobal ["MiniGrenade",100];
_box addMagazineCargoGlobal ["ACE_M84",100];

_box addMagazineCargoGlobal ["Chemlight_green",100];
_box addMagazineCargoGlobal ["Chemlight_red",100];
_box addMagazineCargoGlobal ["Chemlight_yellow",100];
_box addMagazineCargoGlobal ["Chemlight_blue",100];

// Items

_box addItemCargoGlobal ["UK3CB_BAF_Eotech",20];
_box addItemCargoGlobal ["UK3CB_BAF_SpecterLDS_Dot_3D",20];
_box addItemCargoGlobal ["FHQ_optic_ACOG",20];
_box addItemCargoGlobal ["FHQ_optic_ACOG_tan",20];
_box addItemCargoGlobal ["optic_Hamr",20];
_box addItemCargoGlobal ["FHQ_optic_AimM_BLK",20];
_box addItemCargoGlobal ["FHQ_optic_AimM_TAN",20];
_box addItemCargoGlobal ["UK3CB_BAF_TA648_308",20];
_box addItemCargoGlobal ["optic_Nightstalker",20];
_box addItemCargoGlobal ["UK3CB_BAF_SB31250",20];
_box addItemCargoGlobal ["UK3CB_BAF_SB31250_Desert",20];

_box addItemCargoGlobal ["UK3CB_BAF_sffh",20];
_box addItemCargoGlobal ["UK3CB_BAF_Flashlight_L131A1",20];
_box addItemCargoGlobal ["UK3CB_BAF_LLM_Flashlight_Tan",20];
_box addItemCargoGlobal ["ace_sparebarrelbag",20];

_box addItemCargoGlobal ["tf_rf7800str",20];
_box addItemCargoGlobal ["tf_anprc152",20];

_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Camo_D",20];
_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Net_D",20];
_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Scrim_D",20];
_box addItemCargoGlobal ["H_Booniehat_tan",8];
_box addItemCargoGlobal ["UK3CB_BAF_G_Tactical_Black",20];
_box addItemCargoGlobal ["UK3CB_BAF_G_Tactical_Yellow",20];

_box addItemCargoGlobal ["ACE_CableTie",20];
_box addItemCargoGlobal ["ACE_wirecutter",20];
_box addItemCargoGlobal ["ACE_Altimeter",20];
_box addItemCargoGlobal ["ACE_MapTools",20];
_box addWeaponCargoGlobal ["ACE_DAGR",20];
_box addItemCargoGlobal ["ACE_IR_Strobe_Item",10];

_box addWeaponCargoGlobal ["ACE_Vector",20];
_box addWeaponCargoGlobal ["Binocular",20];
_box addWeaponCargoGlobal ["Rangefinder",20];
_box addItemCargoGlobal ["UK3CB_BAF_HMNVS",20];
_box addItemCargoGlobal ["ACE_Flashlight_XL50",20];
_box addItemCargoGlobal ["ACE_Flashlight_MX991",20];

_box addItemCargoGlobal ["FHQ_M4_muzzle_snds_556_blk",20];
_box addItemCargoGlobal ["FHQ_M4_muzzle_snds_556_tan",20];
_box addItemCargoGlobal ["FHQ_M4_muzzle_snds_556_wdl",20];
_box addItemCargoGlobal ["UK3CB_BAF_Silencer_L115A3",20];
_box addItemCargoGlobal ["UK3CB_BAF_Silencer_L110",20];
_box addItemCargoGlobal ["muzzle_snds_L",20];
_box addWeaponCargoGlobal ["MineDetector",20];

_box addItemCargoGlobal ["ItemCompass",10];
_box addItemCargoGlobal ["ItemGPS",10];
_box addItemCargoGlobal ["ItemMap",10];
_box addItemCargoGlobal ["ItemWatch",10];
_box addItemCargoGlobal ["ACE_EarPlugs",10];

// Explosives

_box addItemCargoGlobal ["ACE_DefusalKit",20];
_box addItemCargoGlobal ["ACE_Clacker",20];

_box addMagazineCargoGlobal ["DemoCharge_Remote_Mag",30];
_box addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",30];
_box addMagazineCargoGlobal ["ATMine_Range_Mag",30];
_box addMagazineCargoGlobal ["APERSMine_Range_Mag",30];
_box addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",30];
_box addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",30];
_box addMagazineCargoGlobal ["APERSTripMine_Wire_Mag",30];
_box addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",30];

// Backpacks
_box addbackpackcargoGlobal ["UK3CB_BAF_B_Bergen_MTP_Radio_H_B",5];
_box addbackpackcargoGlobal ["UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A",10];