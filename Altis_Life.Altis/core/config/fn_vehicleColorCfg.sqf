/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
	Dont used our Coustume vehicle skins without perm
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "B_Quadbike_01_F":
	{
		_path = "\A3\Soft_F\Quadbike_01\Data\";
		_path2 = "\A3\Soft_F_beta\Quadbike_01\Data\";
		_path3 = "\a3\soft_f_bootcamp\Quadbike_01\Data\";
		_path4 = "\a3\soft_f_gamma\Quadbike_01\data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "Quadbike_01_co.paa","civ"],
			[_path + "quadbike_01_opfor_co.paa","reb"],
			[_path2 + "quadbike_01_civ_black_co.paa","cop"],
			[_path2 + "quadbike_01_civ_blue_co.paa","civ"],
			[_path2 + "quadbike_01_civ_red_co.paa","med"],
			[_path2 + "quadbike_01_civ_white_co.paa","civ"],
			[_path2 + "quadbike_01_indp_co.paa","reb"],
			[_path3 + "quadbike_01_ig_co.paa","reb"],
			[_path3 + "quadbike_01_indp_hunter_co.paa","reb"],
			[_path4 + "quadbike_01_indp_hunter_co.paa","reb"]
			
		];
	};
	
	case "C_Offroad_01_F":
	{
		_path = "\A3\soft_F\Offroad_01\Data\";
		_path2 = "\A3\soft_f_bootcamp\Offroad_01\Data\";
		_path3 = "\A3\soft_f_gamma\Offroad_01\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "offroad_01_ext_co.paa", "civ"], 
			[_path + "offroad_01_ext_BASE01_CO.paa", "civ"],
			[_path + "offroad_01_ext_BASE02_CO.paa", "civ"],
			[_path + "offroad_01_ext_BASE03_CO.paa","civ"],
			[_path + "offroad_01_ext_BASE04_CO.paa","civ"],
			[_path + "offroad_01_ext_BASE05_CO.paa","civ"],
			[_path2 + "offroad_01_ext_repair_civ_co.paa","civ"],
			[_path3 + "offroad_01_ext_ig01_co.paa","reb"],
			[_med + "offroad.paa","med"],
			[_cop + "offroad.paa","cop"]
		];
	};
	case "B_G_Offroad_01_armed_F":
	{
		_path = "\A3\soft_f_bootcamp\Offroad_01\Data\";
		_path2 = "\A3\soft_f_gamma\Offroad_01\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "offroad_01_ext_ig_05_co.paa","reb"],
			[_path + "offroad_01_ext_ig_06_co.paa","reb"],
			[_path + "offroad_01_ext_ig_12_co.paa","reb"],
			[_path2 + "offroad_01_ext_ig01_co.paa","reb"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret =
		[
			[_path + "hatchback_01_ext_base01_co.paa","civ"],
			[_path + "hatchback_01_ext_base02_co.paa","civ"],
			[_path + "hatchback_01_ext_base03_co.paa","civ"],
			[_path + "hatchback_01_ext_base04_co.paa","civ"],
			[_path + "hatchback_01_ext_base06_co.paa","civ"],
			[_path + "hatchback_01_ext_base07_co.paa","civ"],
			[_path + "hatchback_01_ext_base08_co.paa","civ"],
			[_path + "hatchback_01_ext_base09_co.paa","civ"],
			[_path + "hatchback_01_ext_co.paa","civ"],
			[_cop + "hatchback.paa","cop"],
			[_med + "hatchback.paa","med"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","reb"],
			[_path + "hatchback_01_ext_sport02_co.paa","reb"],
			[_path + "hatchback_01_ext_sport03_co.paa","reb"],
			[_path + "hatchback_01_ext_sport04_co.paa","reb"],
			[_path + "hatchback_01_ext_sport05_co.paa","reb"],
			[_path + "hatchback_01_ext_sport06_co.paa","reb"],
			[_path + "hatchback_01_ext_co.paa","reb"],
			[_cop + "hatchback.paa","cop"],
			[_med + "hatchback.paa","med"]
		];
	};
		
	case "C_SUV_01_F":
	{
		_path = "\a3\soft_f_gamma\SUV_01\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret =
		[
			[_path + "suv_01_ext_co.paa","civ"],
			[_path + "suv_01_ext_02_co.paa","civ"],
			[_path + "suv_01_ext_03_co.paa","civ"],
			[_path + "suv_01_ext_04_co.paa","civ"],
			[_cop + "suv.paa","cop"],
			[_med + "suv.paa","med"],
			[_civ + "suv_tuned.paa","civ"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_path = "\A3\soft_f\MRAP_01\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "mrap_01_base_co.paa","reb"],
			[_cop + "hunter_1.paa","cop",_cop + "hunter_2.paa"],
			[_med + "hunter_1.paa","med",_med + "hunter_2.paa"]
		];
	};
	
	case "B_MRAP_01_hmg_F":
	{
		_path = "\A3\soft_f\MRAP_01\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "mrap_01_base_co.paa","reb"],
			[_cop + "hunter_1.paa","cop",_cop + "hunter_2.paa"]
		];
	};
	
	case "O_MRAP_02_F":
	{
		_path = "\A3\soft_f\MRAP_02\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "mrap_02_ext_01_co.paa","reb"],
			[_civ + "ifrid_navy_01.paa","reb",_civ + "ifrid_navy_02.paa"]
		];
	};
	case "O_MRAP_02_hmg_F":
	{
		_path = "\A3\soft_f\MRAP_02\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "mrap_02_ext_01_co.paa","reb"],
			[_civ + "civ_ifrid_01.paa","reb",_civ + "civ_ifrid_02.paa"]
		];
	};
	
	case "I_MRAP_03_F":
	{
		_path = "\A3\soft_f_beta\MRAP_03\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "mrap_03_ext_co.paa","cop"],
			[_path + "mrap_03_ext_indp_co.paa","reb"]
		];
	};
	case "I_MRAP_03_hmg_F":
	{
		_path = "\A3\soft_f_beta\MRAP_03\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "mrap_03_ext_co.paa","cop"],
			[_path + "mrap_03_ext_indp_co.paa","reb"]
		];
	};
	case "I_MRAP_03_gmg_F":
	{
		_path = "\A3\soft_f_beta\MRAP_03\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "mrap_03_ext_co.paa","cop"],
			[_path + "mrap_03_ext_indp_co.paa","reb"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_path = "\a3\soft_f_gamma\Van_01\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "van_01_ext_co.paa","civ"],
			[_path + "van_01_ext_red_co.paa","civ"],
			[_path + "van_01_ext_ig_co.paa","reb"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_path = "\a3\soft_f_gamma\Van_01\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "van_01_ext_co.paa","civ"],
			[_path + "van_01_ext_red_co.paa","civ"],
			[_path + "van_01_ext_ig_co.paa","reb"]
		];
	};
	
	case "C_Van_01_fuel_F":
	{
		_path = "\a3\soft_f_gamma\Van_01\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "van_01_ext_co.paa","civ"],
			[_path + "van_01_ext_red_co.paa","civ"],
			[_path + "van_01_ext_ig_co.paa","reb"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_path = "\A3\Soft_F_Beta\Truck_02\data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "truck_02_kab_co.paa","civ",_path + "truck_02_kuz_co.paa"],
			[_path + "truck_02_kab_co.paa","reb",_path + "truck_02_kuz_indp_co.paa"],
			[_path + "truck_02_kab_co.paa","reb",_path + "truck_02_kuz_opfor_co.paa"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_path = "\A3\Soft_F_Beta\Truck_02\data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
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
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "Skins\heli_light_01_ext_sheriff_co.paa","reb"],
			[_path + "heli_light_01_ext_ion_co.paa","reb"],
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
			[_cop + "hummingbird.paa","cop"],
			[_med + "hummingbird.paa","med"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_path = "\a3\air_f\Heli_Light_02\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret = 
		[
			[_path + "heli_light_02_ext_co.paa","reb"],
			[_path + "heli_light_02_ext_civilian_co.paa","civ"],
			[_path + "heli_light_02_ext_indp_co.paa","reb"],
			[_path + "heli_light_02_ext_opfor_co.paa","reb"],
			[_med + "orca.paa","med"],
			[_cop + "orca.paa","cop"]
		];
	};
	
	
	
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\";
		_cop = "vehskins\cop\cop_";
		_med = "vehskins\med\med_";
		_civ = "vehskins\civ\civ_";
		_ret =
		[
			[_path + "Skins\heli_transport_02_1_ion_co.paa","civ",_path + "Skins\heli_transport_02_2_ion_co.paa",_path + "Skins\heli_transport_02_3_ion_co.paa"],
			[_path + "Skins\heli_transport_02_1_dahoman_co.paa","civ",_path + "Skins\heli_transport_02_2_dahoman_co.paa",_path + "Skins\heli_transport_02_3_dahoman_co.paa"],
			[_path + "heli_transport_02_1_indp_co","reb",_path + "heli_transport_02_2_indp_co",_path + "heli_transport_02_3_indp_co"],
			[_civ + "mohawk_rot_1.paa","civ",_civ + "mohawk_rot_2.paa",_path + "Skins\heli_transport_02_3_dahoman_co.paa"]
		];
	};
};

_ret;