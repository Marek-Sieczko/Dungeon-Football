/// @description Draw text

//Draw the title text
draw_sprite_ext(s_CampaignText, 0, tween_x, tween_y, 1, 1, 0, c_white, tween_alpha);

//Animation on screen startup
if (can_enter) {
	
	tween_alpha = ease_linear(animation_time_1, 0, 1, animation_duration_1);
	animation_time_1++;
	
	if (animation_time_1 >= animation_duration_1) {
		
		animation_1_time = 0;
		can_enter = false;
	}
}

//Animation on screen cleanup
if (can_remove) {
	
	tween_alpha = ease_linear(animation_time_2, 0, 1, animation_duration_2);
	animation_time_2++;
	
	if (animation_time_2 >= animation_duration_2) {
		
		animation_2_time = 0;
		can_remove = false;
	}
}