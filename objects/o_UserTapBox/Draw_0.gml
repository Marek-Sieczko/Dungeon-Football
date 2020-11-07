/// @description Draw power bar

angle_between = point_direction(o_BallParent.x,o_BallParent.y,mouse_x,mouse_y);

if mouse_check_button(mb_any) {
	
	if (can_check_position) {
		
		start_x = o_BallParent.x;
		start_y = o_BallParent.y;
		
		can_check_position = false;
	}
	
	distance_travelled++;
	
	power_applied = clamp(power_applied, 0, 80);
	
	draw_sprite_ext(s_PowerBar1, 0, o_BallParent.x, o_BallParent.y, 1, 1, angle_between, c_white, 1);
	//draw_sprite_ext(s_Pointer1, 0, start_x, start_y, 1, 1, angle_between, c_white, 1);
	
	var x_end = lengthdir_x(1, angle_between);
	var y_end = lengthdir_y(1, angle_between);
	
	if (distance_travelled < 40) {
		
		start_x += x_end*power_applied;
		start_y += y_end*power_applied;
		
	}
}

if mouse_check_button_released(mb_any) {
	
	ball_direction = angle_between-180;
	ball_power = distance_travelled;
	with(o_BallParent) {
		
		direction = other.ball_direction;
		power_applied = other.ball_power;
		hit = true;
	}

	ball_direction = 0;
	ball_power = 0;
	
	distance_travelled = 0;
	can_check_position = true;
	
	start_x = o_BallParent.x;
	start_y = o_BallParent.y;
}