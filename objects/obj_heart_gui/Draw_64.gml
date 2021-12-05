/// @description draw heart GUI
UI_MARGIN = 56;
UI_HEART_SEPARATION = 56;
TIM_MAX_HEALTH = 3;
tim_health = global.tim_health;
tim_health_fraction = frac(tim_health);
tim_health -= tim_health_fraction;

if(!global.sequence_playing){
	for(var index = 1; index <= TIM_MAX_HEALTH; index++) {
		sprite_to_draw = (index > tim_health);
		if(index == tim_health + 1) {
			sprite_to_draw += (tim_health_fraction > 0);
			sprite_to_draw += (tim_health_fraction > .5);
		}	
		draw_sprite(spr_heart, sprite_to_draw, UI_MARGIN + ((index - 1) * UI_HEART_SEPARATION), UI_MARGIN);
	}
}