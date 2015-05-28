/*
punch system copy pasted by koil out of his brain cuz he copy paste everything and he a cunt m8 - Edited my Mason Fuckboi Sky
*/

if(life_action_inuse) exitWith {};
if (vehicle player != player) exitwith { };
life_action_inUse = true;
_rozlewissucks = round (random 4);


sleep 0.1;
switch (true) do
{
	case (_rozlewissucks == 0): { 
		[[player,"CL3_anim_Punch1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		sleep 0.3;
		if(!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 5 ) then
		{
			cursorTarget setDamage (damage cursorTarget) + .02;
			[[cursorTarget,"CL3_anim_Receive1a"],"life_fnc_animSync",true,false] spawn life_fnc_MP;

			[[player,"punch1"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		};
		waitUntil{animationState player != "CL3_anim_Punch1";};
	};
	case (_rozlewissucks == 1): { 
		[[player,"CL3_anim_Punch2"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		sleep 0.3;
		if(!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 5 ) then
		{
			cursorTarget setDamage (damage cursorTarget) + .07;
			[[cursorTarget,"CL3_anim_Receive2a"],"life_fnc_animSync",true,false] spawn life_fnc_MP;

			[[player,"punch2"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		};
		waitUntil{animationState player != "CL3_anim_Punch2";};
	};
	case (_rozlewissucks == 2): { 
		[[player,"CL3_anim_Punch2"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		sleep 0.3;
		if(!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 5 ) then
		{
			[[cursorTarget,"CL3_anim_Receive3a"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			cursorTarget setDamage (damage cursorTarget) + .05;
			[[player,"punch2"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		};
		waitUntil{animationState player != "CL3_anim_Punch2";};
	};
	case (_rozlewissucks == 3): { 
		[[player,"CL3_anim_Punch3"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		sleep 0.3;
		if(!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 5 ) then
		{
			[[cursorTarget,"CL3_anim_Receive1a"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			cursorTarget setDamage (damage cursorTarget) + .04;
			[[player,"punch3"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		};
		waitUntil{animationState player != "CL3_anim_Punch3";};
	};
	case (_rozlewissucks == 4): { 
		[[player,"CL3_anim_Punch4"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		sleep 0.3;
		if(!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 5 ) then
		{
					[[cursorTarget,"CL3_anim_Receive2a"],"life_fnc_animSync",true,false] spawn life_fnc_MP;

			cursorTarget setDamage (damage cursorTarget) + .04;
			[[player,"punch4"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		};
		waitUntil{animationState player != "CL3_anim_Punch4";};
	};
	default { 
		player switchMove "CL3_anim_Punch4";
		[[player,"CL3_anim_Punch4"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		sleep 0.3;
		if(!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 5 ) then
		{
					[[cursorTarget,"CL3_anim_Receive3a"],"life_fnc_animSync",true,false] spawn life_fnc_MP;

			cursorTarget setDamage (damage cursorTarget) + .04;
			[[player,"punch4"],"A3L_Fnc_NearestSound",false,false,false] call BIS_fnc_MP;
		};
		waitUntil{animationState player != "CL3_anim_Punch4";};
	};
};
sleep 3.5;

life_action_inuse = false;


