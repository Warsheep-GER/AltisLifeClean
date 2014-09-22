_speed = speed player;
_pay = 0;
_veh = vehicle player;
if((_veh getVariable "siren")) exitWith {};
if(getPosATL _veh select 2 > 20) exitWith {};
if(!license_civ_driver) exitWith {
	[[getPlayerUID player,profileName,"9023"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	cutText[format["Sie sind mit %1 km/h geblitzt wurden und haben keine Fahrerlaubnis! \n\n\n Sie werden jetzt gesucht.",round _speed,[_pay] call life_fnc_numberText],"WHITE OUT"];
	0.0001 cutFadeOut 5;
	sleep 0.7;
	0.0001 cutFadeOut 5;
};
if((round _speed > 45) && (round _speed < 81)) then {_pay = 2500;};
if((round _speed > 80) && (round _speed < 121)) then {_pay = 5000;};
if(round _speed > 120) then {_pay =10000;};

if(life_atmcash < _pay) exitWith {
	if(_pay == 500) then {
		[[getPlayerUID player,profileName,"902"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	};
	if(_pay == 1500) then {
		[[getPlayerUID player,profileName,"9021"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	};
	if(_pay == 5000) then {
		[[getPlayerUID player,profileName,"9022"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	};
	cutText[format["Sie sind mit %1 km/h geblitzt wurden und bekommen eine Geldstraffe von %2 $ ! \n\n\n Sie werden jetzt gesucht. \n\n\n Ihnen wurde die Fahrerlaubnis entzogen.",round _speed,[_pay] call life_fnc_numberText],"WHITE OUT"];
	0.0001 cutFadeOut 1;
	sleep 0.7;
	0.0001 cutFadeOut 5;
	license_civ_driver = false;
};
if((round _speed > 45) && (round _speed < 81)) then {
	if(life_atmcash >= _pay) then {
		cutText[format["Sie sind mit %1 km/h geblitzt wurden und bekommen eine Geldstraffe von %2 $ ! \n\n\n  %2 $ wurden vom Konto abgebucht.",round _speed,[_pay] call life_fnc_numberText],"WHITE OUT"];
		0.0001 cutFadeOut 1;
		sleep 0.7;
		0.0001 cutFadeOut 5;
		life_atmcash = life_atmcash - _pay;
	};
};

if((round _speed > 80) && (round _speed < 121)) then {
	if(life_atmcash >= _pay) then {
		cutText[format["Sie sind mit %1 km/h geblitzt wurden und bekommen eine Geldstraffe von %2 $ ! \n\n\n %2 $ wurden vom Konto abgebucht.",round _speed,[_pay] call life_fnc_numberText],"WHITE OUT"];
		0.0001 cutFadeOut 1;
		sleep 0.7;
		0.0001 cutFadeOut 5;
		life_atmcash = life_atmcash - _pay;
	};
};

if(round _speed > 120) then {
	if(life_atmcash >= _pay) then {
		cutText[format["Sie sind mit %1 km/h geblitzt wurden und bekommen eine Geldstraffe von %2 $ ! \n\n\n %2 $ wurden vom Konto abgebucht. \n\n\n Ihnen wurde die Fahrerlaubnis entzogen.",round _speed,[_pay] call life_fnc_numberText],"WHITE OUT"];
		0.0001 cutFadeOut 1;
		sleep 0.7;
		0.0001 cutFadeOut 5;
		license_civ_driver = false;
		life_atmcash = life_atmcash - _pay;
	};
};