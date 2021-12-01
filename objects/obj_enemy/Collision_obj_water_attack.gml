/// @description Insert description here
// You can write your code in this editor
//instance_destroy(id)
heart_count -= 1;

if(heart_count = 0)
{
	audio_play_sound(snd_explosion, 1, false);
	instance_destroy(id);	
}


