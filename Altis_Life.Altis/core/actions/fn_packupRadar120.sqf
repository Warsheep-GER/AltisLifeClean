/*
	File: fn_packupRadar120.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed Radar.
*/
private["_radar120"];
_radar120 = nearestObjects[getPos player,["Land_Runway_PAPI"],8] select 0;
if(isNil "_radar120") exitWith {};

if(([true,"radar120",1] call life_fnc_handleInv)) then
{
	titleText[localize "STR_NOTF_Radar","PLAIN"];
	player removeAction life_action_radar120Pickup;
	life_action_radar120Pickup = nil;
	deleteVehicle _radar120;
};