/// @description start new room

if(instance_exists(obj_spawn_info)) {

	targetSpawn = obj_spawn_info.targetSpawn;
	
	instance_destroy(obj_spawn_info);

	if (instance_exists(targetSpawn)) {
		x = targetSpawn.x;
		y = targetSpawn.y + 16;
	}
}
