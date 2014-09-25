/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
	Dont used our Coustume vehicle skins without perm
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Rebel Desert"};
			case 2: {_color = "Schwarz"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Rot"};
			case 5: {_color = "Weiss"};
			case 6: {_color = "Rebel Green"};
			case 7: {_color = "Rebel1"};
			case 8: {_color = "Rebel2"};
			case 9: {_color = "Rebel1 Camo"};
			case 10: {_color = "Polizei"};
			case 11: {_color = "Notarzt"};
		};
	};
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Gelb";};
			case 2: {_color = "Weiss";};
			case 3: {_color = "Blau";};
			case 4: {_color = "Dunkelrot";};
			case 5: {_color = "Blau/Weiss"};
			case 6: {_color = "ADAC"};
			case 7: {_color = "Rebel"};
			case 8: {_color = "Notarzt"};
			case 9: {_color = "Polizei"};
			case 10: {_color = "Titten"};
		};
	};
	case "B_G_Offroad_01_armed_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rebel1"};
			case 1: {_color = "Rebel2"};
			case 2: {_color = "Rebel3"};
			case 3: {_color = "Rebel4"};
			case 4: {_color = "Titten"};
		};
	};
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "Silber"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
			case 8: {_color = "Weiss"};
			case 9: {_color = "Polizei"};
			case 10: {_color = "Notarzt"};
		};
	};
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Weiss"};
			case 7: {_color = "Polizei"};
			case 8: {_color = "Notarzt"};
		};
	};
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Black";};
			case 2: {_color = "Silver";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Polizei";};
			case 5: {_color = "Notarzt";};
			case 6: {_color = "Weiss tuning";};
		};
	};
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Polizei"};
			case 2: {_color = "Notarzt"};
		};
	};
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Polizei"};
		};
	};
	
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
			case 1: {_color = "Navi Camo"};
		};
	};
	case "O_MRAP_02_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
			case 1: {_color = "Navi Camo"};
		};
	};
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Camo"};
			case 2: {_color = "Polizei"};
		};
	};
	case "I_MRAP_03_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Camo"};
			case 2: {_color = "Polizei"};
		};
	};
	case "I_MRAP_03_gmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Camo"};
			case 2: {_color = "Polizei"};
		};
	};
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "Camo"};
		};
	};
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "Camo"};
		};
	};
	case "I_G_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "Camo"};
		};
	};
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
			case 2: {_color = "Camo"};
		};
	};
	case "B_Truck_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
		};
	};
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
		};
	};
	case "B_Truck_01_ammo_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
		};
	};
	case "B_Truck_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
		};
	};
	case "B_Truck_01_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
		};
	};
	case "O_Truck_02_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Camo"};
			case 2: {_color = "Camo2"};
		};
	};
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Camo"};
			case 2: {_color = "Camo2"};
		};
	};
	case "O_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Camo"};
			case 2: {_color = "Camo2"};
		};
	};
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Camo"};
			case 2: {_color = "Camo2"};
		};
	};
	case "O_Truck_03_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
		};
	};
	case "O_Truck_03_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
		};
	};
	case "O_Truck_03_device_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
		};
	};
	case "O_Truck_03_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
		};
	};
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "camo"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Polizei"};
			case 15: {_color = "Notarzt"};
		};
	};
	case "B_Heli_Light_01_armed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "camo"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Polizei"};
			case 15: {_color = "Notarzt"};
		};
	};
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "Notarzt"};
			case 5: {_color = "Polizei"};
			case 6: {_color = "Strahlenschutz"};
		};
	};
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Camo"};
			case 3: {_color = "Rot"};
		};
	};
	case "B_Heli_Attack_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Bundeswehr"};
		};
	};
};
_color;