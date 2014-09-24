/*
	File: fn_radar40.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	This is the server-side part of it which constantly monitors the radar and vehicles near it.
	First originally tried triggers but I was never any good at those nor do I like them as they 
	have a global effect.
	Added Radarflash by Warsheep(GER)
*/
private["_nearVehicles","_radar40"];
_radar40 = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _radar40) exitWith {}; //Bad vehicle type passed.

waitUntil {_nearVehicles = nearestObjects[getPos _radar40,["Car"],15]; count _nearVehicles > 0 OR isNull _radar40};
if (vehicle player isKindOf "Car" && speed player > 45 && driver vehicle player == player && side player == civilian) then
	nul = [[player,speed player,45],"life_fnc_radarFlash",player,false] spawn life_fnc_MP;
};

waitUntil {_nearVehicles = nearestObjects[getPos _radar40,["Car"],2]; count _nearVehicles > 0 OR isNull _radar40};

if(isNull _radar40) exitWith {}; //It was picked up?
_vehicle = _nearVehicles select 0;

if(isNil "_vehicle") exitWith {deleteVehicle _radar40};
[[_vehicle],"life_fnc_radarEffect",_vehicle,false] spawn life_fnc_MP;
deleteVehicle _radar40;