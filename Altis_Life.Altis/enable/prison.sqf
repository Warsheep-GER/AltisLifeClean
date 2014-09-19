if !(isserver) exitWith {};

private ["_attach","_bar1","_bar2","_bar3","_bar4","_camp","_camp1","_camppos","_camppos1","_center","_dir","_gatenumb","_gatepos","_gatepos1","_gol","_gol1","_golpos","_golpos1","_guard","_guard1","_guard2","_guard3","_guardpos","_guardpos1","_guardpos2","_guardpos3","_hole","_house","_house1","_house10","_house11","_house12","_house13","_house2","_house3","_house4","_house5","_house6","_house7","_house8","_house9","_housepos","_housepos1","_housepos10","_housepos11","_housepos12","_housepos13","_housepos2","_housepos3","_housepos4","_housepos5","_housepos6","_housepos7","_housepos8","_housepos9","_light","_light1","_light2","_light3","_lightdir","_lightpos","_lightpos1","_wall","_walldir","_wallinterval","_wallnumber","_walltype","_wire","_wirenumb","_numb","_m1","_marker","_markpos","_office","_office1","_office2","_office3","_offpos","_offpos1","_offpos2","_offpos3","_park","_park1","_parkpos","_parkpos1","_pos","_sign","_sign1","_signpos","_signpos1","_signpos2","_tr","_try","_trib","_trib1","_tribpos","_tribpos1","_i","_startobject1","_startobject","_sign","_sign1","_signpos","_signpos1","_time","_tower1","_tower2","_tower3","_tower4","_maingate1","_maingate2","_secondgate1","_secondgate2"];

_pos = [22070.52,3.150569,14475.64];
_startobject1 = createVehicle ["land_helipadempty_f", _pos ,[], 0, ""];
_startobject1 setdir 0;
_wallDir = getdir _startObject1  + (90);
_tr = "Land_Airport_Tower_F";
_tower1 = createVehicle [_tr , getpos _startobject1,[], 0, ""];
_tower1 setVectorUp [0,0,1];
_tower1 setdir _walldir;
_tower1 call bis_fnc_boundingboxmarker;
_light = createVehicle ["Land_LampHalogen_F" , getpos _startobject1,[], 0, ""];
_light Attachto [_tower1, [2,0, 1]];
_light setdir getdir _tower1;
_light = createVehicle ["Land_LampHalogen_F" , getpos _startobject1,[], 0, ""];
_light Attachto [_tower1, [-3,0, 1]];
_lightdir = getdir _tower1 - 90;
_light setdir _lightdir;
_wallnumber = 41;
_numb = 174;
_wirenumb = _wallnumber;//
_try = _startObject1 [0,_numb,0];
_wallType = "Land_Mil_WallBig_4m_F";
_wallDir = getdir _startObject1  + (90);
_wallInterval = 4; 


for "_i" from 1 to _wallNumber do
{
	_dir = vectorDir _startObject1;
	_pos = [(getPosATL _startObject1 select 0) + (_dir select 0) * (_i * _wallInterval), (getPosATL _startObject1 select 1) + (_dir select 1) * (_i * _wallInterval), getPosATL _startObject1 select 2];
	_wall = createVehicle [_wallType, _pos, [], 0, "CAN_COLLIDE"];
	_wall setDir (getDir _startObject1 + _wallDir);
	_wall setVectorUp vectorUp _startObject1;
	_wall call bis_fnc_boundingboxmarker;
	if (_wirenumb > 1) then {_wire= createVehicle ["Land_Razorwire_F", getpos _wall,[], 0, ""];
	_wire Attachto [_wall, [0,0, 2.5]]};
	_wirenumb = _wirenumb -1;
	
};

///2° torre--alla terza rec

_startobject = createVehicle ["land_helipadempty_f", _try ,[], 0, ""];
_startobject setdir 90;
_tower2 = createVehicle [_tr , getpos _startobject,[], 0, ""];
_tower2 call bis_fnc_boundingboxmarker;
_light = createVehicle ["Land_LampHalogen_F" , getpos _startobject1,[], 0, ""];
_light Attachto [_tower2, [-3,0, 1]];
_light setdir getdir _tower2;
_light = createVehicle ["Land_LampHalogen_F" , getpos _startobject1,[], 0, ""];
_light Attachto [_tower2, [2,0, 1]];
_lightdir = getdir _tower2 + 90;
_light setdir _lightdir;
_numb = 168.7;
_wallNumber = 40;
_wirenumb = _wallnumber;
_try = _startObject [0,_numb,0];
_wallDir = getdir _startObject1  + (90);
_wallInterval = 4; 
_tower2 setdir 180;

for "_i" from 1 to _wallNumber do
{
	_dir = vectorDir _startObject;
	_pos = [(getPosATL _startObject select 0) + (_dir select 0) * (_i * _wallInterval), (getPosATL _startObject select 1) + (_dir select 1) * (_i * _wallInterval), getPosATL _startObject select 2];
	_wall = createVehicle [_wallType, _pos, [], 0, "CAN_COLLIDE"];
	_wall setDir (getDir _startObject + _wallDir);
	_wall setVectorUp vectorUp _startObject;
	_wall  call bis_fnc_boundingboxmarker;
	if (_wirenumb > 1) then {_wire= createVehicle ["Land_Razorwire_F", getpos _wall,[], 0, ""];
	_wire Attachto [_wall, [0,0, 2.5]]};
	_wirenumb = _wirenumb -1;
	
	};
	
//3° torre--alla 4° rec
deletevehicle _startobject;
_startobject = createVehicle ["land_helipadempty_f", _try ,[], 0, ""];
_startobject setdir 180;
_numb = 177.03;
_wallNumber = 43;
_wirenumb = _wallnumber;
_tower3= createVehicle [_tr , getpos _startobject,[], 0, ""];
_tower3  call bis_fnc_boundingboxmarker;
_light = createVehicle ["Land_LampHalogen_F" , getpos _startobject1,[], 0, ""];
_light Attachto [_tower3, [-3,0, 1]];
_light setdir getdir _tower3;
_light = createVehicle ["Land_LampHalogen_F" , getpos _startobject1,[], 0, ""];
_light Attachto [_tower3, [2,0, 1]];
_lightdir = getdir _tower3 + 90;
_light setdir _lightdir;
_try = _startObject [3,_numb,0];
_wallDir = getdir _startObject1  + (90);
_wallInterval = 4;
_tower3 setdir 270;

for "_i" from 1 to _wallNumber do
{
	_dir = vectorDir _startObject;
	_pos = [(getPosATL _startObject select 0) + (_dir select 0) * (_i * _wallInterval), (getPosATL _startObject select 1) + (_dir select 1) * (_i * _wallInterval), getPosATL _startObject select 2];
	_wall = createVehicle [_wallType, _pos, [], 0, "CAN_COLLIDE"];
	_wall setDir  (getDir _startObject + _wallDir);
	_wall setVectorUp vectorUp _startObject;
	_wall  call bis_fnc_boundingboxmarker;
	if (_wirenumb > 1) then {_wire= createVehicle ["Land_Razorwire_F", getpos _wall,[], 0, ""];
	_wire Attachto [_wall, [0,0, 2.5]]};
	_wirenumb = _wirenumb -1;
	
	};	
	
//4° torre da fare l'ingresso----
deletevehicle _startobject;
_startobject = createVehicle ["land_helipadempty_f", _try ,[], 0, ""];
_startobject setdir 270;
_numb = 95;///////////
_wallNumber = 40;
_wirenumb = _wallnumber;
_gatenumb = _wallnumber;
_tower4= createVehicle [_tr , getpos _startobject,[], 0, ""];
_tower4 call bis_fnc_boundingboxmarker;
_light = createVehicle ["Land_LampHalogen_F" , getpos _startobject1,[], 0, ""];
_light Attachto [_tower4, [-3,0, 1]];
_light setdir getdir _tower4;
_light = createVehicle ["Land_LampHalogen_F" , getpos _startobject1,[], 0, ""];
_light Attachto [_tower4, [2,0, 1]];
_lightdir = getdir _tower4 + 90;
_light setdir _lightdir;
_try = _startObject [-0.8,_numb,0];////
_wallDir = getdir _startObject1  + (90);
_wallInterval = 4; 
_tower4 setdir 360;


publicVariable "_tower1";
publicVariable "_tower2";
publicVariable "_tower3";
publicVariable "_tower4";
 

for "_i" from 1 to _wallNumber do
{
	if (_gatenumb > 22) then {
	_dir = vectorDir _startObject;
	_pos = [(getPosATL _startObject select 0) + (_dir select 0) * (_i * _wallInterval), (getPosATL _startObject select 1) + (_dir select 1) * (_i * _wallInterval), getPosATL _startObject select 2];
	_wall = createVehicle [_wallType, _pos, [], 0, "CAN_COLLIDE"];
	_wall setDir (getDir _startObject + _wallDir);
	_wall setVectorUp vectorUp _startObject;
	_wall  call bis_fnc_boundingboxmarker;
	if (_wirenumb > 23 and _wirenumb < 40) then {_wire= createVehicle ["Land_Razorwire_F", getpos _wall,[], 0, ""];
	_wire Attachto [_wall, [0,0, 2.5]]};
	_wirenumb = _wirenumb -1;
	};
	if (_gatenumb < 18) then {
	_dir = vectorDir _startObject;
	_pos = [(getPosATL _startObject select 0) + (_dir select 0) * (_i * _wallInterval), (getPosATL _startObject select 1) + (_dir select 1) * (_i * _wallInterval), getPosATL _startObject select 2];
	_wall = createVehicle [_wallType, _pos, [], 0, "CAN_COLLIDE"];
	_wall setDir (getDir _startObject + _wallDir);
	_wall setVectorUp vectorUp _startObject;
	_wall  call bis_fnc_boundingboxmarker;
	if (_wirenumb > 1 and _wirenumb < 22) then {_wire= createVehicle ["Land_Razorwire_F", getpos _wall,[], 0, ""];
	_wire Attachto [_wall, [0,0, 2.5]]};
	_wirenumb = _wirenumb -1;
	};
	_gatenumb = _gatenumb - 1;
	};
	

	
//////main gate////	
	
_gatepos = _startObject [0,88,0];	
_maingate1= createVehicle ["Land_New_WiredFence_10m_F", _gatepos,[], 0, ""];	
publicVariable "_maingate1";
_maingate1 Attachto [_tower4, [-89.7,0.3, -9.2]];
_maingate1 setdir 0;
_maingate1 setVectorUp vectorUp _tower4;
_maingate1 call bis_fnc_boundingboxmarker;

_gatepos1 = _startObject [0,98,0];	
_maingate2= createVehicle ["Land_New_WiredFence_10m_F", _gatepos1,[], 0, ""];	
publicVariable "_maingate2";
_maingate2 Attachto [_maingate1, [10,0,0]];
_maingate2 setVectorUp vectorUp _tower4;
_maingate2  call bis_fnc_boundingboxmarker;


_bar1= createVehicle ["Land_BarGate_F",getpos _maingate1,[], 0, ""];		
_bar1 Attachto [_maingate1, [9.5,0.2,2.5]];
detach _bar1;
_bar1 setdir 0;
_bar1 addEventHandler ["HandleDamage", {false}];
_bar2= createVehicle ["Land_BarGate_F", getpos _bar1,[], 0, ""];		
_bar2 Attachto [_maingate1, [0.5,0.2,2.5]];
detach _bar2;
_bar2 setdir 180;
_bar2 addEventHandler ["HandleDamage", {false}];

[_maingate1,_tower4,-89.7,_bar1,_bar2] execVM "prison\scripts\maingate.sqf";

//////////////////end
_try = _startObject [50,-5,0];////
_startobject = createVehicle ["land_helipadempty_f", _try ,[], 0, ""];
_startobject setdir 270;
_wallNumber = 42;
_wirenumb = _wallnumber;
_gatenumb = _wallnumber;

for "_i" from 1 to _wallNumber do
{
	if (_gatenumb > 22) then {
	_dir = vectorDir _startObject;
	_pos = [(getPosATL _startObject select 0) + (_dir select 0) * (_i * _wallInterval), (getPosATL _startObject select 1) + (_dir select 1) * (_i * _wallInterval), getPosATL _startObject select 2];
	_wall = createVehicle [_wallType, _pos, [], 0, "CAN_COLLIDE"];
	_wall setDir (getDir _startObject + _wallDir);
	_wall setVectorUp vectorUp _startObject;
	_wall  call bis_fnc_boundingboxmarker;
	if (_wirenumb > 23 and _wirenumb < 42) then {_wire= createVehicle ["Land_Razorwire_F", getpos _wall,[], 0, ""];
	_wire Attachto [_wall, [0,0, 2.5]]};
	
	};
	if (_gatenumb < 18) then {
	_dir = vectorDir _startObject;
	_pos = [(getPosATL _startObject select 0) + (_dir select 0) * (_i * _wallInterval), (getPosATL _startObject select 1) + (_dir select 1) * (_i * _wallInterval), getPosATL _startObject select 2];
	_wall = createVehicle [_wallType, _pos, [], 0, "CAN_COLLIDE"];
	_wall setDir (getDir _startObject + _wallDir);
	_wall setVectorUp vectorUp _startObject;
	_wall  call bis_fnc_boundingboxmarker;
	if (_wirenumb > 1 and _wirenumb < 17) then {_wire= createVehicle ["Land_Razorwire_F", getpos _wall,[], 0, ""];
	_wire Attachto [_wall, [0,0, 2.5]]};
	;
	};
	_wirenumb = _wirenumb -1;
	_gatenumb = _gatenumb - 1;
	};
	
_hole= createVehicle ["Land_Mil_WallBig_4m_F", _gatepos,[], 0, ""];	
_hole Attachto [_tower4, [-164.5,51, -9.2]];
_hole setdir 0;
_hole setVectorUp vectorUp _tower4;


		
////secondary gate////	
	
_secondgate1= createVehicle ["Land_New_WiredFence_10m_F", _gatepos,[], 0, ""];
publicVariable "_secondgate1";	
_secondgate1 Attachto [_tower4, [-92.3,50.2, -9.2]];
_secondgate1 setdir 0;
_secondgate1 setVectorUp vectorUp _tower4;
_secondgate1 call bis_fnc_boundingboxmarker;
_secondgate2= createVehicle ["Land_New_WiredFence_10m_F", _gatepos1,[], 0, ""];	
publicVariable "_secondgate1";	
_secondgate2 Attachto [_secondgate1, [10,0,0]];
_secondgate2 setVectorUp vectorUp _tower4;
_secondgate2 call bis_fnc_boundingboxmarker;

_bar3= createVehicle ["Land_BarGate_F",getpos _secondgate1,[], 0, ""];		
_bar3 Attachto [_secondgate1, [9.5,-0.6,2.5]];
detach _bar3;
_bar3 setdir 0;
_bar3 addEventHandler ["HandleDamage", {false}];
_bar4= createVehicle ["Land_BarGate_F", getpos _secondgate1,[], 0, ""];		
_bar4 Attachto [_secondgate1, [0.5,-0.6,2.5]];
detach _bar4;
_bar4 setdir 180;
_bar4 addEventHandler ["HandleDamage", {false}];

[_secondgate1,_tower4,-92.3,_bar3,_bar4] execVM "prison\scripts\secondgate.sqf";

//////////////////end

/////facilities prisoners////

_housepos = _hole [30,30,-1.5];	
_house= createVehicle ["Land_i_Barracks_V1_F", _housepos,[], 0, ""];	
_house setdir 0;
_house setVectorUp vectorUp _tower4;
_house call bis_fnc_boundingboxmarker;
_housepos1 = _hole [30,50,-1.5];	
_house1= createVehicle ["Land_i_Barracks_V1_F", _housepos1,[], 0, ""];	
_house1 setdir 0;
_house1 setVectorUp vectorUp _tower4;
_house1  call bis_fnc_boundingboxmarker;
_housepos2 = _hole [30,70,-1.5];	
_house2= createVehicle ["Land_i_Barracks_V1_F", _housepos2,[], 0, ""];	
_house2 setdir 0;
_house2 setVectorUp vectorUp _tower4;
_house2 call bis_fnc_boundingboxmarker;
_housepos3 = _hole [30,90,-1.5];	
_house3= createVehicle ["Land_i_Barracks_V1_F", _housepos3,[], 0, ""];	
_house3 setdir 0;
_house3 setVectorUp vectorUp _tower4;
_house3  call bis_fnc_boundingboxmarker;
_housepos4 = _hole [70,30,-1.5];	
_house4= createVehicle ["Land_i_Barracks_V1_F", _housepos4,[], 0, ""];	
_house4 setdir 0;
_house4 setVectorUp vectorUp _tower4;
_house4  call bis_fnc_boundingboxmarker;
_housepos5 = _hole [70,50,-1.5];	
_house5= createVehicle ["Land_i_Barracks_V1_F", _housepos5,[], 0, ""];	
_house5 setdir 0;
_house5 setVectorUp vectorUp _tower4;
_house5  call bis_fnc_boundingboxmarker;	
_housepos6 = _hole [70,70,-1.5];
_house6= createVehicle ["Land_i_Barracks_V1_F", _housepos6,[], 0, ""];	
_house6 setdir 0;
_house6 setVectorUp vectorUp _tower4;
_house6  call bis_fnc_boundingboxmarker;
_housepos7= _hole [70,90,-1.5];	
_house7= createVehicle ["Land_i_Barracks_V1_F", _housepos7,[], 0, ""];	
_house7 setdir 0;
_house7 setVectorUp vectorUp _tower4;
_house7  call bis_fnc_boundingboxmarker;	

/////refetory//////

_housepos8= _hole [130,90,-1.5];	
_house8= createVehicle ["Land_MilOffices_V1_F", _housepos8,[], 0, ""];	
_house8 setdir 90;
_house8 setVectorUp vectorUp _tower4;
_house8  call bis_fnc_boundingboxmarker;	
_housepos9= _hole [130,40,-1.5];	
_house9= createVehicle ["Land_MilOffices_V1_F", _housepos9,[], 0, ""];	
_house9 setdir 90;
_house9 setVectorUp vectorUp _tower4;
_house9  call bis_fnc_boundingboxmarker;	

////basket and football////
_camppos= _hole [100,90,-1.5];
_camp= createVehicle ["Land_BC_Court_F", _camppos,[], 0, ""];	
_camp setdir 180;
_camp setVectorUp vectorUp _house9;
_camp call bis_fnc_boundingboxmarker;
_camppos1= _hole [100,40,-1.5];
_camp1= createVehicle ["Land_BC_Court_F", _camppos1,[], 0, ""];	
_camp1 setdir 180;
_camp1 setVectorUp vectorUp _house9;
_camp1 call bis_fnc_boundingboxmarker;
_housepos10= _hole [100,100,-1.5];	
_house10= createVehicle ["Land_BC_Basket_F", _housepos10,[], 0, ""];	
_house10 setdir 180;
_house10 setVectorUp vectorUp _tower4;
_housepos11= _hole [100,77,-1.5];	
_house11= createVehicle ["Land_BC_Basket_F", _housepos11,[], 0, ""];	
_house11 setdir 360;
_house11 setVectorUp vectorUp _tower4;
_housepos12= _hole [100,50,-1.5];	
_house12= createVehicle ["Land_BC_Basket_F", _housepos12,[], 0, ""];	
_house12 setdir 180;
_house12 setVectorUp vectorUp _camp1;
_housepos13= _hole [100,27.6,-1.5];	
_house13= createVehicle ["Land_BC_Basket_F", _housepos13,[], 0, ""];	
_house13 setdir 360;
_house13 setVectorUp vectorUp _camp1;
_tribpos= _hole [115,90,-1.5];
_trib= createVehicle ["Land_Tribune_F", _tribpos,[], 0, ""];	
_trib setdir 90;
_trib setVectorUp vectorUp _house9;
_trib call bis_fnc_boundingboxmarker;
_tribpos1= _hole [115,40,-1.5];
_trib1= createVehicle ["Land_Tribune_F", _tribpos1,[], 0, ""];	
_trib1 setdir 90;
_trib1 setVectorUp vectorUp _house9;
_trib1 call bis_fnc_boundingboxmarker;
_golpos= _hole [70,110,-1.5];	
_gol= createVehicle ["Land_Goal_F", _golpos,[], 0, ""];	
_gol setdir 90;
_gol setVectorUp vectorUp _tower4;
_golpos1= _hole [40,110,-1.5];	
_gol1= createVehicle ["Land_Goal_F", _golpos1,[], 0, ""];	
_gol1 setdir 270;
_gol1 setVectorUp vectorUp _tower4;

///prison office///
_offpos = _secondgate1 [60,-35,-1.5];	
_office = createVehicle ["Land_MilOffices_V1_F", _offpos,[], 0, ""];	
_office setdir 360;
_office setVectorUp vectorUp _tower1;
_office call bis_fnc_boundingboxmarker;
_offpos1 = _secondgate1 [-50,-25,-1.5];	
_office1 = createVehicle ["Land_i_Barracks_V2_F", _offpos1,[], 0, ""];	
_office1 setdir 270;
_office1 setVectorUp vectorUp _tower1;
_office1 call bis_fnc_boundingboxmarker;
_offpos2 = _secondgate1 [-30,-25,-1.5];	
_office2 = createVehicle ["Land_i_Barracks_V2_F", _offpos2,[], 0, ""];	
_office2 setdir 270;
_office2 setVectorUp vectorUp _tower1;
_office2 call bis_fnc_boundingboxmarker;
_offpos3 = _secondgate1 [-10,-25,-1.5];	
_office3 = createVehicle ["Land_i_Barracks_V2_F", _offpos3,[], 0, ""];	
_office3 setdir 270;
_office3 setVectorUp vectorUp _tower1;
_office3 call bis_fnc_boundingboxmarker;

////guard towers////
_guardpos = _maingate1 [-8,3,-1.5];	
_guard = createVehicle ["Land_Cargo_Patrol_V3_F", _guardpos ,[], 0, ""];	
_guard setdir 270;
_guard setVectorUp vectorUp _tower1;
_guard call bis_fnc_boundingboxmarker;
_guardpos1 = _maingate1 [18,3,-1.5];	
_guard1 = createVehicle ["Land_Cargo_Patrol_V3_F", _guardpos1 ,[], 0, ""];	
_guard1 setdir 90;
_guard1 setVectorUp vectorUp _tower1;
_guard1 call bis_fnc_boundingboxmarker;
_guardpos2 = _secondgate1 [-8,-5,-1.5];	
_guard2 = createVehicle ["Land_Cargo_Patrol_V3_F", _guardpos2 ,[], 0, ""];	
_guard2 setdir 270;
_guard2 setVectorUp vectorUp _tower1;
_guard2 call bis_fnc_boundingboxmarker;
_guardpos3 = _secondgate1 [18,-5,-1.5];	
_guard3 = createVehicle ["Land_Cargo_Patrol_V3_F", _guardpos3 ,[], 0, ""];	
_guard3 setdir 90;
_guard3 setVectorUp vectorUp _tower1;
_guard3 call bis_fnc_boundingboxmarker;

///parking///

_parkpos = _secondgate1 [60,-15,-2];	
_park = createVehicle ["Land_Shed_Small_F", _parkpos,[], 0, ""];	
_park setdir 90;
_park setVectorUp vectorUp _tower1;
_park call bis_fnc_boundingboxmarker;
_parkpos1 = _secondgate1 [35.7,-15,-2];	
_park1 = createVehicle ["Land_Shed_Small_F", _parkpos1,[], 0, ""];	
_park1 setdir 90;
_park1 setVectorUp vectorUp _tower1;
_park1 call bis_fnc_boundingboxmarker;

////Sign///
_signpos = _maingate1 [-8,0,-2];	
_sign = createVehicle ["SignAd_Sponsor_ARMEX_F", _signpos ,[], 0, ""];	
_sign setdir 0;
_sign setVectorUp vectorUp _tower1;
_sign setObjectTextureGlobal [0,"prison\data\avviso.paa"];
_signpos1 = _maingate1 [18,0,-2];	
_sign1 = createVehicle ["SignAd_Sponsor_ARMEX_F", _signpos1 ,[], 0, ""];	
_sign1 setdir 0;
_sign1 setVectorUp vectorUp _tower1;
_sign1 setObjectTextureGlobal [0,"prison\data\logo.paa"];

///light main and secondary entry
_lightpos = _maingate1 [-18,2,-2];	
_light = createVehicle ["Land_LampHalogen_F", _lightpos ,[], 0, ""];	
_light setdir getdir _tower1 + (90);
_light setVectorUp vectorUp _tower1;
_lightpos1 = _secondgate1 [-18,-2,-2];	
_light1 = createVehicle ["Land_LampHalogen_F", _lightpos1 ,[], 0, ""];	
_light1 setdir getdir _tower1+ (90);
_light1 setVectorUp vectorUp _tower1;
///light prisoners
_lightpos = _hole [85,60,-2];	
_light = createVehicle ["Land_LampHalogen_F", _lightpos ,[], 0, ""];	
_light setdir 0;
_light setVectorUp vectorUp _tower1;
_light1 = createVehicle ["Land_LampHalogen_F", _lightpos ,[], 0, ""];	
_light1 attachto [_light,[0,0,0]];
_light1 setdir 90;
_light2 = createVehicle ["Land_LampHalogen_F", _lightpos ,[], 0, ""];	
_light2 attachto [_light,[0,0,0]];
_light2 setdir 180;
_light3 = createVehicle ["Land_LampHalogen_F", _lightpos ,[], 0, ""];	
_light3 attachto [_light,[0,0,0]];
_light3 setdir 270;






	