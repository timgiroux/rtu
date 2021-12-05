/// @description create tim
show_debug_message("creating tim");

global.sequence_playing = false;

// constant timer countdowns
RANCHENING_COUNTDOWN = 750;
SHARD_COUNTDOWN = 725;

spd = 4;
x_spd = 0;
y_spd = 0;
grav = 0.5;
jumps = 0;

// cannot move while memory sequence is playing
can_move = true;

// invincibility frames
invincible = false;

// sound queue for shard sequences
sound_queue = noone;

if(global.has_joe) {
	instance_create_layer(id.x, id.y, "Instances", obj_joe_jar);
}

