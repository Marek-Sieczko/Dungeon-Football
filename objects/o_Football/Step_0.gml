///@description Ball Physics

// Calcuate angle based on ball position and tap position
angle_between = point_direction(x,y,mouse_x,mouse_y);

// Build power level whilst tap is held
if mouse_check_button(mb_any) {
	
	power_timer++;
	
	if (power_timer == power_interval) { // Increase power level
		
		if (power_level < 10) {
			
			var increase_power_sound = audio_play_sound(snd_PowerBarIncrease, 1, false);
			audio_sound_pitch(increase_power_sound, power_bar_pitch_modifier);
			
			power_bar_pitch_modifier += 0.1;
			ball_hit_pitch_modifier -= 0.03;
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

//Actions if ball hit
if (hit) {

	//audio_play_sound(snd_FootballTap, 1, false);
	var ball_impact_sound = audio_play_sound(snd_FootballImpact, 1, false);
	audio_sound_pitch(ball_impact_sound, ball_hit_pitch_modifier);
	
	ball_hit_pitch_modifier = 1;
	
	var trajectory = angle_between-180;
	var angle_variance = irandom_range(-30, 30);
	if power_level == 9 {
		power_level -= 2;
		trajectory += angle_variance;
	}
	
	var _power = power_level*6;
	var _hspeed = lengthdir_x(_power, trajectory);
	var _vspeed = lengthdir_y(_power, trajectory);
	
	hsp = _hspeed;
	vsp = _vspeed;
	power_level = 1;
	power_timer = 0;
	
	hit = false;
}

//gravity = 0.2;

//----------Bouncing off walls, friction, and gravity----------

grounded = (place_meeting(x, y + 1, o_LevelPieceParent));

if (!grounded) {
	
    vsp += grav;
} 
else {
    
	if (abs(0 - hsp) > 0.5) {
		
        hsp -= hsp / 10;
	} 
	else {
		
        hsp = 0;
    }
}

//Horizontal collisions
if (place_meeting(x + hsp, y, o_LevelPieceParent)) {
	
    while (!place_meeting(x + sign(hsp), y, o_LevelPieceParent)) {
        x += sign(hsp);
    }
	var football_hit = audio_play_sound(snd_FootballCollide, 1, false);
	audio_sound_gain(football_hit,  )
	hsp = -hsp / 2;
	random_spin = random_range(0.6, 2.4);
}
//Horizontal movement
x += hsp;

//Vertical collisions
if (place_meeting(x, y + vsp, o_LevelPieceParent)) {
	
    while (!place_meeting(x, y + sign(vsp), o_LevelPieceParent)) {
        y += sign(vsp);
    }
	audio_play_sound(snd_FootballCollide, 1, false);
	vsp = -vsp / 1.5;
	random_spin = random_range(0.6, 2.4);
}
//Vertical movement
if (grounded) && (abs(0 - vsp) < 1) vsp = 0;
y += vsp;

//Rotating
dir += -hsp * random_spin;

//Control flash
if (flash_alpha > 0) {
	
	flash_alpha -= 0.1;
}