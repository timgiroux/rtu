if(global.shard_son_get && global.shard_wife_get) {
	global.shard_self_get = true;

	// freeze tim
	x_spd = 0;
	y_spd = 0;
	can_move = false;

	// update shard "inventory"
	// queue sad sound
	audio_stop_sound(snd_ambiance);
	sound_queue = snd_aj_final;
	alarm[3] = 300; // alarm plays sound when it goes off

	// create self sequence
	global.sequence_playing = true;
	layer_sequence_create("Instances", id.x - 320, id.y - 256, seq_self);
	alarm[0] = 50+60*30; // alarm frees tims movement when it goes off


	alarm[4] = 500;
}
