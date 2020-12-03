/// @description Actions

decrease_delta_alarm();

// Animation when hovering
if (hover_animation_1) {
	
	x = ease_inout_sine(animation_time_1, current_x_position, -6, 105);
	y = ease_inout_sine(animation_time_1, current_y_position, -14, 120);
	image_angle = ease_inout_sine(animation_time_1, current_angle, -6, 90);
	
	animation_time_1++;
}

// Spawn a particle whilst hovering every 10 frames
particle_timer++;
if (particle_timer == 10) {
	
	global.pe_KeySparkle = part_emitter_create(global.ParticleSystem);
	var xp, yp;
	xp = x;
	yp = y;
	part_emitter_region(global.ParticleSystem, global.pe_KeySparkle, xp-50, xp+50, yp-50, yp+50, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(global.ParticleSystem, global.pe_KeySparkle, global.pt_KeySparkle, 1);
	particle_timer = 0;
}

// Actions on the ball collecting the key
if collision_circle(x, y, 20, o_BallParent, false, true) != noone {
    
	audio_play_sound(snd_CoinCollected, 1, false);
	audio_play_sound(snd_PickupCollision, 1, false);

	// Create new particle
	global.pe_KeyCollect = part_emitter_create(global.ParticleSystem);
	var xp, yp;
	xp = x;
	yp = y;
	part_emitter_region(global.ParticleSystem, global.pe_KeyCollect, xp-50, xp+50, yp-50, yp+50, ps_shape_ellipse, ps_distr_gaussian);
	part_emitter_burst(global.ParticleSystem, global.pe_KeyCollect, global.pt_KeyCollect, 40);

	// Update amount of coins collected in the game controller
	with (o_GameController) {current_coins++; HUD_coin_increase_animation_1 = true; HUD_coin_amount_flash_alpha = 1;}

	// Make the ball flash on pickup collection
	with(o_BallParent) {flash_alpha = 1;}

	instance_destroy();
}



