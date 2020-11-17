///@description Ball Physics

// Calcuate angle based on ball position and tap position
angle_between = point_direction(x,y,mouse_x,mouse_y);

// Rotate the polygon
if phy_speed_x > 0 || phy_speed_y > 0
    {
    phy_rotation += sqrt(sqr(phy_speed_x) + sqr(phy_speed_y)) /10;
    }

// Base the image angle on polygon rotation
dir = -phy_rotation;

// Build power level whilst tap is held
if mouse_check_button(mb_any) {
	
	power_timer++;
	
	if (power_timer == power_interval) { // Increase power level
		
		if (power_level < 10) {
			
			var increase_power_sound = audio_play_sound(snd_PowerBarIncrease, 1, false);
			audio_sound_pitch(increase_power_sound, power_bar_pitch_modifier);
			
			power_bar_pitch_modifier += 0.1;
			ball_hit_pitch_modifier -= 0.03;
			ball_hit_volume += 0.05;
			power_level += 1;
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
	
	ball_hit_pitch_modifier = 1; // Reset pitch modifier after use
	
	// Get a random angle for use if player over hits
	var trajectory = angle_between-180;
	var angle_variance = irandom_range(-30, 30);
	
	if power_level == 10 { // Actions for overhit
		
		audio_play_sound(snd_MissHit, 1, false);
		
		//shadow_alpha = 0;
		//flash_colour = c_red;
		//flash_alpha = 1;
		power_level -= 6; 
		trajectory += angle_variance;
	}
	if power_level == 9 { // Actions for perfect hit
		
		shadow_alpha = 0;
		power_level += 1;
		flash_colour = c_yellow;
		flash_alpha = 1;
		audio_play_sound(snd_PowerHit, 1, false);
	}
	
	// Calculate power and trajectory
	var _power = power_level;
	var trajectory = point_direction(mouse_x, mouse_y, x, y);
    
	//Reset current speed before impulse
	phy_speed_x = 0; 
	phy_speed_y = 0;
	
	//Apply physics impulse on the ball
	physics_apply_impulse(x, y, lengthdir_x(_power,  trajectory), lengthdir_y(_power, trajectory));
	
	// Reset values
	power_level = 1;
	power_timer = 0;
	
	
	hit = false;
}

x = phy_position_x;
y = phy_position_y;

//Control flash
if (flash_alpha > 0) {
	
	//shadow_alpha += 0.01
	flash_alpha -= 0.04;
}
else {shadow_alpha = 0.3;}

