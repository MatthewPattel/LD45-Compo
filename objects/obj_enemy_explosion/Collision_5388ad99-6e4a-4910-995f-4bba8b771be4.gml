/// @description Damage control

var diffX = obj_player.x - x;

if instance_exists(obj_player) and (isexplosion) {
	var dealdamage = (maxDistance/damage) * abs(diffX);
	obj_player.hp -= dealdamage;
	isexplosion = false;
}
