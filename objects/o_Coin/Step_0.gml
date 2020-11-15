/// @description Actions

//Animation when hovering
if (hover_animation_1) {
	
	x = ease_inout_sine(animation_time_1, current_x_position, -6, 105);
	y = ease_inout_sine(animation_time_1, current_y_position, -14, 120);
	
	animation_time_1++;
}

//Create a particle every 10 frames
particle_timer++;

if (particle_timer mod 10 == 0) {
	
	particle_1 = instance_create_layer(x, y, "Wall_Layer", o_key_hovering_sparkle);
}

if collision_circle(x, y, 20, o_BallParent, false, true) != noone
{
    audio_play_sound(snd_CoinCollected, 1, false);

	instance_create_layer(x, y, "Wall_Layer", o_key_collect);

	o_GameController.current_coins++;

	fake_light_remove(static_light);
	instance_destroy(particle_1);
	instance_destroy();
}