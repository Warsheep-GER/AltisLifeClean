/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "B_Quadbike_01_F": {30};
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {50};
	case "C_Hatchback_01_F": {40};
	case "C_SUV_01_F": {50};
	case "C_Hatchback_01_sport_F": {35};
	case "B_MRAP_01_F": {65};
	case "B_MRAP_01_hmg_F": {60};
	case "O_MRAP_02_F": {65};
	case "O_MRAP_02_hmg_F": {60};
	case "I_MRAP_03_F": {65};
	case "I_MRAP_03_hmg_F": {60};
	case "I_MRAP_03_gmg_F": {60};
	case "C_Rubberboat": {45};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_rescue_F": {100};
	case "B_Boat_Transport_01_F": {110};
	case "C_Boat_Civil_01_police_F": {90};
	case "B_Boat_Armed_01_minigun_F": {100};
	case "B_SDV_01_F": {130};
	case "C_Van_01_fuel_F": {100};
	case "C_Van_01_transport_F": {120};
	case "I_G_Van_01_transport_F": {130};
	case "C_Van_01_box_F": {150};
	case "O_Truck_02_fuel_F": {150};
	case "I_Truck_02_transport_F": {175};
	case "I_Truck_02_covered_F": {200};
	case "B_Truck_01_fuel_F": {175};
	case "B_Truck_01_transport_F": {200};
	case "B_Truck_01_ammo_F": {225};
	case "B_Truck_01_box_F": {250};
	case "B_Truck_01_covered_F": {275};
	case "O_Truck_03_fuel_F": {325};
	case "O_Truck_03_transport_F": {350};
	case "O_Truck_03_covered_F": {375};
	case "O_Truck_03_device_F": {325};
	case "B_Heli_Light_01_F": {90};
	case "B_Heli_Light_01_armed_F": {80};
	case "O_Heli_Light_02_unarmed_F": {210};
	case "I_Heli_Transport_02_F": {450};
	case "B_Heli_Attack_01_F": {200};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "Land_CargoBox_V1_F": {5000};
	default {-1};
};