/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		if(license_cop_bund) then
		{
		_return = _return + [
			["bund_spawn_1","Bundeswehr HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"]
			];
		};
		_return = _return + [
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_4","Flughafen","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","Autobahn","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];	
	};
	
	case civilian:
	{
		if(license_civ_rebel) then
		{	
			_return = [
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
			if(license_civ_reb1) then
			{
			_return = _return + [
				["reb_spawn_1","Rebellen NW","icons\rebel.paa"]
				];
			};
			if(license_civ_reb2) then
			{
			_return = _return + [
				["reb_spawn_2","Rebellen SW","icons\rebel.paa"]
				];
			};
			if(license_civ_reb3) then
			{
			_return = _return + [
				["reb_spawn_3","Rebellen SE","icons\rebel.paa"]
				];
			};
			if(license_civ_reb4) then
			{
			_return = _return + [
				["reb_spawn_4","Rebellen NE","icons\rebel.paa"]
				];
			};	
		}
		else
		{
			_return = [
				["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];		
			if(license_civ_kavala) then
			{
				_return = _return + [
					["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
			};
			if(license_civ_pyros) then
			{
				_return = _return + [
					["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
			};
			if(license_civ_sofia) then
			{
				_return = _return + [
					["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
			};
		};	
	};
	
	case independent: {
		_return = [
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];	
		_return = _return + [
			["medic_spawn_2","Athira Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_1","Kavala Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_4","Sofia Krankenhaus","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

if( playerSide == civilian) then {//need to enable west and independent (querry request for house)
	if(count life_houses > 0) then 
	{
		{
			_pos = call compile format["%1",_x select 0];
			_house = nearestBuilding _pos;
			_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");	
			_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
		} foreach life_houses;
	};
};
_return;