#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Polizei Ausruestung"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret = 
		[
		["U_Rangemaster","Polizei Uniform",25]
		];
	};
	
	//Hats
	case 1:
	{
		
		_ret =
			[	
			["H_Beret_blk_POLICE",nil,500]
			];
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret = _ret + 
			[	
				["H_Beret_02",nil,500]
			];
		};
		if (license_cop_bund) then
		{
			_ret = _ret + 
			[	
				["H_Beret_Colonel",nil,500]
			];
		};	
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret = 
		[
			["V_Rangemaster_belt",nil,800]
		];
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret = _ret + 
			[	
				["V_PlateCarrier2_rgr",nil,1500]
			];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Carryall_cbr",nil,3500]
		];
	};
};
_ret;