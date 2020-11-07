/// @description Animation

if (can_fade) {//Animation to fade the sprite out and destroy
	
	image_alpha = ease_linear(can_fade_animation_time_1, 1, -1, 60);
	can_fade_animation_time_1++;
	
	if (can_fade_animation_time_1 >= 60) {
		
		can_fade_animation_time_1 = 0;
		can_fade = false;
		
		instance_destroy();
	}
}