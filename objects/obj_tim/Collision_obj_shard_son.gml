// freeze tim
x_spd = 0;
y_spd = 0;
can_move = false;

// update shard "inventory"
global.shard_son_get = true;
if (global.tim_health <= 3) {
		global.tim_health++;
	}

// queue son sound
audio_stop_sound(snd_ambiance);
audio_play_sound(snd_sad,0,false);
sound_queue = snd_daniel;
alarm[3] = 500; // alarm plays sound when it goes off

// create son sequence
global.sequence_playing = true;
global.current_sequence = layer_sequence_create("Instances", id.x - 320, id.y - 256, seq_son);
alarm[0] = SHARD_COUNTDOWN; // alarm frees tims movement when it goes off
