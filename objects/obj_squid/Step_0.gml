/// @description Insert description here
// You can write your code in this editor
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);
var onTheGround = place_meeting(x, y + 1, obj_floor);

if (xDirection != 0) image_xscale = xDirection;

xSpeed = xDirection * spd;
ySpeed++;

if (onTheGround) {
	if (xDirection != 0) { sprite_index = spr_walking; } 
	else { sprite_index = spr_player_idle; }

	if (jump) {
		ySpeed = -25;
		audio_play_sound(snd_jump, 1, false);

	}
} else {
	sprite_index = spr_player_jump;
}

if (place_meeting(x + xSpeed, y, obj_floor)) { 
	
	while (!place_meeting(x + sign(xSpeed), y, obj_floor)) {
		x += sign(xSpeed);
	}
	
	xSpeed = 0; 
}

x += xSpeed;


if (place_meeting(x, y + ySpeed, obj_floor)) { 
	
	while (!place_meeting(x, y + sign(ySpeed), obj_floor)) {
		y += sign(ySpeed);
	}
	
	ySpeed = 0; 
}

y += ySpeed;

if(instance_number(obj_enemy) == 0)
{
	room_goto(rm_victory);	
}