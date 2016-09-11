/*
 * Author: Glowbal
 * handle bleeding state (state machine)
 *
 * Arguments:
 * 0: unit <TYPE>
 *
 * Return Value:
 * is Bleeding <BOOL>
 *
 * Example:
 * [UNIT] call ace_medical_blood_fnc_onBleeding
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_unit"];

private _lastTime = _unit getVariable [QGVAR(lastTime), -10];

if (CBA_missionTime - _lastTime >= 8 + random(2)) then {
    _unit setVariable [QGVAR(lastTime), CBA_missionTime];
    
    private _position = getPosATL _unit;
    _position = _position apply {if (random 1 >= 0.5) then {_x -(random(0.2))} else {_x + (random(0.2))}};
    _position set [2, 0];
    ["ACE_Blooddrop_1", _position, getDir _unit] call FUNC(spawnBlood);
};
