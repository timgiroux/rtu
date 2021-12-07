// ouch!
if(!invincible) {
	invincible = true;
	global.tim_health -= .5;
	
	//fixes glitch losing jumps on ouch
	if(sprite_index == spr_tim_jump) {
		jumps = global.jumpsmax;
	}
	
	if(global.tim_health == 0) {
		TransitionStart(rm_lose, seq_fade_out, seq_fade_in);
	}
	
	sprite_index = spr_tim_pain;
	alarm[2] = 60;
	audio_play_sound(snd_tim_ranch,0,false);
}