/// @description Draw GUI

var percentageHP;

percentageHP = (128/100) * obj_player.hp;

draw_sprite(spr_life_overlay, 0, 10, 10);
draw_sprite_part(spr_life, 0, 0, 0, percentageHP, 24, 10, 10);
