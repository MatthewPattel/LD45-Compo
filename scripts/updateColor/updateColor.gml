//@description updateColor(color)
//@param color

var color = argument0;

var valor = obj_controller.activeColors[? color];

if (valor == false) {
	obj_controller.activeColors[? color] = true;
} else {
	obj_controller.activeColors[? color] = false;
}

show_debug_message(string(color));
show_debug_message(string(valor));
