/// @description Actions

decrease_delta_alarm();

//Animation when hovering
if (hover_animation_1) {
	
	x = ease_inout_sine(animation_time_1, current_x_position, -6, 105);
	y = ease_inout_sine(animation_time_1, current_y_position, -14, 120);
	image_angle = ease_inout_sine(animation_time_1, current_angle, -6, 90);
	
	animation_time_1++;
}

//Create a particle every 10 frames
particle_timer++;

if (particle_timer mod 10 == 0) {
	
	particle_1 = instance_create_layer(x, y, "Wall_Layer", o_KeyHoveringSparkle);
}


if collision_circle(x, y, 20, o_BallParent, false, true) != noone
{
    audio_play_sound(snd_CoinCollected, 1, false);

	instance_create_layer(x, y, "Wall_Layer", o_KeyCollect);

	switch (o_GameController.current_keys) {
	
		case 0: with(o_GameController) {key_1_collected = true; can_animate_key_1 = true; current_keys++;} break;
		case 1: with(o_GameController) {key_2_collected = true; can_animate_key_3 = true; current_keys++;} break;
		case 2: with(o_GameController) {key_3_collected = true; can_animate_key_5 = true; current_keys++;} break;
	}

	//fake_light_remove(static_light);
	instance_destroy(particle_1);
	instance_destroy();
}