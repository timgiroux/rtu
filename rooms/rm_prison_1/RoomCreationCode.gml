audio_stop_all();
audio_play_sound(snd_ambiance, false, true);

if(global.jumpsmax != 2) {
	instance_create_layer(928, 1024, "Instances", obj_dbl_jump_pwrup);
}