if(!global.shard_self_get) {
	instance_create_layer(544, 512, "Instances", obj_shard_self);
}

if(inst_BCDE038_1_1 > 3000) {
	audio_stop_all();
	audio_play_sound(snd_ambiance,0,true);
}