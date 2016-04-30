//................................
//	Fill Ammo Box Script by Jordan Bache (6TH AB)
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

