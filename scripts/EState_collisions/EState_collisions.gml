/// @description EState_collisions();

///CHOQUE HORIZONTAL
if (place_meeting(x + hsp, y, obj_solid)) {
    while(!place_meeting(x + sign(hsp), y, obj_solid)) {
        x += sign(hsp);
    }
    hsp = 0;
    dir *= -1;
}

///CHOQUE VERTICAL
if (place_meeting(x, y + vsp, obj_solid)) {
    while(!place_meeting(x, y + sign(vsp), obj_solid)) {
        y += sign(vsp);
    }
    vsp = 0;
    if ((fearofheights) and !(place_meeting(x + (sprite_width/2)+8*dir,
                        y + (sprite_height/2)+1, obj_solid))) {
        dir *= -1;
    }
}

///CHOQUE CON JUGADOR
if (place_meeting(x, y, obj_player)) {
	
	/*
    if (obj_player.y < y-16) {
        with (obj_player) vsp = -jumpspeed;
    } else {
        movespeed = movespeed_ataque;
        sprite_index = spriteIndex_ataque;
        image_speed = imageSpeed_ataque;
    }
	*/
}

image_xscale = dir;
