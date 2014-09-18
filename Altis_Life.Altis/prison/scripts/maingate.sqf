/////////////////////////////////////////////////////
//       script by Maxjoiner 2013    //
//	Do not modified or use     //
//	without my permission 	 //
//////////////////////////////////////////////////

private ["_gate","_attach","_numb","_bar1","_bar2"];

_gate = _this select 0;
_attach = _this select 1;
_numb = _this select 2;
_bar1 = _this select 3;
_bar2 = _this select 4;

maingateopen = false;
maingateclosed = false;

publicVariable "maingateopen";
publicVariable "maingateclosed";


waitUntil {maingateopen};

_bar1 say3d "Alarm_BLUFOR";
_gate say3d "gatesound";

for "_i" from 1 to 200 do
{
	
_gate Attachto [_attach, [_numb,0.3, -9.2]];
_numb = _numb + 0.1;
sleep 0.001;

};

_bar1 animate ["Door_1_rot", 1];
_bar2 animate ["Door_1_rot", 1];


waitUntil {maingateclosed};

_bar1 animate ["Door_1_rot", 0];
_bar2 animate ["Door_1_rot", 0];

_gate say3d "gatesound";

for "_i" from 1 to 200 do
{
	
_gate Attachto [_attach, [_numb,0.3, -9.2]];
_numb = _numb - 0.1;
sleep 0.001;

};

[_gate,_attach,_numb,_bar1,_bar2] execVM "\max_police_mod\scripts\maingate.sqf";