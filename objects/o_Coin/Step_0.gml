/// @description Actions

//Animation when hovering
if (hover_animation_1) {
	
	x = ease_inout_sine(animation_time_1, current_x_position, -6, 105);
	y = ease_inout_sine(animation_time_1, current_y_position, -14, 120);
	image_angle = ease_inout_sine(animation_time_1, current_angle, -6, 90);
	
	animation_time_1++;
}

if place_meeting(x, y, o_BallParent) && (can_collide) {

	audio_play_sound(snd_CoinCollected, 1, false);
	instance_create_layer(x, y, "Wall_Layer", o_key_collect);
	
	o_GameController.current_coins++;

	instance_destroy(particle_1);

	has_collided = true;
	can_collide = false;
}


//Animation when collected
if (has_collided) {
	
	y = ease_out_sine(collected_animation_time, y, -10, 30);
	image_alpha = ease_linear(collected_animation_time, 1, -1, 30);
	collected_animation_time++;
	
	if (collected_animation_time >= 30) {
		
		instance_destroy();
		has_collided = false;
	}
}

//Create a particle every 10 frames
particle_timer++;

if (particle_timer mod 10 == 0) {
	
	particle_1 = instance_create_layer(x, y, "Wall_Layer", o_key_hovering_sparkle);
}
