// declare variables
var x_direction = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump_press = keyboard_check_pressed(vk_space);
var jump_held = keyboard_check(vk_space);
var on_ground = place_meeting(x, y + 1, obj_collision);
var on_ranch = place_meeting(x, y + 1, obj_ranchpool);
var jump_height = -10;

if(can_move) {

	if (x_direction != 0) image_xscale = x_direction * -1;
	
	x_spd = x_direction * spd;
	y_spd += grav;

	if (on_ground) {
	
		if (x_direction != 0) {
			sprite_index = spr_tim_run;
		} 
		else {
			if(on_ranch) {
				sprite_index = spr_tim_pain;
			} else {
				sprite_index = spr_tim;
			}
	    }

		if (jump_press) {
			y_spd = jump_height;
		}


	} else {
		sprite_index = spr_tim_jump;
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