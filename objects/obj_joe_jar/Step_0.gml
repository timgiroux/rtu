move_joe(obj_tim.x, obj_tim.y, 3, 2);

var x_direction = keyboard_check(ord("A")) - keyboard_check(ord("D"));
if (x_direction != 0) {
	image_xscale = x_direction * -1;
	sprite_index = spr_joe_jar_moving;
} else {
	sprite_index = spr_joe_jar;
}