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
						["hgun_Pistol_heavy_01_F",nil,3000],
						["11Rnd_45ACP_Mag",nil,3000],
						["hgun_PDW2000_F",nil,3000],
						["30Rnd_9x21_Mag",nil,500],
						["hgun_Pistol_heavy_02_F",nil,10000],
						["6Rnd_45ACP_Cylinder",nil,500],
						["SMG_02_F",nil,35000],
						["30Rnd_9x21_Mag",nil,500],
						["SMG_01_F",nil,10000],
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
						["20Rnd_762x51_Mag",nil,500],
						["arifle_Katiba_C_F",nil,200000],
						["30Rnd_65x39_caseless_green",nil,500],
						["arifle_TRG20_F",nil,150000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
						["LMG_Mk200_F",nil,300000],
						["200Rnd_65x39_cased_Box",nil,500],
						["srifle_LRR_F",nil,400000],
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
						["20Rnd_762x51_Mag",nil,500],
						["arifle_Katiba_C_F",nil,200000],
						["30Rnd_65x39_caseless_green",nil,500],
						["arifle_TRG20_F",nil,150000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,500],
						["LMG_Mk200_F",nil,300000],
						["200Rnd_65x39_cased_Box",nil,500],
						["srifle_LRR_F",nil,400000],
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
						["30Rnd_65x39_caseless_green",nil,500],
						["srifle_EBR_F",nil,50000],
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
						["100Rnd_65x39_caseless_mag",nil,500],
						["LMG_Zafir_F",nil,600000],
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
						["5Rnd_127x108_Mag",nil,500],
						["arifle_MX_SW_F",nil,500000],
						["100Rnd_65x39_caseless_mag",nil,500],
						["LMG_Zafir_F",nil,600000],
						["150Rnd_762x51_Box",nil,500],
						["HandGrenade_Stone","Flashbang",10000]
					]
				];
			};
		};
	};
	case "items":
	{
		switch(true) do
		{
			case (playerSide == west): 
			{
				["Aufsätze",
					[
						["optic_Arco",nil,3000],
						["optic_Hamr",nil,3000],
						["optic_Aco_smg",nil,3000],
						["acc_flashlight",nil,3000],
						["acc_pointer_IR",nil,3000],
						["muzzle_snds_B",nil,3000],
						["optic_MRCO",nil,3000],
						["optic_DMS",nil,3000],
						["optic_LRPS",nil,3000],
						["optic_NVS",nil,3000],
						["optic_Nightstalker",nil,3000],
						["optic_tws",nil,3000],
						["optic_tws_mg",nil,3000]
					]
				];
			};
			case (playerSide == civilian): 
			{
				switch(true) do
				{
					
					case (license_civ_gun): 
					{
						["Aufsätze",
							[
								["optic_Hamr",nil,3000],
								["optic_Arco",nil,3000],
								["optic_Aco_smg",nil,3000],
								["acc_flashlight",nil,3000],
								["optic_MRD",nil,3000]
							]
						];
					};
					case (license_civ_rebel): 
					{
						["Aufsätze",
							[
								["optic_Arco",nil,3000],
								["optic_Hamr",nil,3000],
								["optic_Aco_smg",nil,3000],
								["acc_flashlight",nil,3000],
								["acc_pointer_IR",nil,3000],
								["optic_MRCO",nil,3000],
								["optic_DMS",nil,3000],
								["optic_LRPS",nil,3000]
							]
						];
					};
					default{"Entschuldigung ich kann dir nichts Verkaufen"};
				};
			};
			default	{"Entschuldigung ich kann dir nichts Verkaufen"};
		};
	};
};