[
    // Initial vehicle class name
    "I_APC_tracked_03_cannon_F",

    // This code will be called upon vehicle construction
    {
        params ["_veh"];
[
	_veh,
	["Indep_01",1], 
	["showBags",0.5,"showBags2",0.5,"showCamonetHull",0,"showCamonetTurret",0,"showTools",0.7,"showSLATHull",1,"showSLATTurret",1]
] call BIS_fnc_initVehicle;
    }
]