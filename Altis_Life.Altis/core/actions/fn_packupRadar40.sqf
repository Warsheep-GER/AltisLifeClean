/*
	File: fn_packupRadar40.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed Radar.
*/
private["_radar40"];
_radar40 = nearestObjects[getPos player,["Land_Runway_PAPI"],8] select 0;
if(isNil "_radar40") exitWith {};

if(([true,"radar40",1] call life_fnc_handleInv)) then
{
	titleText[localize "STR_NOTF_Radar","PLAIN"];
	player removeAction life_action_radar40Pickup;
	life_action_radar40Pickup = nil;
	deleteVehicle _radar40;
};