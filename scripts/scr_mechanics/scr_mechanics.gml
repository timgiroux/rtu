function check_shards(){
	return global.shard_self_get && global.shard_son_get && global.shard_wife_get;
}

function play_ranchening() {
	instance_create_layer(0, 0, "Instances", obj_ranchening_video);
}