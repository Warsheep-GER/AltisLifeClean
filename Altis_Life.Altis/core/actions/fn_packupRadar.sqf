/*
	File: fn_packupradar.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Packs up a deployed Radar.
*/
private["_radar"];
_radar = nearestObjects[getPos player,["Land_Runway_PAPI_4"],8] select 0;
if(isNil "_radar") exitWith {};

if(([true,"spikeStrip",1] call life_fnc_handleInv)) then
{
	titleText[localize "STR_NOTF_Radar","PLAIN"];
	player removeAction life_action_radarPickup;
	life_action_radarPickup = nil;
	deleteVehicle _radar;
};