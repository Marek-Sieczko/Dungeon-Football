/// @description Draw black box to screen

// Black box fade in animation
if (can_fade_in) {
	
	can_draw_blackbox = true;
	
	blackbox_alpha = ease_out_sine(fade_animation_time, 0, 0.6, fade_animation_duration);
	fade_animation_time++;

	if (fade_animation_time == fade_animation_duration) {
		
		blackbox_alpha = 0.6;
		fade_animation_time = 0;
		can_fade_in = false;
	}
}

// Draw black box to the screen
if (can_draw_blackbox) {
	
	draw_sprite_ext(s_BlackBox, 0, 0, 0, blackbox_xscale, blackbox_yscale, 0, c_white, blackbox_alpha);
}
