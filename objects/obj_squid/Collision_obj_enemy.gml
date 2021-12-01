/// @description Insert description here
// You can write your code in this editor
heart_count -= 1;

with(all)
{
	x = xstart;
	y = ystart;
}

if(heart_count = 0)
{
	instance_destroy(id);
	
	if(instance_number(obj_squid) == 0)
	{
		room_goto(rm_game_over);	
	}
}




//dir = point_direction(x, y, other.x, other.y)

//obj_squid.x += lengthdir_x(1, dir);
//obj_squid.y += lengthdir_y(1, dir);