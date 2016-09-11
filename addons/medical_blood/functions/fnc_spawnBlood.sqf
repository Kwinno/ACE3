/*
 * Author: Glowbal
 * Spawn a blood drop
 *
 * Arguments:
 * 0: unit <OBJECT>
 * 1: Position <ARRAY>
 * 2: Direction <NUMBER>
 *
 * Return Value:
 * Created blood drop <OBJECT>
 *
 * Example:
 * ["ACE_Blooddrop_2", getPos player] call ace_medical_blood_fnc_spawnBlood
 *
 * Public: No
 */

#include "script_component.hpp"

params ["_type", "_pos"];

private _p3dFile = getText (configFile >> "CfgVehicles" >> _type >> "model");
if (_p3dFile == "") exitWith {};
// createSimpleObject expects a path without the leading slash
if ((_p3dFile select [0,1]) == "\") then {_p3dFile = _p3dFile select [1];};

private _object = createSimpleObject [_p3dFile, [0,0,0]];
_object setDir (random 360);
_object setPos _pos;

_object;
