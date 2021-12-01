/// @description Insert description here
// You can write your code in this editor
//spawning the attack

lookingAt = point_direction(x, y, mouse_x, mouse_y);

attackSpawnX = x + lengthdir_x(squid_length, lookingAt + squid_direction);
attackSpawnY = y + lengthdir_y(squid_length, lookingAt + squid_direction);

attack = instance_create_layer(attackSpawnX, attackSpawnY, "Instances", obj_water_attack);
attack.direction = lookingAt;