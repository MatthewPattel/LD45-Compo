/// @description PStateMachine()

switch(state) {
	case PSTATE.FREE:
		if (!recentAttack) and ((key_attack) or (key_attack_held)) and (aReleased) {
			state = PSTATE.A_SOLO;
			if (key_left) or (key_right) { state = PSTATE.A_SIDE; }
			if (key_jump_held) and (falling) { state = PSTATE.A_JUMP; }
			if (key_down) { state = PSTATE.A_DOWN; }
			recentAttack = true;
			aReleased = false;
			alarm[0] = room_speed;
		}
		if (!recentSpecial) and ((key_special) or (key_special_held)) and (sReleased) {
			state = PSTATE.S_SOLO;
			if (key_left) or (key_right) { state = PSTATE.S_SIDE; }
			if (key_jump_held) and (falling) { state = PSTATE.S_JUMP; }
			if (key_down) { state = PSTATE.S_DOWN; }
			recentSpecial = true;
			sReleased = false;
			alarm[2] = room_speed;
		}
	break;
	case PSTATE.HIT:
		
	break;
	case PSTATE.DEAD:
		
	break;
}