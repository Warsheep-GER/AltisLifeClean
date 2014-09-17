#include <macro.h>
/*
	File: fn_adminCleanupPpl.sqf
	Author: Warsheep
	
	Description:
	Cleanup Server (dead player) 
*/

if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};
{
	deleteVehicle _x;
} forEach allDead;
hint format["All Dead Player Have Been Removed!"];