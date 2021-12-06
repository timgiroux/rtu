/// @description move tim to new room
other.targetSpawn = targetSpawn;
show_debug_message(obj_tim.targetSpawn);

room_goto(targetRoom);

//TransitionStart(targetRoom, seq_fade_out, seq_fade_in);