/*
	File: fn_radar40.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates a radar40 and preps it.
*/
private["_position","_radar40"];
_radar40 = "Land_Runway_PAPI" createVehicle [0,0,0];
_radar40 attachTo[player,[0,5.5,0]];
_radar40 setDir 90;
_radar40 setVariable["item","radar40Deployed",true];

life_action_radar40Deploy = player addAction[localize "STR_ISTR_Radar_Place",{if(!isNull life_radar40) then {detach life_radar40; life_radar40 = ObjNull;}; player removeAction life_action_radar40Deploy; life_action_radar40Deploy = nil;},"",999,false,false,"",'!isNull life_radar40'];
life_radar40 = _radar40;
waitUntil {isNull life_radar40};
if(!isNil "life_action_radar40Deploy") then {player removeAction life_action_radar40Deploy;};
if(isNull _radar40) exitWith {life_radar40 = ObjNull;};
_radar40 setPos [(getPos _radar40 select 0),(getPos _radar40 select 1),0];
life_action_radar40Pickup = player addAction[localize "STR_ISTR_Radar_Pack",life_fnc_packupRadar40,"",0,false,false,"",
' _radar = nearestObjects[getPos player,["Land_Runway_PAPI"],8] select 0;!isNil "_radar" && !isNil {(_radar getVariable "item")}'];
[[_radar40],"TON_fnc_radar40",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.