// Ensure the player is initalised
if (!isServer) exitWith {};

SIXAB_Respawn_Player = [];

"SIXAB_Respawn_ListRequest" addPublicVariableEventHandler {
	(owner (_this select 1)) publicVariableClient "SIXAB_Respawn_Player";
};








