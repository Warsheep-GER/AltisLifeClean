/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "B_Quadbike_01_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","civ"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","cop"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","med"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","reb"],
			["\a3\soft_f_bootcamp\Quadbike_01\Data\quadbike_01_ig_co.paa","reb"],
			["\a3\soft_f_bootcamp\Quadbike_01\Data\quadbike_01_indp_hunter_co.paa","reb"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
			
		];
	};
	
	case "C_Offroad_01_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			[_med + "offroad_notarzt.paa","med"],
			[_cop + "police_offroad.paa","cop"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_repair_civ_co.paa","civ"],
			["\A3\soft_f_gamma\Offroad_01\Data\offroad_01_ext_ig01_co.paa","reb"]
		];
	};
	case "B_G_Offroad_01_armed_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_01_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_02_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_03_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_04_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_05_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_06_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_07_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_08_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_09_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_10_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_11_co.paa","reb"],
			["\A3\soft_f_bootcamp\Offroad_01\Data\offroad_01_ext_ig_12_co.paa","reb"],
			["\A3\soft_f_gamma\Offroad_01\Data\offroad_01_ext_ig01_co.paa","reb"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_co.paa","civ"],
			[_cop + "hatchback_Polizei.paa","cop"],
			[_med + "hatchback_Notarzt.paa","med"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","reb"],
			[_path + "hatchback_01_ext_sport02_co.paa","reb"],
			[_path + "hatchback_01_ext_sport03_co.paa","reb"],
			[_path + "hatchback_01_ext_sport04_co.paa","reb"],
			[_path + "hatchback_01_ext_sport05_co.paa","reb"],
			[_path + "hatchback_01_ext_sport06_co.paa","reb"],
			[_path + "hatchback_01_ext_co.paa","reb"],
			[_cop + "hatchback_Polizei.paa","cop"],
			[_med + "hatchback_Notarzt.paa","med"]
		];
	};
		
	case "C_SUV_01_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			[_cop + "suv_cop.paa","cop"],
			[_med + "suv_medik.paa","med"],
			[_civ + "suv_tuned.paa","civ"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\soft_f\MRAP_01\Data\mrap_01_base_co.paa","reb"],
			[_cop + "cop_hunter_base.paa","cop",_cop + "cop_hunter_adds.paa"],
			[_med + "med_hunter_base.paa","med",_med + "med_hunter_adds.paa"]
		];
	};
	
	case "B_MRAP_01_hmg_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\soft_f\MRAP_01\Data\mrap_01_base_co.paa","reb"],
			[_cop + "cop_hunter_base.paa","cop",_cop + "cop_hunter_adds.paa"]
		];
	};
	
	case "O_MRAP_02_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","reb"],
			[_civ + "civ_ifrid_01.paa","reb",_civ + "civ_ifrid_02.paa"]
		];
	};
	case "O_MRAP_02_hmg_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\soft_f\MRAP_02\Data\mrap_02_ext_01_co.paa","reb"]
		];
	};
	
	case "I_MRAP_03_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\soft_f_beta\MRAP_03\Data\mrap_03_ext_co.paa","cop"],
			["\A3\soft_f_beta\MRAP_03\Data\mrap_03_ext_indp_co.paa","reb"]
		];
	};
	case "I_MRAP_03_hmg_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\soft_f_beta\MRAP_03\Data\mrap_03_ext_co.paa","cop"],
			["\A3\soft_f_beta\MRAP_03\Data\mrap_03_ext_indp_co.paa","reb"]
		];
	};
	case "I_MRAP_03_gmg_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\soft_f_beta\MRAP_03\Data\mrap_03_ext_co.paa","cop"],
			["\A3\soft_f_beta\MRAP_03\Data\mrap_03_ext_indp_co.paa","reb"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_ig_co.paa","reb"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_ig_co.paa","reb"]
		];
	};
	
	case "C_Van_01_fuel_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_ig_co.paa","reb"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","reb","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_indp_co.paa"],
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","reb","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_opfor_co.paa"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_path = "\A3\Soft_F_Beta\Truck_02\data\";
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			[_path + "truck_02_kab_co.paa","civ",_path + "truck_02_kuz_co.paa"],
			[_path + "truck_02_kab_co.paa","reb",_path + "truck_02_kuz_indp_co.paa"],
			[_path + "truck_02_kab_co.paa","reb",_path + "truck_02_kuz_opfor_co.paa"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_path = "\a3\air_f\Heli_Light_01\Data\";
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_ret = 
		[
			[_path + "Skins\heli_light_01_ext_sheriff_co.paa","reb"],
			[_path + "heli_light_01_ext_ion_co.paa","civ"],
			[_path + "heli_light_01_ext_blue_co.paa","civ"],
			[_path + "heli_light_01_ext_co.paa","civ"],
			[_path + "heli_light_01_ext_indp_co.paa","reb"],
			[_path + "Skins\heli_light_01_ext_blueline_co.paa","civ"],
			[_path + "Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			[_path + "Skins\heli_light_01_ext_furious_co.paa","civ"],
			[_path + "Skins\heli_light_01_ext_jeans_co.paa","civ"],
			[_path + "Skins\heli_light_01_ext_speedy_co.paa","civ"],
			[_path + "Skins\heli_light_01_ext_sunset_co.paa","civ"],
			[_path + "Skins\heli_light_01_ext_vrana_co.paa","civ"],
			[_path + "Skins\heli_light_01_ext_wave_co.paa","civ"],
			[_path + "Skins\heli_light_01_ext_digital_co.paa","reb"],
			[_cop + "Polizei_Hummingbird.paa","cop"],
			[_med + "Notarzt_Hummingbird.paa","med"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_path = "\a3\air_f\Heli_Light_02\Data\";
		_ret = 
		[
			[_path + "heli_light_02_ext_co.paa","reb"],
			[_path + "heli_light_02_ext_civilian_co.paa","civ"],
			[_path + "heli_light_02_ext_indp_co.paa","reb"],
			[_path + "heli_light_02_ext_opfor_co.paa","reb"],
			[_med + "orca_notarzt.paa","med"],
			[_cop + "orca_polizei.paa","cop"]
		];
	};
	
	
	
	case "I_Heli_Transport_02_F":
	{
		_cop = "vehskins\cop\";
		_med = "vehskins\med\";
		_civ = "vehskins\civ\";
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\";
		_ret =
		[
			[_path + "Skins\heli_transport_02_1_ion_co.paa","civ",_path + "Skins\heli_transport_02_2_ion_co.paa",_path + "Skins\heli_transport_02_3_ion_co.paa"],
			[_path + "Skins\heli_transport_02_1_dahoman_co.paa","civ",_path + "Skins\heli_transport_02_2_dahoman_co.paa",_path + "Skins\heli_transport_02_3_dahoman_co.paa"],
			[_path + "heli_transport_02_1_indp_co","reb",_path + "heli_transport_02_2_indp_co",_path + "heli_transport_02_3_indp_co"]
		];
	};
};

_ret;