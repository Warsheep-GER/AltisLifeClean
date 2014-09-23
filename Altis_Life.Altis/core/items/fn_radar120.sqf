/*
	File: fn_radar120.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates a radar and preps it.
*/
private["_position","_radar120"];
_radar120 = "Land_Runway_PAPI" createVehicle [0,0,0];
_radar120 attachTo[player,[0,5.5,0]];
_radar120 setDir 90;
_radar120 setVariable["item","radar40Deployed",true];

life_action_radar120Deploy = player addAction[localize "STR_ISTR_Radar_Place",{if(!isNull life_radar120) then {detach life_radar120; life_radar120 = ObjNull;}; player removeAction life_action_radar120Deploy; life_action_radar120Deploy = nil;},"",999,false,false,"",'!isNull life_radar120'];
life_radar120 = _radar120;
waitUntil {isNull life_radar120};
if(!isNil "life_action_radar120Deploy") then {player removeAction life_action_radar120Deploy;};
if(isNull _radar120) exitWith {life_radar120 = ObjNull;};
_radar120 setPos [(getPos _radar120 select 0),(getPos _radar120 select 1),0];
_radar120 setDamage 1;
life_action_radar120Pickup = player addAction[localize "STR_ISTR_Radar_Pack",life_fnc_packupRadar120,"",0,false,false,"",
' _radar120 = nearestObjects[getPos player,["Land_Runway_PAPI"],8] select 0; !isNil "_radar120" && !isNil {(_radar120 getVariable "item")}'];
[[_radar120],"TON_fnc_radar120",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.