/// @description Actions

if (can_move) {
	
	y = ease_inout_sine(can_move_animation_timer, original_y, -sprite_height, can_move_animation_total_time);
	can_move_animation_timer++;
	
	if (can_move_animation_timer >= can_move_animation_total_time) {
		
		can_move_animation_timer = 0;
		can_move = false;
	}
}
