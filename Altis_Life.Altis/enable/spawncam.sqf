private [ "_camera","_camDistance" ];
_camDistance = 40;
waitUntil { alive player };
showCinemaBorder false;
camUseNVG false;
player allowDamage false;

_camera = "camera" camCreate [(position player select 0)-2, position player select 1,(position player select 2)+_camDistance];
_camera cameraEffect ["internal","back"];

_camera camSetFOV 2.000;
_camera camCommit 0;

waitUntil{!(isNil "BIS_fnc_init")};

_camera camSetTarget vehicle player;
_camera camSetRelPos [0,0,2];
_camera camCommit 8;

waitUntil {camCommitted _camera};
 
_camera cameraEffect ["terminate","back"];
camDestroy _camera;
player allowDamage true;
sleep 0;

(uinamespace getvariable "BIS_AAN") closedisplay 1;