x_spd = 0;
y_spd = 0;

can_move = false;

jarring_joe = true;

// alarm to let tim move
alarm[0] = 750;

// alarm to spawn joe
global.sequence_playing = true;
alarm[1] = 750;
global.current_sequence = layer_sequence_create("Instances", id.x - 320, id.y - 256, seq_joe_jar);

