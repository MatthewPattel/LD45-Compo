/// @description PState_move()

var move = key_right - key_left;

if (pow_running) {
	hspd = move * runspeed;
} else {
	hspd = move * movespeed;
}

/*
if (move != 0) and (image_index > 2) {
	hspd = move * runspeed;
}
*/

if (vspd < 10) { vspd += grav; }

//JUMP
if (place_meeting(x, y+1, obj_solid)) {
	jumps = jumpsmax;
} else {
	if (jumps == jumpsmax) { jumps -= 1 }
}

if (key_jump) and (jumps > 0) and (!vblock) {
	jumps -= 1;
	vspd = -jumpspeed;
}

if (vspd < 0) and (!key_jump_held) { vspd = max(vspd, -jumpspeed/2); }

//var hspd_final = hspd + hspd_carry;
//hspd_carry = 0;

//HORIZONTAL COLLISION
if (place_meeting(x+hspd, y, obj_solid)) {
	while(!place_meeting(x+sign(hspd), y, obj_solid)) {
		x += sign(hspd);
	}
	hspd = 0;
}
if (hblock) { hspd = 0; }
x += hspd;

//VERTICAL COLLISION
if (place_meeting(x, y+vspd, obj_solid)) {
	while(!place_meeting(x, y+sign(vspd), obj_solid)) {
		y += sign(vspd);
	}
	vspd = 0;
}
if (vblock) { vspd = 0; }
y += vspd;

if (hspd != 0) {
	image_xscale = sign(hspd);
	if (sprite_index != spriteRun) { if (state = PSTATE.FREE) { image_index = 2; } }
	if (state = PSTATE.FREE) { sprite_index = spriteRun; }
} else {
	if (state = PSTATE.FREE) { sprite_index = spriteIdle; }
}

if (y != yprevious) { falling = true; } else { falling = false; }

if (falling = true) {
	if (sprite_index != spriteRun) { if (state = PSTATE.FREE) { image_index = 2; } }
	if (key_jump_held) {
		if (state = PSTATE.FREE) {
			if (yprevious > y) { sprite_index = spriteJump; } else { sprite_index = spriteFall; }
		}
	} else {
		if (state = PSTATE.FREE) {
			if (yprevious > y) { sprite_index = spriteJump; } else { sprite_index = spriteFall; }
		}
	}
}