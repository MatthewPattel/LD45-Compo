/// @description Variables

commonGenerator("low", "yellow");

///VARIABLES
randomize();

life = 5;
damage = 5;

dir = choose(1, -1);

movespeed_normal = 3;
movespeed_ataque = 0;
movespeed = movespeed_normal;

grav = 0.5;

hsp = 0;
vsp = 0;

jumpspeed = 7;

imageSpeed_normal = 0.2;
imageSpeed_ataque = 0.4;
image_speed = imageSpeed_normal;

spriteIndex_normal = spr_comida;
spriteIndex_ataque = spr_comida_ataque;
sprite_index = spriteIndex_normal;

inicioATK = 35;
finalATK = inicioATK + 2;

fearofheights = false;
