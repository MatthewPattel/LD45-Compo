//@description changeValue(color)
//@param color

var color = argument0;

var valor = obj_controller.activeColors[? color];

if (valor == false) {
	ds_map_replace(obj_controller.activeColors, color, true);
	valor = true;
} else {
	ds_map_replace(obj_controller.activeColors, color, false);
	valor = false;
}

show_debug_message(string(color));
show_debug_message(string(valor));
