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
	case PSTATE.A_SOLO:
		PState_aSolo();
	break;
	case PSTATE.A_COMBO:
		PState_aCombo();
	break;
	case PSTATE.A_FINALE:
		PState_aFinale();
	break;
	case PSTATE.A_SIDE:
		PState_aSide();
	break;
	case PSTATE.A_JUMP:
		PState_aJump();
	break;
	case PSTATE.A_DOWN:
		PState_aDown();
	break;
	case PSTATE.S_SOLO:
		PState_sSolo();
	break;
	case PSTATE.S_SIDE:
		PState_sSide();
	break;
	case PSTATE.S_JUMP:
		PState_sJump();
	break;
	case PSTATE.S_DOWN:
		PState_sDown();
	break;
	case PSTATE.HIT:
		
	break;
	case PSTATE.DEAD:
		
	break;
}