#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000]
		];
	};
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["O_Truck_02_transport_F",300000],
			["B_Truck_01_ammo_F",350000],
			["B_Truck_01_covered_F",350000],
			["B_Truck_01_box_F",1500000],
			["C_Van_01_fuel_F",75000],
			["B_Truck_01_fuel_F",85000],
			["O_Truck_02_fuel_F",95000],
			["O_Truck_03_fuel_F",110000]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_Transport_02_F",8000000]
		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["C_Hatchback_01_sport_F",50000],
			["B_G_Offroad_01_armed_F",750000],
			["B_MRAP_01_F",500000],
			["I_MRAP_03_F",500000],
			["O_MRAP_02_F",500000],
			["O_MRAP_02_hmg_F",900000],
			["B_Heli_Light_01_F",325000],
			["B_Heli_Light_01_armed_F",2500000],
			["O_Heli_Light_02_unarmed_F",5000000],
			["I_Heli_Transport_02_F",8000000],
			["O_Truck_03_covered_F",2000000],
			["O_Truck_03_device_F",8000000],
			["O_Truck_03_transport_F",8000000]
		];
	};
	case "med_shop":
	{
		_return = [
			["B_Quadbike_01_F",1000],
			["C_Offroad_01_F",10000]
		];
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,
			["C_Hatchback_01_F",15000]
			];
		};
		if(__GETC__(life_mediclevel) >2) then
		{
			_return set[count _return,
			["C_SUV_01_F",20000]
			];
		};
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",25000]
			];
		};
		if(__GETC__(life_mediclevel) >4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]
			];
			_return set[count _return,
			["I_Truck_02_medical_F",35000]
			];
		};
	};
	case "med_air_hs": 
	{
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	case "bund_med_car":
	{
		switch(true) do
		{
			case (!license_med_bund): {"Du bist nicht in der Bundeswehr!"};
			default
			{
			if(__GETC__(life_mediclevel) >2) then
			{
				_return set[count _return,
				["B_MRAP_01_F",30000]
				];
			};
			if(__GETC__(life_mediclevel) > 3) then
			{
				_return set[count _return,
				["O_Truck_03_medical_F",45000]
				];
			};
			if(__GETC__(life_mediclevel) > 4) then
			{
				_return set[count _return,
				["B_Truck_01_medical_F",60000]
				];
			};
			};
		};
	};
	case "bund_med_air": 
	{
		switch(true) do
		{
			case (!license_med_bund): {"Du bist nicht in der Bundeswehr!"};
			default
			{
			_return = [
				["B_Heli_Light_01_F",50000],
				["O_Heli_Light_02_unarmed_F",75000]
			];
			};
		};
	};
	case "cop_car":
	{
		_return set[count _return,
		["B_Quadbike_01_F",1000]
		];		
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_Offroad_01_F",5000]
			];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_Hatchback_01_F",15000]
			];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["C_SUV_01_F",20000]
			];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",25000]
			];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["I_MRAP_03_F",30000]
			];
			_return set[count _return,
			["B_MRAP_01_F",30000]
			];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_MRAP_01_hmg_F",750000]
			];
			_return set[count _return,
			["I_MRAP_03_hmg_F",750000]
			];
		};
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
	case "cop_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]
		];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",200000]
			];
		};
	};
	case "cop_airhq":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]
		];		
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",200000]
			];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]
			];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["B_Heli_Attack_01_F",200000]
			];
		};
	};
	case "bund_car":
	{	
		switch(true) do
		{
			case (!license_cop_bund): {"Du bist nicht in der Bundeswehr!"};
			default
			{
			if(__GETC__(life_coplevel) > 4) then
			{
				_return set[count _return,
				["I_MRAP_03_F",20000]
				];
			};
			if(__GETC__(life_coplevel) > 5) then
			{
				_return set[count _return,
				["B_APC_Tracked_01_CRV_F",100000]
				];
				_return set[count _return,
				["B_MBT_01_arty_F",100000]
				];
				_return set[count _return,
				["I_MRAP_03_gmg_F",100000]
				];
			};
			if(__GETC__(life_coplevel) > 6) then
			{
				_return set[count _return,
				["B_MBT_01_mlrs_F",500000]
				];
				_return set[count _return,
				["I_MBT_03_cannon_F",500000]
				];
			};
			};
		};
	};
	case "bund_air":
	{	
		switch(true) do
		{
			case (!license_cop_bund): {"Du bist nicht in der Bundeswehr!"};
			default
			{
			if(__GETC__(life_coplevel) > 4) then
			{
				_return set[count _return,
				["B_Heli_Transport_01_camo_F",20000]
				];
			};
			if(__GETC__(life_coplevel) > 5) then
			{
				_return set[count _return,
				["I_UAV_02_CAS_F",100000]
				];
				_return set[count _return,
				["B_UAV_01_F",100000]
				];
			};
			if(__GETC__(life_coplevel) > 6) then
			{
				_return set[count _return,
				["O_Heli_Attack_02_F",500000]
				];
				_return set[count _return,
				["I_Plane_Fighter_03_CAS_F",500000]
				];
			};
			};
		};
	};
};
_return;
