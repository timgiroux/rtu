/// @description create tim

global.tim_health = 6;
global.shard_self_get = false;
global.shard_son_get = false;
global.shard_wife_get = false;
global.sequence_playing = false;


// constant timer countdowns
RANCHENING_COUNTDOWN = 750;
SHARD_COUNTDOWN = 725;

spd = 4;
x_spd = 0;
y_spd = 0;
grav = 0.5;
jumps = 0;
jumpsmax = 1;

// cannot move while memory sequence is playing
can_move = true;

// invincibility frames
invincible = false;

// sound queue for shard sequences
sound_queue = noone;

