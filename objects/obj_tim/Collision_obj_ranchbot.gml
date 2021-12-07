// ouch!
if(!invincible) {
	invincible = true;
	global.tim_health -= .5;
	
	//fixes glitch losing jumps on ouch
	if(!place_meeting(x, y + 1, obj_collision)) {
		jumps++;
	}
	
	if(global.tim_health == 0) {
		show_debug_message("Oh dear, you\'re dead!");
		room_goto(rm_lose);
	}
	
	sprite_index = spr_tim_pain;
	alarm[2] = 60;
	audio_play_sound(snd_tim_ranch,0,false);
}