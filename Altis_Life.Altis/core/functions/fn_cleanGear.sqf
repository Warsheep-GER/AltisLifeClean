/*
	File: fn_cleanupGear.sqf
	Author: Warsheep(GER)
	
	Description:
	hope thats fixed the bug thats players spawn full equipted
*/

//Cleanup player 
removeAllContainers player;
removeAllWeapons player;
removeGoggles player;
removeHeadGear player;
[] call life_fnc_saveGear;