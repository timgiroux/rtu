// ouch!
if(!invincible) {
	invincible = true;
	global.tim_health -= .5;
	
	if(global.tim_health == 0) {
		show_debug_message("Oh dear, you\'re dead!");
	}
	
	sprite_index = spr_tim_pain;
	alarm[2] = 60;
}