/// @description Actions

//Animation when hovering
if (hover_animation_1) {
	
	x = ease_inout_sine(animation_time_1, current_x_position, -6, 105);
	y = ease_inout_sine(animation_time_1, current_y_position, -14, 120);
	image_angle = ease_inout_sine(animation_time_1, current_angle, -6, 90);
	
	animation_time_1++;
}

////Animation when collected
//if (has_collided) {
	
//	instance_destroy();
////	y = ease_out_sine(collected_animation_time, y, -10, 30);
////	image_alpha = ease_linear(collected_animation_time, 1, -1, 30);
////	collected_animation_time++;
////	show_debug_message("running");
	
////	if (collected_animation_time >= 30) {
		
////		show_debug_message("running");
////		instance_destroy();
////		has_collided = false;
////	}
//}

////particle_timer++;

////if (particle_timer mod 10 == 0) {
	
////	particle_1 = instance_create_layer(x, y, "Wall_Layer", o_key_hovering_sparkle);
////}