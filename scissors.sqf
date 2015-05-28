if ((life_inv_scizzors != 0) && ((player distance _x) < 5) && ((cursortarget getVariable["restrained",false]))) then {
 player addaction["Unrestrain the nigga", { 
  cursortarget setVariable["restrainedZIP",false,false];
  life_inv_scizzors = life_inv_scizzors - 1;
 }];
};