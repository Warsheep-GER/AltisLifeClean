/////////////////////////////////////////////////////
//       script by Maxjoiner 2013    //
//	Do not modified or use     //
//	without my permission 	 //
//////////////////////////////////////////////////

private ["_gate","_attach","_numb","_bar3","_bar4"];

_gate = _this select 0;
_attach = _this select 1;
_numb = _this select 2;
_bar3 = _this select 3;
_bar4 = _this select 4;

secondgateopen = false;
secondgateclosed = false;

publicVariable "secondgateopen";
publicVariable "secondgateclosed";


waitUntil {secondgateopen};

_bar3 say3d "Alarm_BLUFOR";
_gate say3d "gatesound";

for "_i" from 1 to 200 do
{
	
_gate Attachto [_attach, [_numb,50.2, -9.2]];
_numb = _numb + 0.1;
sleep 0.001;

};

_bar3 animate ["Door_1_rot", 1];
_bar4 animate ["Door_1_rot", 1];


waitUntil {secondgateclosed};

_bar3 animate ["Door_1_rot", 0];
_bar4 animate ["Door_1_rot", 0];

_gate say3d "gatesound";

for "_i" from 1 to 200 do
{
	
_gate Attachto [_attach, [_numb,50.2, -9.2]];
_numb = _numb - 0.1;
sleep 0.001;

};

[_gate,_attach,_numb,_bar3,_bar4] execVM "\max_police_mod\scripts\secondgate.sqf";