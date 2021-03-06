/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "187V": {_type = ["Fahrlässige Tötung",6500]};
	case "187": {_type = ["Totschlag",8500]};
	case "901": {_type = ["Gefängnisflucht ",4500]};
	case "120S": {_type = ["Zu schnelles Fahren ohne bezahlen.",5000]};
	case "120WL": {_type = ["Fahren ohne Führerschein",1000]};
	case "120H": {_type = ["wiederholt Zu schnelles Fahren",8000]};
	case "120FS": {_type = ["häufiges zu schnelles Fahren",10000]};
	case "120HWL": {_type = ["wiederholt zu schnelles Fahren ohne Führerschein",12000]};
	case "120FSWL": {_type = ["häufiges zu schnelles Fahren ohne Führerschein",14000]};
	case "261": {_type = ["Vergewaltigung",5000]}; //What type of sick bastard would add this?
	case "261A": {_type = ["Versuchte Vergewaltigung",3000]};
	case "215": {_type = ["Versuchter Auto Diebstahl",2000]};
	case "213": {_type = ["Gebrauch von illegalen Sprengstoff",10000]};
	case "211": {_type = ["Raub",1000]};
	case "207": {_type = ["Entführung",3500]};
	case "207A": {_type = ["Versuchte Entführung",5000]};
	case "485": {_type = ["veruchte Flucht Hilfe",2500]};
	case "486": {_type = ["Zur Flucht geholfen",5000]};
	case "487": {_type = ["schwerer Diebstahl",1500]};
	case "488": {_type = ["Kleiner Diebstahl",700]};
	case "480": {_type = ["Fahrerflucht",1300]};
	case "481": {_type = ["Drogenbesitz",1000]};
	case "482": {_type = ["versuchter Drogenhandel",5000]};
	case "483": {_type = ["Drogenhandel",9500]};
	case "459": {_type = ["Einbruch",6500]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
};