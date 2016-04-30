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

//Ammo

_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_30Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_20Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_20Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_100Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_100Rnd_T",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_17Rnd_9mm",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_75Rnd",100];
_box addMagazineCargoGlobal ["UK3CB_BAF_75Rnd_T",100];

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

_box addMagazineCargoGlobal ["UK3CB_BAF_AT4_CS_AT_Launcher",25];

// Throw Items

_box addMagazineCargoGlobal ["SmokeShell",25];
_box addMagazineCargoGlobal ["SmokeShellRed",25];
_box addMagazineCargoGlobal ["SmokeShellGreen",25];
_box addMagazineCargoGlobal ["SmokeShellYellow",25];
_box addMagazineCargoGlobal ["SmokeShellPurple",25];
_box addMagazineCargoGlobal ["SmokeShellBlue",25];

_box addMagazineCargoGlobal ["HandGrenade",20];
_box addMagazineCargoGlobal ["MiniGrenade",20];

_box addMagazineCargoGlobal ["Chemlight_green",25];
_box addMagazineCargoGlobal ["Chemlight_red",25];
_box addMagazineCargoGlobal ["Chemlight_yellow",25];
_box addMagazineCargoGlobal ["Chemlight_blue",25];