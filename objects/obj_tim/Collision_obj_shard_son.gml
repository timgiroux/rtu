// freeze tim
x_spd = 0;
y_spd = 0;
can_move = false;

// update shard "inventory"
global.shard_son_get = true;

// queue son sound
sound_queue = snd_daniel;
alarm[3] = 50; // alarm plays sound when it goes off

// create son sequence
global.sequence_playing = true;
layer_sequence_create("Instances", id.x - 320, id.y - 256, seq_son);
alarm[0] = SHARD_COUNTDOWN; // alarm frees tims movement when it goes off

// check if tim has all 3 shards
if(check_shards()) {
	alarm[4] = RANCHENING_COUNTDOWN;
}