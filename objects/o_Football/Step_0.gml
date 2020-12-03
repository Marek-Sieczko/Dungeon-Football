///@description Ball Physics

if (can_activate) {
	
	can_activate_timer++;
	
	if (can_activate_timer >= 4) {
		
		var vx = camera_get_view_x(view_camera[0]);
		var vy = camera_get_view_y(view_camera[0]);
		var vw = camera_get_view_width(view_camera[0]);
		var vh = camera_get_view_height(view_camera[0]);
		
		instance_activate_region(vx-500, vy-500, vw+1000, vh+1000, true);
		
		
		can_activate_timer = 0;
	}
}

// Ball intro
if (ball_intro_active) {
	
	image_alpha += 0.02;

	
	if (image_alpha >= 1) {

		//o_GameController.can_activate_free_cam = true;
		camera_set_view_target(view_camera[0], o_BallParent);
		ball_intro_active = false;
	}
}

// Calcuate angle based on ball position and tap position
angle_between = point_direction(x,y,mouse_x,mouse_y);

// Rotate the polygon
if phy_speed_x > 0 || phy_speed_y > 0
    {
    phy_rotation += (sqrt(sqr(phy_speed_x) + sqr(phy_speed_y)) /10) * delta;
    }

// Base the image angle on physics rotation
dir = -phy_rotation;

// Build power level whilst tap is held
if mouse_check_button(mb_any) {
	
	power_timer += 1;
	
	if (power_timer == power_interval) { // Increase power level
		
		if (power_level < 10) {
			
			var increase_power_sound = audio_play_sound(snd_PowerBarIncrease, 1, false);
			audio_sound_pitch(increase_power_sound, power_bar_pitch_modifier);
			
			power_bar_pitch_modifier += 0.1 * delta;
			ball_hit_pitch_modifier -= 0.03 * delta;
			ball_hit_volume += 0.05 * delta;
			power_level += 1 * delta;
		}
		
		// Set node alphas to 1 based on increasing power level
		switch (power_level) {
		    case 2: node_2_image_alpha = 1; break;
			case 3: node_3_image_alpha = 1; break;
			case 4: node_4_image_alpha = 1; break;
			case 5: node_5_image_alpha = 1; break;
			case 6: node_6_image_alpha = 1; break;
			case 7: node_7_image_alpha = 1; break;
			case 8: node_8_image_alpha = 1; break;
			case 9: node_9_image_alpha = 1; break;
			case 10: node_10_image_alpha = 1; break;
		}
		
		if (power_level == 10) {
			
			miss_hit_variance += 0.1
			miss_hit_variance = clamp(miss_hit_variance, 0, 5);
		}
		power_timer = 0;
	}
}

// Actions if tap released
if mouse_check_button_released(mb_any) {
	
	can_animate_node_1 = true;
	
	node_2_image_alpha = 0.2;
	node_3_image_alpha = 0.2;
	node_4_image_alpha = 0.2;
	node_5_image_alpha = 0.2;
	node_6_image_alpha = 0.2;
	node_7_image_alpha = 0.2;
	node_8_image_alpha = 0.2;
	node_9_image_alpha = 0.2;
	node_10_image_alpha = 0.2;
	
	hit = true;
	
	power_bar_pitch_modifier = 0.8;
}

// Actions if ball hit
if (hit) {

	// Control sound when hit
	var ball_impact_sound = audio_play_sound(snd_FootballImpact, 1, false);
	audio_sound_pitch(ball_impact_sound, ball_hit_pitch_modifier);
	audio_sound_gain(ball_impact_sound, ball_hit_volume, 0);
	
	// Calculate power and trajectory
	var trajectory = point_direction(mouse_x, mouse_y, x, y);
    
	//Reset current speed before impulse
	phy_speed_x = 0; 
	phy_speed_y = 0;
	
	if power_level == 10 { // Actions for overhit
		
		power_level -= 8; 
		
		var _power = power_level*0.6;
		var angle_variance_1 = irandom_range(-30, -20);
		var angle_variance_2 = irandom_range(20, 30);
		var angle_variance_selector = choose(angle_variance_1, angle_variance_2);
		trajectory = (trajectory + angle_variance_selector);

		physics_apply_impulse(x + (angle_variance_selector), y + (angle_variance_selector), lengthdir_x(_power, trajectory), lengthdir_y(_power, trajectory));
		audio_play_sound(snd_MissHit, 1, false);
	}
	if power_level == 9 { // Actions for perfect hit
		
		power_hit = true;
		power_level += 1;
		flash_alpha = 2;
		
		var _power = power_level*0.6;
		
		physics_apply_impulse(x, y, lengthdir_x(_power,  trajectory), lengthdir_y(_power, trajectory));
	}
	else {
		
		var _power = power_level*0.6;
		physics_apply_impulse(x, y, lengthdir_x(_power,  trajectory), lengthdir_y(_power, trajectory));
	}

	// Reset values
	ball_hit_pitch_modifier = 1;
	ball_hit_volume = 1;
	power_level = 1;
	power_timer = 0;
	
	hit = false;
}

//Control flash
if (flash_alpha > 0) {

	flash_alpha -= 0.04 * delta;
}
else {
	
	if (flash_colour == c_yellow) {
		
		flash_colour = c_white;
	}
}
