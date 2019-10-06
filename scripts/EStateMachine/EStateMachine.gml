/// @description EStateMachine()

if (instance_exists(obj_player)) {
	var diffX = obj_player.x - x;
	var diffY = obj_player.y - y;
	if (abs(diffX) <= attackDetector) and (diffY <= attackDistance) {
		state = ESTATE.CHASE;
		if (abs(diffX)<= attackDistance) {
			state = ESTATE.ATTACK;	
		}
	} else {
		state = ESTATE.FREE;
	}
} else {
	state = ESTATE.FREE;
}



switch (state) {
	case ESTATE.FREE:
		hsp = dir * movespeed;
	break;
	case ESTATE.CHASE:
		dir = (diffX < 0) ? -1:1;
		hsp = dir * movespeed;
	break;
	case ESTATE.ATTACK:
		hsp = 0;
		if (alarm[0] == -1) {
			alarm[0] = room_speed/2;
		}
	break;
	case ESTATE.HIT:
		hsp = dir * movespeed;
	break;
	case ESTATE.DEAD:
		instance_destroy();
	break;
}
vsp += grav;

if (life <= 0) {
    state = ESTATE.DEAD;
}
