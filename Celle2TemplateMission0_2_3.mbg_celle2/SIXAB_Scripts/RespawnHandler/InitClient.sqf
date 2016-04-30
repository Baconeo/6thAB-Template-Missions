
SIXAB_Respawn_Player = [];

SIXAB_Respawn_Array = {
	SIXAB_Respawn_ListRequest = player;
	publicVariableServer "SIXAB_Respawn_ListRequest";
	hint format ["Players who have pressed respawn: %1", SIXAB_Respawn_Player];
	diag_log format ["%1", SIXAB_Respawn_Player];
};

findDisplay 46 displayAddEventHandler ["KeyDown",{
    if ((_this select 1) in actionKeys "IngamePause") then {
        0 spawn {
            _t = diag_tickTime + 1;
            waitUntil {diag_tickTime > _t || !isNull findDisplay 49};
            if (diag_tickTime > _t) exitWith {};
            findDisplay 49 displayCtrl 1010 ctrlAddEventHandler ["ButtonClick",{ SIXAB_Respawn_Player = SIXAB_Respawn_Player + [profileName]; [-1,  hint format ["%1 has just clicked respawn!", profileName]] call CBA_fnc_globalExecute; publicVariable "SIXAB_Respawn_Player";  }];
        }
    };
    false
}];


