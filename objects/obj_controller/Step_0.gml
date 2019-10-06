/// @description Basic buttons

if keyboard_check_released(vk_escape) { game_end(); }

if keyboard_check_released(ord("R")) { game_restart(); }

if keyboard_check_released(ord("O")) { obj_player.hp+= 10; }

if keyboard_check_released(ord("I")) { obj_player.hp-= 10; }

if keyboard_check_released(ord("S")) { global.coins += 1}

if (obj_player.hp >= 100) { obj_player.hp = 100; }
if (obj_player.hp <= 0) { obj_player.hp = 0; }
