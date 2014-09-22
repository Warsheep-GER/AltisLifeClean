/*
	File: fn_radar.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates a radar and preps it.
*/
private["_position","_radar"];
_radar = "Land_runway_edgelight_blue_F" createVehicle [0,0,0];
_radar attachTo[player,[0,5.5,0]];
_radar setDir 90;
_radar setVariable["item","radarDeployed",true];

life_action_radarDeploy = player addAction[localize "STR_ISTR_Radar_Place",{if(!isNull life_radar) then {detach life_radar; life_radar = ObjNull;}; player removeAction life_action_radarDeploy; life_action_radarDeploy = nil;},"",999,false,false,"",'!isNull life_radar'];
life_radar = _radar;
waitUntil {isNull life_radar};
if(!isNil "life_action_radarDeploy") then {player removeAction life_action_radarDeploy;};
if(isNull _radar) exitWith {life_radar = ObjNull;};
_radar setPos [(getPos _radar select 0),(getPos _radar select 1),0];
_radar setDamage 1;
life_action_radarPickup = player addAction[localize "STR_ISTR_Radar_Pack",life_fnc_packupradar,"",0,false,false,"",
' _radar = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0; !isNil "_radar" && !isNil {(_radar getVariable "item")}'];
[[_radar],"TON_fnc_radar",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.