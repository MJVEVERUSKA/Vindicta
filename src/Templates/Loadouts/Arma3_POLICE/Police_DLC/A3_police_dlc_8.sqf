comment "Exported from Arsenal by MatrikSky";

removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

/*Helmet*/
_RandomHeadgear = selectRandom [ "H_MilCap_blue", "H_Cap_police", "H_Cap_police"];
this addHeadgear _RandomHeadgear;
/*Uniform*/
_RandomUniform = selectRandom ["U_B_GEN_Commander_F", "U_B_GEN_Soldier_F", "U_B_GEN_Soldier_F", "U_B_GEN_Soldier_F"];
this forceAddUniform _RandomUniform;
/*Vest*/
_RandomVest = selectRandom ["V_TacVest_blk_POLICE", "V_TacVest_blk_POLICE", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_Rangemaster_belt", "V_BandollierB_blk"];
this addVest _RandomVest;
/*Backpack*/

/*Weapon*/
this addWeapon "hgun_Pistol_01_F";
/*WeaponItem*/
this addHandgunItem "10Rnd_9x21_Mag";

/*Items*/
this addItemToUniform "FirstAidKit";
for "_i" from 1 to 4 do {this addItemToVest "10Rnd_9x21_Mag";};
this addItemToUniform "ACE_Chemlight_HiBlue";
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};

/*Items*/
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

private _voice = [
	"male01gre", 
	"male02gre", 
	"male03gre", 
	"male04gre", 
	"male05gre"
];

[this,"Default",selectRandom _voice] call BIS_fnc_setIdentity;