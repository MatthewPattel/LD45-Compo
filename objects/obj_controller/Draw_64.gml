/// @description Draw Life

var percentageHP;

percentageHP = (128/100) * obj_player.hp;

var sub1 = updateColor("orange") ? 1:0;
draw_sprite_ext(spr_life_overlay, sub1, 10, 10, 2, 2, 0, c_white, 1);

var sub2 = updateColor("red") ? 1:0;
draw_sprite_part_ext(spr_life, sub2, 0, 0, percentageHP, 24, 10, 10, 2, 2, c_white, 1);

draw_set_font(font_coins)
draw_text(10,60, "Score " + string(global.coins))
