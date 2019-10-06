/// @description Variables

commonGenerator("low", "orange");

///VARIABLES
randomize();

life = 5;
damage = 5;

dir = choose(1, -1);

state = ESTATE.FREE;

movespeed = 3;
jumpspeed = 7;

grav = 0.5;

hsp = 0;
vsp = 0;

attackDistance = 48;
attackDetector = 80;

spriteRun = spr_enemy_stalker;
spriteAttack = spr_enemy_stalker_attack;

sprite_index = spriteRun;

fearofheights = false;
