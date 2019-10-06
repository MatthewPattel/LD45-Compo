/// @description EStateMachine()

if (instance_exists(obj_player)) {
	var diffX = obj_player.x - x;
	var diffY = obj_player.y - y;
	if (abs(diffX) <= attackDetector) {
		state = ESTATE.CHASE;
		if (abs(diffX) <= attackDistance) and (abs(diffY) <= attackDistance) {
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
		sprite_index = spriteRun;
		hsp = dir * movespeed;
	break;
	case ESTATE.CHASE:
		sprite_index = spriteRun;
		dir = (diffX < 0) ? -1:1;
		hsp = dir * movespeed;
		if instance_exists(obj_player) {
			if (abs(diffX) <= 2) {
				hsp = 0;
				x = obj_player.x;
			}
		}
	break;
	case ESTATE.ATTACK:
		sprite_index = spriteAttack;
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
