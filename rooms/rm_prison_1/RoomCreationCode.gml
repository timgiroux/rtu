audio_stop_all();
audio_play_sound(snd_ambiance, false, true);

if(global.jumpsmax != 2) {
	instance_create_layer(960, 986, "Instances", obj_dbl_jump_pwrup);
}

if(!global.has_joe) {
	instance_create_layer(1312, 992, "Instances", obj_joe);
}

if(!global.shard_son_get) {
	instance_create_layer(1504, 544, "Instances", obj_shard_son);
}
