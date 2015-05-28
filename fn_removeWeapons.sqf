/*
	Author: Tobias 'Xetoxyc' Sittenauer
	
	Edited by: Mason Fuckboi Sky
	Credits: Incredipwn for helping me make this work for life studios.
	
	Description:
	Holsters/Removes the weapon of unit from police command.

	File: fn_removeWeapons.sqf
*/
private["_cop","_legal","_handgun"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
_legal = ["RH_cz75","RH_gsh18"];
_magWeapIll = [
                "RH_g18",
				"30Rnd_65x39_caseless_mag","30Rnd_556x45_Stanag","10Rnd_762x51_Mag","30Rnd_65x39_caseless_green","20Rnd_556x45_UW_mag","30Rnd_65x39_caseless_mag_Tracer","30Rnd_45ACP_Mag_SMG_01","20Rnd_762x51_Mag"];

_magArr = magazines player;
_magWeapFinal = _magArr - _magWeapIll;
_handgun = handgunWeapon player;
if(_cop == player) then {};
if(isNull player) exitWith {};
if(isNull _cop OR !(player getVariable["restrained",FALSE])) exitWith {};
if !((_handgun) in _legal) exitWith { removeAllWeapons player; {player removeMagazine _x} foreach (magazines player); hint "All illegal weapons have been seized"; };
if((license_civ_gun) && (_handgun) in _legal) then {
	switch(true) do 
	{
		case (player canAddItemToBackpack _handgun):
		{
			removeAllWeapons player;
			player addItemToBackpack _handgun;
			{
				player addMagazine _x;
			} foreach _magWeapFinal;  
			hint "Your pistol has been holstered to your backpack.";
		};
		case (player canAddItemToVest _handgun):
		{
			removeAllWeapons player;
			player addItemToVest _handgun;
			{
				player addMagazine _x;
			} foreach _magWeapFinal;  
			hint "Your pistol has been holstered to your vest.";
		};
		case (player canAddItemToUniform _handgun):
		{
			removeAllWeapons player;
			player addItemToUniform _handgun;
			{
				player addMagazine _x;
			} foreach _magWeapFinal;  
			hint "Your pistol has been holstered to your uniform.";
		};
		default
		{
			removeAllWeapons player;
			hint "Your pistol has been seized";
		};
	};
} else {
	removeAllWeapons player;
	hint "You have no firearms license, your weapon has been removed";
};

life_action_inUse = false;