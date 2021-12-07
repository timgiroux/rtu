audio_stop_all();
audio_play_sound(snd_wind,0,true);

if(!global.has_joe || !global.shard_self_get || !global.shard_son_get || !global.shard_wife_get) {
	instance_create_layer(960, 1072, "Instances", obj_sign);
	instance_create_layer(1024, 1056, "Instances", obj_door_block);
	instance_create_layer(992, 1024, "collisions", obj_collision);
	instance_create_layer(992, 1056, "collisions", obj_collision);
}