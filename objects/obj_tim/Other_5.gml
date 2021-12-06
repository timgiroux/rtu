/// @description spawn tim in the correct spot

if(!instance_exists(obj_spawn_info)) {
	instance_create_depth(0, 0, 0, obj_spawn_info);
}


obj_spawn_info.targetSpawn = targetSpawn;
