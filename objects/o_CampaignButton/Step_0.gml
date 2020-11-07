/// @description Actions

//Animation when screen starts
if (creation_animation) {
	
	tween_y = ease_out_sine(animation_1_timer, current_y_position, 50, animation_1_time);
	tween_alpha = ease_out_sine(animation_1_timer, 0, 1, animation_1_time);
	animation_1_timer++;
	
	if (animation_1_timer >= animation_1_time) {
		
		creation_animation = false;
		animation_1_timer = 0;
	}
}

//Animation when clicked
if (selected_animation_1) {
	
	tween_xscale = ease_linear(animation_2_timer, 1, 0.1, animation_2_time);
	tween_yscale = ease_linear(animation_2_timer, 1, 0.1, animation_2_time);
	animation_2_timer++;
	
	if (animation_2_timer >= animation_2_time) {
		
		selected_animation_1 = false;
		selected_animation_2 = true;
		animation_2_timer = 0;
	}
}
if (selected_animation_2) {
	
	tween_xscale = ease_linear(animation_3_timer, 1.1, -0.1, animation_3_time);
	tween_yscale = ease_linear(animation_3_timer, 1.1, -0.1, animation_3_time);
	animation_3_timer++;
	
	if (animation_3_timer >= animation_3_time) {
		
		selected_animation_2 = false;
		animation_2_timer = 0;
	}
}
//Animation when removed
if !(delay) {
	if (can_remove) {
	
		tween_alpha = ease_linear(animation_4_timer, 1, -1, animation_4_time);
		animation_4_timer++;
	
		if (animation_4_timer >= animation_4_time) {
		
			o_MainScreenController.can_create_campaign_screen = true;
		
			can_remove = false;
			animation_4_timer = 0;
			instance_destroy();
		}
	}
}
else { 
	
	alarm[1] = 20; //Set animation to delay
	can_remove = false;
	delay = false;
}
