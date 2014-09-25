[] spawn
{
private["_ui","_geld","_fps"];
disableSerialization;
while {true} do
	{
_ui = uiNameSpace getVariable ["playerHUD",displayNull];
_geld = _ui displayCtrl 23520;
_fps = _ui displayCtrl 23525;
//Update Money
_geld ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.456];
_geld ctrlSetText format["%1", life_cash];
_geld ctrlCommit 0;
//Update FPS
_fps ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.412];
_fps ctrlSetText format["%1", round diag_fps];					
_fps ctrlCommit 0;

	};
};