// declare variables
var x_direction = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump_press = keyboard_check_pressed(vk_space);
var jump_held = keyboard_check(vk_space);
var on_ground = place_meeting(x, y + 1, obj_collision);
var jump_height = -10;


if(place_meeting(x, y + 1, obj_ranchpool)) {
	// ouch!
	if(!invincible) {
		invincible = true;
		global.tim_health -= .5;
	
		//fixes glitch losing jumps on ouch
		if(sprite_index == spr_tim_jump) {
			jumps = global.jumpsmax;
		}
	
		if(global.tim_health == 0) {
			show_debug_message("Oh dear, you\'re dead!");
			room_goto(rm_lose);
		}
	
		sprite_index = spr_tim_pain;
		alarm[2] = 60;
		audio_play_sound(snd_tim_ranch,0,false);
	}
}

if(can_move) {

	if (x_direction != 0) image_xscale = x_direction * -1;
	
	x_spd = x_direction * spd;
	y_spd += grav;

	if (invincible) {
		sprite_index = spr_tim_pain;
	}
	if (on_ground) {
		jumps = global.jumpsmax;
	
		if(!invincible) {
			if (x_direction != 0) {
				sprite_index = spr_tim_run;
			} 
			else {
				sprite_index = spr_tim;
		    }
		}

	} else if (!invincible) {
		sprite_index = spr_tim_jump;
	}
	
	if (jump_press && jumps > 0 )
		// && ((sprite_index != spr_tim_pain) || on_ground) )
		{
		if(global.jumpsmax == 2 && jumps == 1) {
			instance_create_layer(x, y - 1, "Instances", obj_ranch_squirt);
		}
		jumps--;
		y_spd = jump_height;
		audio_play_sound(snd_tim_jump,0,false);
	}

    // variable jump height
	if (y_spd < 0) && (!jump_held) {
		y_spd = max(y_spd, jump_height/4)
	}

	if (place_meeting(x + x_spd, y, obj_collision)) { 
	
		while (!place_meeting(x + sign(x_spd), y, obj_collision)) {
			x += sign(x_spd);
		}
	
		x_spd = 0; 
	}

	x += x_spd;


	if (place_meeting(x, y + y_spd, obj_collision)) { 
	
		while (!place_meeting(x, y + sign(y_spd), obj_collision)) {
			y += sign(y_spd);
		}
	
		y_spd = 0; 
	}

	y += y_spd;
	
}
else {
	// skip sequences
	if(jump_press && global.sequence_playing) {
		alarm[0] = 1;
		alarm[1] = -1;
		alarm[3] = -1;
		alarm[4] = -1;
		
		layer_sequence_destroy(global.current_sequence);
		audio_stop_sound(snd_sad);
		
		global.sequence_playing = false;
		
		
		if(jarring_joe) {
			global.has_joe = true;
			instance_create_layer(id.x, id.y, "Instances", obj_joe_jar);
		}
	}
}