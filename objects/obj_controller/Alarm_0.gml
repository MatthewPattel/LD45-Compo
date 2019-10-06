/// @description Restart level

if (global.checkpoint) {
	obj_player.hp = 100;
	obj_player.x = global.checkpointX;
	obj_player.y = global.checkpointY;
} else {
	game_restart();
}
