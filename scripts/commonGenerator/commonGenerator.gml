/// @description commonGenerator(spritespd, color_needed)
/// @param spritespd
/// @param color_needed
/// @param spriteWhite
/// @param spriteColor

var spritespd = argument0;

switch(spritespd) {
	case "none":
		image_speed = 0;
	break;
	case "low":
		image_speed = 0.2;
	break;
	case "normal":
		image_speed = 0.6;
	break;
}


color_needed = argument1;
color_active = false;

spriteWhite = argument2;
spriteColor = argument3;
