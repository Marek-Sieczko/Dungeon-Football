/// @description Animation

if (can_fade_out) {//Animation to fade the sprite out and destroy
	
	image_alpha = ease_linear(can_fade_animation_time_1, 1, -1, 60);
	can_fade_animation_time_1++;
	
	if (can_fade_animation_time_1 >= 60) {
		
		can_fade_animation_time_1 = 0;
		can_fade_out = false;
		
		instance_destroy();
	}
}

if (can_fade_in) {//Animation to fade the sprite out and destroy
	
	image_alpha = ease_linear(can_fade_animation_time_2, 0, 1, 60);
	can_fade_animation_time_2++;
	
	if (can_fade_animation_time_2 >= 60) {
		
		can_fade_animation_time_2 = 0;
		can_fade_in = false;
		
		//instance_destroy();
	}
}