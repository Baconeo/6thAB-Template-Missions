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

_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_EMAG_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_RIS_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_UGL_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L85A2_UGL_HWS_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L129A1_FGrip",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L86A2_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L110A2",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L7A2_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L131A1",10];
_box addWeaponCargoGlobal ["UK3CB_BAF_L128A1",10];

//Ammo

_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_20Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_20Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_100Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_100Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_75Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_75Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_L128A1_Pellets",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_17Rnd_9mm",100];

_box addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell",100];
_box addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell",100];

_box addMagazineCargoGlobal ["UGL_FlareCIR_F",50];
_box addMagazineCargoGlobal ["UGL_FlareGreen_F",50];
_box addMagazineCargoGlobal ["UGL_FlareRed_F",50];
_box addMagazineCargoGlobal ["UGL_FlareWhite_F",50];
_box addMagazineCargoGlobal ["UGL_FlareYellow_F",50];

// Launchers & Ammo

_box addWeaponCargoGlobal ["UK3CB_BAF_NLAW_Launcher",50];
_box addWeaponCargoGlobal ["UK3CB_BAF_AT4_CS_AT_Launcher",50];
_box addWeaponCargoGlobal ["UK3CB_BAF_AT4_CS_AP_Launcher",50];
_box addWeaponCargoGlobal ["UK3CB_BAF_Javelin_Slung_Tube",50];
_box addItemCargoGlobal ["UK3CB_BAF_Javelin_CLU",50];

//Static Weapons & Ammo

_box addWeaponCargoGlobal ["UK3CB_BAF_L16_Tripod",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L16_6th",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_Tripod",20];
_box addWeaponCargoGlobal ["UK3CB_BAF_L111A1",20];

_box addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_81mm_Mo_shells",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_81mm_Mo_Flare_white",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_81mm_Mo_Smoke_white",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_81mm_Mo_guided",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_150Rnd_762x51_Box",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_100Rnd_127x99_Box",100];

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

_box addItemCargoGlobal ["UK3CB_BAF_Eotech",20];
_box addItemCargoGlobal ["UK3CB_BAF_SpecterLDS_Dot_3D",20];
_box addItemCargoGlobal ["UK3CB_BAF_SUSAT_3D",20];
_box addItemCargoGlobal ["UK3CB_BAF_TA31F_Hornbill_3D",20];
_box addItemCargoGlobal ["UK3CB_BAF_TA648_308",20];
_box addItemCargoGlobal ["optic_Hamr",20];  
_box addItemCargoGlobal ["optic_Nightstalker",10];

_box addItemCargoGlobal ["UK3CB_BAF_sffh",20];
_box addItemCargoGlobal ["UK3CB_BAF_Flashlight_L131A1",20];
_box addItemCargoGlobal ["UK3CB_BAF_LLM_Flashlight_Tan",20];
_box addItemCargoGlobal ["ace_sparebarrelbag",20];

_box addItemCargoGlobal ["tf_rf7800str",20];
_box addItemCargoGlobal ["tf_anprc152",20];

_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Camo_C",20];
_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Net_C",20];
_box addItemCargoGlobal ["UK3CB_BAF_H_Mk7_Scrim_C",20];
_box addItemCargoGlobal ["G_Balaclava_lowprofile",20];
_box addItemCargoGlobal ["G_Balaclava_blk",20];
_box addItemCargoGlobal ["UK3CB_BAF_G_Tactical_Black",20];
_box addItemCargoGlobal ["UK3CB_BAF_G_Tactical_Yellow",20];

_box addItemCargoGlobal ["ACE_MapTools",10];
_box addItemCargoGlobal ["ACE_CableTie",10];
_box addItemCargoGlobal ["ACE_wirecutter",10];
_box addWeaponCargoGlobal ["ACE_DAGR",10];
_box addItemCargoGlobal ["ACE_IR_Strobe_Item",10];

_box addWeaponCargoGlobal ["ACE_Vector",20];
_box addWeaponCargoGlobal ["Binocular",20];
_box addWeaponCargoGlobal ["Rangefinder",20];
_box addItemCargoGlobal ["UK3CB_BAF_HMNVS",20];
_box addItemCargoGlobal ["ACE_Flashlight_XL50",20];
_box addItemCargoGlobal ["ACE_Flashlight_MX991",20];

_box addItemCargoGlobal ["ToolKit",20];
_box addWeaponCargoGlobal ["MineDetector",20];
_box addItemCargoGlobal ["ACE_RangeTable_82mm",20];

_box addItemCargoGlobal ["ACE_EarPlugs",10];
_box addItemCargoGlobal ["ItemCompass",10];
_box addItemCargoGlobal ["ItemGPS",10];
_box addItemCargoGlobal ["ItemMap",10];
_box addItemCargoGlobal ["ItemWatch",10];

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
    
_box addbackpackcargoGlobal ["UK3CB_BAF_B_Bergen_MTP_Radio_L_B",6];
_box addbackpackcargoGlobal ["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D",15];