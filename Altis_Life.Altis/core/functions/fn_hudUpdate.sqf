/*
	File: fn_hudUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the HUD when it needs to.
*/
private["_ui","_food","_water","_health","_fps"];
disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};
_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_geld = _ui displayCtrl 23520;
_fps = _ui displayCtrl 23525;

//Update food
_food ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.548];
_food ctrlSetText format["%1", life_hunger];
_food ctrlCommit 0;
//Update Water
_water ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.502];
_water ctrlSetText format["%1", life_thirst];
_water ctrlCommit 0;
//Update Health
_health ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.456];
_health ctrlSetText format["%1", round((1 - (damage player)) * 100)];
_health ctrlCommit 0;
//Update Health
_geld ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.456];
_geld ctrlSetText format["%1", round((1 - (damage player)) * 100)];
_geld ctrlCommit 0;
//FPS///need alone bec real time FPS
//_fps ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.231];
//_fps ctrlSetText format["%1", round diag_fps];					
//_fps ctrlCommit 0;