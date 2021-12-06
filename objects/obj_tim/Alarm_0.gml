///@description tim move alarm
can_move = true;
global.sequence_playing = false;

if(!jarring_joe) {
	audio_stop_sound(snd_ambiance);
	audio_play_sound(snd_ambiance,0,true);
}
else {
	jarring_joe = false;
}