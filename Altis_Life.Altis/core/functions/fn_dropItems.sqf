/*
	File: fn_dropItems.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called on death, player drops any 'virtual' items they may be carrying.
*/
private["_obj","_unit","_item","_value"];
_unit = _this select 0;

{
	_item = _x;
	_value = missionNamespace getVariable _item;
	
	switch(_item) do
	{
		case "life_inv_oilu":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_CanisterOil_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_oilp":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_CanisterPlastic_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_heroinu":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_PowderedMilk_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_heroinp":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_RiceBox_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_cannabis":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Basket_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_marijuana":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Sack_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_water":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_BottlePlastic_V1_F" createVehicle _pos;
				//_obj setVariable["water",_value,true];
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_tbacon":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_TacticalBacon_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_redgull":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Can_V3_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_fuelE":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_CanisterFuel_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_fuelF":
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_CanisterFuel_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_coffee":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Can_V3_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_pickaxe":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Axe_fire_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_lockpick":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_File_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_boltcutter":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Grinder_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_defusekit":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Pliers_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_coke":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Pillow_grey_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_cokep":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Pillow_camouflage_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_rock":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_FirePlace_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_cement":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Pillow_old_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_goldbar":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Matches_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_inv_spikeStrip":
		{
			if (_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_MetalWire_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
		case "life_cash":
		{
			if(life_cash > 0) then
			{
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Money_F" createVehicle _pos;
				_obj setVariable["item",["money",_value],true];
				_obj setPos _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				missionNamespace setVariable[_x,0];
			};
		};
		default
		{
			if(_value > 0) then
			{
				_var = [_item,1] call life_fnc_varHandle;
				_pos = _unit modelToWorld[0,3,0];
				_pos = [_pos select 0, _pos select 1, 0];
				_obj = "Land_Suitcase_F" createVehicle _pos;
				[[_obj],"life_fnc_simDisable",nil,true] spawn life_fnc_MP;
				_obj setPos _pos;
				_obj setVariable["item",[_var,_value],true];
				missionNamespace setVariable[_x,0];
			};
		};
	};
} foreach (life_inv_items + ["life_cash"]);