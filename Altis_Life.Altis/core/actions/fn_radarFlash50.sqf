_speed = speed player;
_pay = 0;
_veh = vehicle player;
if((_veh getVariable "siren")) exitWith {};
if(getPosATL _veh select 2 > 20) exitWith {};
if(!license_civ_driver) exitWith {
serv_killed = [player,"9023"];
publicVariableServer "serv_killed";
0.0001 cutFadeOut 5;
sleep 0.7;
0.0001 cutFadeOut 5;
};
if((round _speed > 55) && (round _speed < 61)) then {_pay = 500;};
if((round _speed > 60) && (round _speed < 81)) then {_pay = 1500;};
if(round _speed > 80) then {_pay = 5000;};

if(life_atmcash < _pay) exitWith {
if(_pay == 500) then {
serv_killed = [player,"902"];
publicVariableServer "serv_killed"
};
if(_pay == 1500) then {
serv_killed = [player,"9021"];
publicVariableServer "serv_killed"
};
if(_pay == 5000) then {
serv_killed = [player,"9022"];
publicVariableServer "serv_killed"
};
cutText[format["Sie sind mit %1 km/h geblitzt wurden und bekommen eine Geldstraffe von %2 $ ! \n\n\n Sie werden jetzt gesucht. \n\n\n Ihnen wurde die Fahrerlaubnis entzogen.",round _speed,[_pay] call life_fnc_numberText],"WHITE OUT"];
0.0001 cutFadeOut 5;
sleep 0.7;
0.0001 cutFadeOut 5;
license_civ_driver = false;
};
if((round _speed > 55) && (round _speed < 61)) then {
if(life_atmcash >= _pay) then {
cutText[format["Sie sind mit %1 km/h geblitzt wurden und bekommen eine Geldstraffe von %2 $ ! \n\n\n  %2 $ wurden vom Konto abgebucht.",round _speed,[_pay] call life_fnc_numberText],"WHITE OUT"];
0.0001 cutFadeOut 5;
sleep 0.7;
0.0001 cutFadeOut 5;
life_atmcash = life_atmcash - _pay;
};
};

if((round _speed > 60) && (round _speed < 81)) then {
if(life_atmcash >= _pay) then {
cutText[format["Sie sind mit %1 km/h geblitzt wurden und bekommen eine Geldstraffe von %2 $ ! \n\n\n %2 $ wurden vom Konto abgebucht.",round _speed,[_pay] call life_fnc_numberText],"WHITE OUT"];
0.0001 cutFadeOut 5;
sleep 0.7;
0.0001 cutFadeOut 5;
life_atmcash = life_atmcash - _pay;
};
};

if(round _speed > 80) then {
_pay = 5000;
if(life_atmcash >= _pay) then {
cutText[format["Sie sind mit %1 km/h geblitzt wurden und bekommen eine Geldstraffe von %2 $ ! \n\n\n %2 $ wurden vom Konto abgebucht. \n\n\n Ihnen wurde die Fahrerlaubnis entzogen.",round _speed,[_pay] call life_fnc_numberText],"WHITE OUT"];
0.0001 cutFadeOut 5;
sleep 0.7;
0.0001 cutFadeOut 5;
license_civ_driver = false;
life_atmcash = life_atmcash - _pay;
};
};