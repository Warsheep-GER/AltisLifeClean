#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	
	case "genstore":
	{
		["Tante Emma Laden",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Waffenladen",
					[
						["hgun_Pistol_heavy_01_F",45_acp,3000],
						["11Rnd_45ACP_Mag",nil,3000],
						["hgun_PDW2000_F",nil,3000],
						["hgun_PDW2000_snds_F","+Schalldämpfer",80000],
						["hgun_PDW2000_Holo_F","+Holo",80000],
						["hgun_PDW2000_Holo_snds_F","+Holo +Schalldämpfer",80000],
						["30Rnd_9x21_Mag",nil,500],
						["hgun_Pistol_heavy_02_F",nil,10000],
						["hgun_Pistol_heavy_02_Yorris_F","+Yorris",60000],
						["6Rnd_45ACP_Cylinder",nil,500],
						["SMG_02_F",nil,35000],
						["SMG_02_ACO_F","+ACO",80000],
						["SMG_02_ARCO_pointg_F","+ARCO +Pointer",95000],
						["30Rnd_9x21_Mag",nil,500],
						["SMG_01_F",nil,10000],
						["SMG_01_ACO_F","+ACO",50000],
						["SMG_01_Holo_F","+Holo",50000],
						["SMG_01_Holo_pointer_snds_F","+Holo +Pointer +Schalldämpfer",50000],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,500]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Rebellen Ausrüstung",
					[
						["Rangefinder",nil,3000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["arifle_SDAR_F",nil,85000],
						["20Rnd_556x45_UW_mag","UW 20Rnd",500],
						["30Rnd_556x45_Stanag",nil,500],
						["srifle_EBR_F",nil,100000],
						["srifle_EBR_ACO_F","+ACO",150000],
						["srifle_EBR_ARCO_pointer_F","+ARCO +Pointer",150000],
						["srifle_EBR_MRCO_pointer_F","+MRCO +Pointer",150000],
						["20Rnd_762x51_Mag",nil,500],
						["arifle_Katiba_C_F",nil,200000],
						["arifle_Katiba_ARCO_F","+ARCO",250000],
						["arifle_Katiba_ACO_pointer_F","+ACO +Pointer",250000],
						["30Rnd_65x39_caseless_green",nil,500],
						["arifle_TRG20_F",nil,150000],
						["arifle_TRG21_MRCO_F","+MRCO",200000],
						["arifle_TRG20_ACO_F","+ACO",200000],
						["arifle_TRG21_ACO_pointer_F","+ACO +Pointer",200000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
						["LMG_Mk200_F",nil,300000],
						["LMG_Mk200_MRCO_F","+MRCO",300000],
						["LMG_Mk200_pointer_F","+Pointer",300000],
						["200Rnd_65x39_cased_Box",nil,500],
						["srifle_LRR_F",nil,400000],
						["srifle_LRR_SOS_F","+SOS",500000],
						["srifle_LRR_LRPS_F","+LRPS",550000],
						["7Rnd_408_Mag",nil,500],
						["launch_RPG32_F",nil,500000],
						["RPG32_F",nil,3000],
						["RPG32_HE_F",nil,3000]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Gang Ausrüstung",
					[
						["Rangefinder",nil,3000],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["arifle_SDAR_F",nil,85000],
						["20Rnd_556x45_UW_mag","UW 20Rnd",500],
						["30Rnd_556x45_Stanag",nil,500],
						["srifle_EBR_F",nil,100000],
						["srifle_EBR_ACO_F","+ACO",150000],
						["srifle_EBR_ARCO_pointer_F","+ARCO +Pointer",150000],
						["srifle_EBR_MRCO_pointer_F","+MRCO +Pointer",150000],
						["20Rnd_762x51_Mag",nil,500],
						["arifle_Katiba_C_F",nil,200000],
						["arifle_Katiba_ARCO_F","+ARCO",250000],
						["arifle_Katiba_ACO_pointer_F","+ACO +Pointer",250000],
						["30Rnd_65x39_caseless_green",nil,500],
						["arifle_TRG20_F",nil,150000],
						["arifle_TRG21_MRCO_F","+MRCO",200000],
						["arifle_TRG20_ACO_F","+ACO",200000],
						["arifle_TRG21_ACO_pointer_F","+ACO +Pointer",200000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
						["LMG_Mk200_F",nil,300000],
						["LMG_Mk200_MRCO_F","+MRCO",300000],
						["LMG_Mk200_pointer_F","+Pointer",300000],
						["200Rnd_65x39_cased_Box",nil,500],
						["srifle_LRR_F",nil,400000],
						["srifle_LRR_SOS_F","+SOS",500000],
						["srifle_LRR_LRPS_F","+LRPS",550000],
						["7Rnd_408_Mag",nil,500],
						["launch_RPG32_F",nil,500000],
						["RPG32_F",nil,3000],
						["RPG32_HE_F",nil,3000]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Notarzt Ausrüstung",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500]
					]
				];
			};
		};
	};
	
	case "med_bund":
	{
		switch(true) do
		{
			case (playerSide != independent): {"Du bist kein sanitäter!"};
			case (__GETC__(life_mediclevel) < 3): {"Du hast nicht den benötigten rank!"};
			case (!license_med_bund): {"Du bist nicht in der Bundeswehr!"};
			default
			{
				["Sanitäter Ausrüstung",
					[
						["hgun_P07_snds_F","(9mm)Taser Pistol",500],
						["16Rnd_9x21_Mag","(9mm)Taser Magazine",50],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500],
						["HandGrenade_Stone","Flashbang",1000]
					]
				];
			};
		};
	};
	
	case "cop_lvl_1":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			default
			{
				["Anwerter Ausrüstung",
					[
						["hgun_P07_snds_F","(9mm)Taser Pistol",2000],
						["16Rnd_9x21_Mag","(9mm)Taser Magazine",500],
						["arifle_sdar_F","(5,56mm)Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","(5,56mm)Taser Magazine",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500],
						["HandGrenade_Stone","Flashbang",10000]
					]
				];
			};
		};
	};
	
	case "cop_lvl_2":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 2): {"Du hast nicht den benötigten rank!"};
			default
			{
				["Beamter Ausrüstung",
					[
						["hgun_P07_snds_F","(9mm)Taser Pistol",2000],
						["16Rnd_9x21_Mag","(9mm)Taser Magazine",500],
						["arifle_sdar_F","(5,56mm)Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","(5,56mm)Taser Magazine",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500],
						["hgun_Pistol_heavy_01_F",nil,20000],
						["hgun_Pistol_heavy_01_MRD_F","+MRD",40000],
						["hgun_Pistol_heavy_01_snds_F","+Schalldämpfer",40000],
						["11Rnd_45ACP_Mag",nil,500],
						["HandGrenade_Stone","Flashbang",10000]
					]
				];
			};
		};
	};

	case "cop_lvl_3":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 3): {"Du hast nicht den benötigten rank!"};
			default
			{
				["Hauptmeister Ausrüstung",
					[
						["hgun_P07_snds_F","(9mm)Taser Pistol",2000],
						["16Rnd_9x21_Mag","(9mm)Taser Magazine",500],
						["arifle_sdar_F","(5,56mm)Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","(5,56mm)Taser Magazine",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,3000],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500],
						["arifle_Katiba_F",nil,25000],
						["arifle_Katiba_ARCO_F","+AROC",25000],
						["arifle_Katiba_ACO_pointer_F","+AROC +Pointer",25000],
						["30Rnd_65x39_caseless_green",nil,500],
						["srifle_EBR_F",nil,50000],
						["srifle_EBR_ACO_F","+AROC",100000],
						["srifle_EBR_ARCO_pointer_F","+AROC +Pointer",100000],
						["srifle_EBR_MRCO_pointer_F","+MROC +Pointer",100000],
						["20Rnd_762x51_Mag",nil,500],
						["HandGrenade_Stone","Flashbang",10000]
					]
				];
			};
		};
	};
	
	case "cop_lvl_4":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 4): {"Du hast nicht den benötigten rank!"};
			default
			{
				["Kommissiar Ausrüstung",
					[
						["hgun_P07_snds_F","(9mm)Taser Pistol",2000],
						["16Rnd_9x21_Mag","(9mm)Taser Magazine",500],
						["arifle_sdar_F","(5,56mm)Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","(5,56mm)Taser Magazine",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,3000],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500],
						["arifle_MXC_F",nil,300000],
						["arifle_MXC_Holo_F","+Holo",350000],
						["arifle_MXC_Holo_pointer_F","+Holo +Pointer",350000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_MX_GL_F",nil,400000],
						["3Rnd_SmokeYellow_Grenade_shell",nil,500],
						["3Rnd_SmokeRed_Grenade_shell",nil,500],
						["3Rnd_SmokeBlue_Grenade_shell",nil,500],
						["UGL_FlareWhite_F",nil,500],
						["1Rnd_Smoke_Grenade_shell",nil,500],
						["HandGrenade_Stone","Flashbang",10000]
					]
				];
			};
		};
	};
	
	case "cop_lvl_5":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 5): {"Du hast nicht den benötigten rank!"};
			default
			{
				["Oberkommissiar Ausrüstung",
					[
						["hgun_P07_snds_F","(9mm)Taser Pistol",2000],
						["16Rnd_9x21_Mag","(9mm)Taser Magazine",500],
						["arifle_sdar_F","(5,56mm)Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","(5,56mm)Taser Magazine",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,3000],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500],
						["arifle_MXM_F",nil,400000],
						["arifle_MXM_Hamr_pointer_F","+Hamr +Pointer",450000],
						["30Rnd_65x39_caseless_mag",nil,500],
						["HandGrenade_Stone","Flashbang",10000]
					]
				];
			};
		};
	};
	
	case "cop_lvl_6":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 6): {"Du hast nicht den benötigten rank!"};
			default
			{
				["Hauptkommissiar Ausrüstung",
					[
						["hgun_P07_snds_F","(9mm)Taser Pistol",2000],
						["16Rnd_9x21_Mag","(9mm)Taser Magazine",500],
						["arifle_sdar_F","(5,56mm)Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","(5,56mm)Taser Magazine",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,3000],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500],
						["srifle_GM6_F",nil,400000],
						["srifle_GM6_SOS_F","+SOS",450000],
						["srifle_GM6_LRPS_F","+LRPS",450000],
						["5Rnd_127x108_Mag",nil,500],
						["HandGrenade_Stone","Flashbang",10000]
					]
				];
			};
		};
	};
	
	case "cop_lvl_7":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (__GETC__(life_coplevel) < 7): {"Du hast nicht den benötigten rank!"};
			default
			{
				["PolizeiDirektor Ausrüstung",
					[
						["hgun_P07_snds_F","(9mm)Taser Pistol",2000],
						["16Rnd_9x21_Mag","(9mm)Taser Magazine",500],
						["arifle_sdar_F","(5,56mm)Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","(5,56mm)Taser Magazine",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,3000],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500],
						["arifle_MX_SW_F",nil,500000],
						["arifle_MX_SW_pointer_F","+Pointer",550000],
						["arifle_MX_SW_Hamr_pointer_F","+Hamr +Pointer",550000],
						["100Rnd_65x39_caseless_mag",nil,500],
						["LMG_Zafir_F",nil,600000],
						["LMG_Zafir_pointer_F","+Pointer",650000],
						["150Rnd_762x51_Box",nil,500],
						["HandGrenade_Stone","Flashbang",10000]
					]
				];
			};
		};
	};
	
	case "bund":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Cop!"};
			case (!license_cop_bund): {"You don't have a Rebel training license!"};
			case (__GETC__(life_coplevel) < 4): {"Du hast nicht den benötigten rank!"};
			default
			{
				["Bundeswehr Ausrüstung",
					[
						["hgun_P07_snds_F","(9mm)Taser Pistol",2000],
						["16Rnd_9x21_Mag","(9mm)Taser Magazine",500],
						["arifle_sdar_F","(5,56mm)Taser Rifle",20000],
						["20Rnd_556x45_UW_mag","(5,56mm)Taser Magazine",500],
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["Rangefinder",nil,3000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300],
						["hgun_Pistol_Signal_F",nil,15000],
						["6Rnd_GreenSignal_F",nil,500],
						["6Rnd_RedSignal_F",nil,500],
						["srifle_GM6_F",nil,400000],
						["srifle_GM6_SOS_F","+SOS",450000],
						["srifle_GM6_LRPS_F","+LRPS",450000],
						["5Rnd_127x108_Mag",nil,500],
						["muzzle_snds_B",Schalldämpfer (7,62 mm),3000],
						["arifle_MX_SW_F",nil,500000],
						["arifle_MX_SW_pointer_F","+Pointer",550000],
						["arifle_MX_SW_Hamr_pointer_F","+Hamr +Pointer",550000],
						["100Rnd_65x39_caseless_mag",nil,500],
						["LMG_Zafir_F",nil,600000],
						["LMG_Zafir_pointer_F","+Pointer",650000],
						["150Rnd_762x51_Box",nil,500],
						["HandGrenade_Stone","Flashbang",10000]
					]
				];
			};
		};
	};
};
