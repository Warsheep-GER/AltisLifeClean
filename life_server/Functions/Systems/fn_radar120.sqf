/*
	File: fn_radar120.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	This is the server-side part of it which constantly monitors the radar and vehicles near it.
	First originally tried triggers but I was never any good at those nor do I like them as they 
	have a global effect.
*/
private["_nearVehicles","_radar120"];
_radar120 = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _radar120) exitWith {}; //Bad vehicle type passed.

_trg=createTrigger["radar120",getPos _radar120];
_trg setTriggerArea[30,30,0,false];
_trg setTriggerActivation["CIV","PRESENT",true];
_trg setTriggerText "Radar120";
_trg setEffectCondition "this && (speed player) > 120 && {_x iskindof ""car""} count thislist > 0 && (vehicle player) in thislist && (driver vehicle player == player)";
if (triggeractivated trg1) then {
	nul = [[player,speed player,120],""life_fnc_radarFlash"",player,false] spawn life_fnc_MP;
};

waitUntil {_nearVehicles = nearestObjects[getPos _radar120,["Car"],5]; count _nearVehicles > 0 OR isNull _radar120};

if(isNull _radar120) exitWith {deleteVehicle _trg;}; //It was picked up?
_vehicle = _nearVehicles select 0;

if(isNil "_vehicle") exitWith {deleteVehicle _radar120;deleteVehicle _trg;};
[[_vehicle],"life_fnc_radarEffect",_vehicle,false] spawn life_fnc_MP;
deleteVehicle _radar120;
deleteVehicle _trg;