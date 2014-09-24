/*
	File: initServer.sqf
	
	Description:
	Starts the initialization of the server.
*/
if(!(_this select 0)) exitWith {}; //Not server
[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";
master_group attachTo[bank_obj,[0,0,0]];

onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";

//Spawn the new hospitals.
{
	_hs = createVehicle ["Land_Hospital_main_F", [0,0,0], [], 0, "NONE"];
	_hs setDir (markerDir _x);
	_hs setPosATL (getMarkerPos _x);
	_var = createVehicle ["Land_Hospital_side1_F", [0,0,0], [], 0, "NONE"];
	_var attachTo [_hs, [4.69775,32.6045,-0.1125]];
	detach _var;
	_var = createVehicle ["Land_Hospital_side2_F", [0,0,0], [], 0, "NONE"];
	_var attachTo [_hs, [-28.0336,-10.0317,0.0889387]]; 
	detach _var;//Hospital Doors Animate
	_hs = [3760,12990,0] nearestObject "Land_Hospital_main_F"; //Kavala Hospital Doors
	{
        _var = createTrigger [
            "EmptyDetector",
            _hs modelToWorld _x
        ];
        _var setVariable ["parent", _hs];
        _var setTriggerArea [5, 5, 0, false];
        _var setTriggerActivation ["ANY", "PRESENT", true];
        _var setTriggerStatements [
            "this",
            format [
                "
                    (thisTrigger getVariable 'parent')
                        animate ['Door_%1A_move', 1];
                    (thisTrigger getVariable 'parent') 
                        animate ['Door_%1B_move', 1];
                ", _forEachIndex + 2
            ],
            format [
                "
                    (thisTrigger getVariable 'parent') 
                        animate ['Door_%1A_move', 0];
                    (thisTrigger getVariable 'parent') 
                        animate ['Door_%1B_move', 0];
                ", _forEachIndex + 2
            ]
        ];
        _hs setVariable [format [
            "bis_disabled_Door_%1", 
            _forEachIndex + 2
        ], 1, true];
    } forEach [[2.80469,15.7993,-8.47323],[2.78027,7.52686,-8.4725],[-4.17358,-7.89453,-8.4725]];
	//Hospital Door Animate End
} foreach ["hospital_2","hospital_3","hospital_4"];


//Airport Doors Animate
private ["_fnc","_tr","_side"];
_fnc = 
{
	{
		_tr = createTrigger [
		"EmptyDetector",
		_side modelToWorld _x
		];
		_tr setVariable ["parent", _side];
		_tr setTriggerArea [5, 5, 0, false];
		_tr setTriggerActivation ["ANY", "PRESENT", true];
		_tr setTriggerStatements [
		"this",
		format [
		"
		(thisTrigger getVariable 'parent')
		animate ['Door_%1A_move', 1];
		(thisTrigger getVariable 'parent') 
		animate ['Door_%1B_move', 1];
		", _forEachIndex + 7
		],
		format [
		"
		(thisTrigger getVariable 'parent') 
		animate ['Door_%1A_move', 0];
		(thisTrigger getVariable 'parent') 
		animate ['Door_%1B_move', 0];
		", _forEachIndex + 7
		]
		];
		_side setVariable [format [
		"bis_disabled_Door_%1", 
		_forEachIndex + 7
		], 1, true];
	} forEach _this;
};
_side = [14619,16810,0] nearestObject "Land_Airport_left_F";
[
	[-0.62,-15.16,-7],
	[-0.62,15.16,-7]
] call _fnc;
_side = [14587,16776,0] nearestObject "Land_Airport_right_F";
[
	[0.62,-15.16,-7],
	[0.62,15.16,-7]
] call _fnc;

[8,true,true,12] execFSM "core\fsm\timeModule.fsm";