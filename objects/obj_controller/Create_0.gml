/// @description Creation variables

enum PSTATE {
	FREE,
	ATTACK,
	INTERACT,
	HIT,
	DEAD
}

enum ESTATE {
	FREE,
	CHASE,
	ATTACK,
	HIT,
	DEAD
}

global.coins = 0;
global.checkpoint = false; 
global.checkpointX = noone; 
global.checkpointY = noone;

activeColors = ds_map_create();

activeColors[? "blue"] = false;
activeColors[? "purple"] = false;
activeColors[? "red"] = false;
activeColors[? "orange"] = false;
activeColors[? "yellow"] = false;
activeColors[? "green"] = false;
