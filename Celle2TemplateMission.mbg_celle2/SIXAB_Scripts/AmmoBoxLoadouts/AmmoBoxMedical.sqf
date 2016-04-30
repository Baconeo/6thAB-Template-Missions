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

// Medical

_box addItemCargoGlobal ["ace_personalaidkit", 50];
_box addItemCargoGlobal ["ACE_surgicalKit", 40];

_box addItemCargoGlobal ["ACE_bloodIV", 20];
_box addItemCargoGlobal ["ACE_bloodIV_500", 20];
_box addItemCargoGlobal ["ACE_bloodIV_250", 20];

_box addItemCargoGlobal ["ACE_plasmaIV", 20];
_box addItemCargoGlobal ["ACE_plasmaIV_500", 20];
_box addItemCargoGlobal ["ACE_plasmaIV_250", 20];

_box addItemCargoGlobal ["ACE_plasmaIV", 20];
_box addItemCargoGlobal ["ACE_plasmaIV", 20];
_box addItemCargoGlobal ["ACE_plasmaIV", 20];