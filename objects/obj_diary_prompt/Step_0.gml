if(global.diary_complete && !fading) {
	fading = true;
	TweenFire(id, EaseInQuad, TWEEN_MODE_ONCE, true, 0, 30, "image_alpha", 0, 255);
}