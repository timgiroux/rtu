// freeze tim
x_spd = 0;
y_spd = 0;
can_move = false;

// update shard "inventory"
global.shard_wife_get = true;

// queue wife sound
audio_stop_sound(snd_ambiance);
audio_play_sound(snd_sad,0,false);
sound_queue = snd_eva;
alarm[3] = 500; // alarm plays sound when it goes off

// create wife sequence
global.sequence_playing = true;
layer_sequence_create("Instances", id.x - 320, id.y - 256, seq_wife_new);
alarm[0] = SHARD_COUNTDOWN; // alarm frees tim when it goes off

