x_spd = 0;
y_spd = 0;

can_move = false;

// alarm to let tim move
alarm[0] = 750;

// alarm to spawn joe
alarm[1] = 750;
layer_sequence_create("Instances", id.x - 320, id.y - 256, seq_joe_jar);

