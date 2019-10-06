/// @description commonGenerator(spritespd, color_needed)
/// @param spritespd
/// @param color_needed

var spritespd = argument0;

switch(spritespd) {
	case "none":
		image_speed = 0;
	break;
	case "low":
		image_speed = 0.5;
	break;
	case "normal":
		image_speed = 1.2;
	break;
	case "fast":
		image_speed = 1.7;
	break;
}

color_needed = argument1;
color_active = false;
