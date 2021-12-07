draw_set_halign(fa_center);
draw_set_font(fnt_credits);
draw_set_color(c_white);
draw_text(x, y, text);

if(y < 384) {
	global.credits_halfway = true;
}