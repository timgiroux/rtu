if(keyboard_check_pressed(vk_space)) { 
	skip = true;
}

if(global.diary_complete) {
	audio_stop_all();
}