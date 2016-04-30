

// Create function to add menus to the players alive menu.
SIXAB_MisDrop_addMenus = {
	#include <\x\alive\addons\sys_viewdistance\script_component.hpp>
	#include <\x\cba\addons\ui_helper\script_dikCodes.hpp>

	private ["_menuDef", "_target", "_params", "_menuName", "_menuRsc", "_menus"];

	PARAMS_2(_target,_params);

	_menuName = "";
	_menuRsc = "popup";

	if (typeName _params == typeName []) then {
		if (count _params < 1) exitWith {diag_log format["Error: Invalid params: %1, %2", _this, __FILE__];};
		_menuName = _params select 0;
		_menuRsc = if (count _params > 1) then {_params select 1} else {_menuRsc};
	} else {
		_menuName = _params;
	};

	_menus = [
		[
			["main", "ALiVE", _menuRsc],
			[
				["6th AB Admin >",
					"",
					"",
					"",
					["call SIXAB_MisDrop_addMenus", "submenu", 1],
					-1, 1, true
				]
			]
		]
	];

	// Add submenu to the primary 6th admin menu.
	if (_menuName == "submenu") then {
		_menus set [count _menus,
			[
				["submenu", "6th AB Admin", "popup"],
				[
					["Set mis-drop centre point",
						{
							[] spawn {
								call SIXAB_MisDrop_SpecifyCentrePoint;
							};
						},
						"",
						"",
						"",
						-1,
						1,
						true
					]
				]
			]
		];
	};

	// Build the menu definition array.
	_menuDef = [];
	{
		if (_x select 0 select 0 == _menuName) exitWith {_menuDef = _x};
	} forEach _menus;

	// Make sure the menu definition array has something in it.
	if (count _menuDef == 0) then {
		hintC format ["Error: Menu not found: %1\n%2\n%3", str _menuName, if (_menuName == "") then {_this}else{""}, __FILE__];
		diag_log format ["Error: Menu not found: %1, %2, %3", str _menuName, _this, __FILE__];
	};

	_menuDef
};

// Menu actions.
["player", [SELF_INTERACTION_KEY], -9903, ["call SIXAB_MisDrop_addMenus;", "main"]] call ALIVE_fnc_flexiMenu_Add;
