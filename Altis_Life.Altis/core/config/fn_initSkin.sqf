#include <macro.h>
/*
	File: fn_initSkin.sqf
	
	Description:
	Skin changer
*/
while {true} do
	{
	if(playerSide == civilian) exitWith {};
	if(playerSide == west) then 
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"closkins\cop\polizei.paa"];
			if(license_cop_bund) then {
				player setObjectTextureGlobal[0,"closkins\cop\bund.paa"];
			};
		};
	};
	if(playerSide == independent) then
	{
		if (uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal[0,"closkins\med\notartzt.paa"];
			if(license_med_bund) then {
				player setObjectTextureGlobal[0,"closkins\med\bund.paa"];
			};
		};
	};
	};
	sleep 1.5;//safe some cpu
};