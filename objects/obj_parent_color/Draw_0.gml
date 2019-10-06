/// @description Draw sprite

if (color_active) {
	draw_self();
} else {
	shader_set(sha_white);
	draw_self();
	shader_reset();
}
