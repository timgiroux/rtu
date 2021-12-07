if(global.shard_son_get && global.shard_wife_get) {
	layer_sequence_create("Instances", id.x, id.y, seq_self_relic_get);
	instance_destroy(id);
}
