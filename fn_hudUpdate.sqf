
/*
	File: fn_hudUpdate.sqf
	By Tonic - Modified by Mason
*/

private["_ui","_food","_water","_health","_money","_cash","_ammo","_select","_ammocount","_selectcount","_bulletcount","_dam","_fps","_watermark","_lowfood","_lowhealth","_lowdrink","_bleeding","_wounded","_fracture","_unconcious","_bleeding","_wounded","_fracture","_unconcious","_woundedon","_fractureon","_unconciouson","_diseaseon","_currentactions","_currentactionson","_koilcombat","_koilcombaton","_battery","_karma","_progfood","_progwater","_proghealth","_progfps","_progstamina","_progmags","_progammo","_progselect","_progbattery","_progkarma"];

disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};




_progfood = _ui displayctrl 2200;
_progwater = _ui displayctrl 2201;
_proghealth = _ui displayctrl 2202;
_progfps = _ui displayctrl 2203;
_progstamina = _ui displayctrl 2204;
_progmags = _ui displayctrl 2205;
_progammo = _ui displayctrl 2206;
_progselect = _ui displayctrl 2207;
_progbattery = _ui displayctrl 2208;
_progkarma = _ui displayctrl 2209;





_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_money = _ui displayCtrl 23520;
_ammo = _ui displayCtrl 23525;
_select = _ui displayCtrl 23535;
_bullet = _ui displayCtrl 23530;
_fps = _ui displayCtrl 23495;
_watermark = _ui displayCtrl 23550;
_lowhealth = _ui displayCtrl 23555;
_lowfood = _ui displayCtrl 23560;
_lowdrink = _ui displayCtrl 23565;
_bleeding = _ui displayCtrl 23570;
_wounded = _ui displayCtrl 23575;
_fracture = _ui displayCtrl 23580;
_unconcious = _ui displayCtrl 23585;
_disease = _ui displayCtrl 23590;

_battery = _ui displayCtrl 23600;    
_karma = _ui displayCtrl 23605; 

_dam = damage player;
_dam = round(_dam * 100);
_dam = round(100 - _dam);
_cash = getFatigue player;
_cash = round(_cash * 100);

_ammocount = (player ammo (currentWeapon player));
_amountmag = {_x == (currentmagazine player)} count magazines player;
_gunmode = currentWeaponMode player;





_cash = 100 - _cash;








//Update Health

_health ctrlSetText format["%1", format["%1",_dam]];



//Update food

_food ctrlSetText format["%1", life_hunger];

_water ctrlSetText format["%1", life_thirst];


_fps ctrlSetText format["%1", round diag_fps];					




_money ctrlSetText format["%1", format["%1",_cash]];


_ammo ctrlSetText format["%1", format["%1",_amountmag]];


_bullet ctrlSetText format["%1", format["%1",_ammocount]];

_select ctrlSetText format["%1", format["%1",_gunmode]];
                  
_battery ctrlSetText format["%1", life_battery];                   
                    
_karma ctrlSetText format["%1", life_karma];                   



_bbattery = life_battery / 100;
_bhealth = _dam / 100;
_bfood = life_hunger / 100;
_bdrink = life_thirst / 100;
_bcash = _cash / 100;
_bstamina = _cash / 100;
_bfps = round diag_fps;
_bfps = _bfps / 100;
_bfps = _bfps + 0.4;
_bamountmag = _amountmag / 100;
_bamountmag = _bamountmag * 3;




_ammocount = (player ammo (currentWeapon player)); 
_magazineClass = currentMagazine player;  
_maxammo = getNumber(configFile >> "CfgMagazines" >> _magazineClass >> "count"); 
_fuck = 0;


if(_ammocount > 0) then {
	_fuck = _ammocount / _maxammo; 
};





if(_bbattery > 1) then {
	_bbattery = 1;
};

if(_bfps > 1) then {
	_bfps = 1;
};



_progfood progressSetPosition _bfood;
_progwater progressSetPosition _bdrink;
_proghealth progressSetPosition _bhealth;
_progfps progressSetPosition _bfps;
_progstamina progressSetPosition _bstamina;
_progmags progressSetPosition _bamountmag;
_progammo progressSetPosition _fuck;
_progselect progressSetPosition 1;
_progbattery progressSetPosition _bbattery;
_progkarma progressSetPosition 1;