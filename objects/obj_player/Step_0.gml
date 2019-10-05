/// @description Movement

key_jump = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
key_jump_held = keyboard_check(ord("W")) or keyboard_check(vk_up);

key_down = keyboard_check(ord("S")) or keyboard_check(vk_down);
key_left = keyboard_check(ord("A")) or keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) or keyboard_check(vk_right);

PState_move();

PStateMachine();

