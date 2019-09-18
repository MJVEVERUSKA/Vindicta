#include "..\OOP_Light\OOP_Light.h"
#include "..\MessageReceiver\MessageReceiver.hpp"

// Class: Location
/*
Method: spawn
Despawns location

Threading: should be called through postMethod (see <MessageReceiverEx>)

Returns: nil
*/

params [P_THISOBJECT];

OOP_INFO_0("DESPAWN");

ASSERT_THREAD(_thisObject);

T_PRVAR(spawned);
if (!_spawned) exitWith {
	OOP_ERROR_0("Already despawned");
	DUMP_CALLSTACK;
};

// Reset spawned flag
T_SETV("spawned", false);

//despawn civilians
T_GETV("cpModule") call CivPresence_fnc_despawn; 

// Reset counters
private _stAll = GET_VAR(_thisObject, "spawnPosTypes");
{
	_x set [LOCATION_SPT_ID_COUNTER, 0];
} forEach _stAll;

CALLM(gGameMode, "locationDespawned", [_thisObject]);
