/// @description Explotar

if (state = ESTATE.ATTACK) {
	var explosion = instance_create_layer(x, y, "Instances", obj_enemy_explosion);
	explosion.damage = damage;
	explosion.maxDistance = attackDistance;
	instance_destroy();
}
