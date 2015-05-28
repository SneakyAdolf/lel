if ((life_inv_ziptie != 0) && ((cursortarget distance _x) < 5)) then {
 player addaction["Restrain the nigga", { 
  cursortarget setVariable["restrainedZIP",false,true];
  life_inv_ziptie = life_inv_ziptie - 1;
 }];
};