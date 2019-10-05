/// @description Creation variables

enum PSTATE {
	FREE,
	ATTACK,
	INTERACT,
	HIT,
	DEAD
}

activeColors = ds_map_create();

activeColors[? "blue"] = false;
activeColors[? "purple"] = false;
activeColors[? "red"] = false;
activeColors[? "orange"] = false;
activeColors[? "yellow"] = false;
activeColors[? "green"] = false;