/// @description Detect tap of the screen

// Bloom Shader
shader_set(shd_bloom);
shader_set_uniform_f(bloom_handler, bloom_value);
draw_surface(application_surface, 0, 0);
shader_reset();

draw_set_font(fnt_Futura64);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw coin amount
if (HUD_coin_amount_flash_alpha > 0) {
	
	//shader_set(shd_flash);
	draw_sprite_ext(s_Coin, 0, HUD_coin_x, HUD_coin_y, HUD_coin_xscale, HUD_coin_yscale, 0, c_white, HUD_coin_alpha);
	//draw_sprite_ext(s_Coin, 0, HUD_coin_x, HUD_coin_y, HUD_coin_xscale, HUD_coin_yscale, 0, HUD_coin_flash_colour, HUD_coin_amount_flash_alpha);
	
	//shader_reset();
}
else {

	draw_sprite_ext(s_Coin, 0, HUD_coin_x, HUD_coin_y, HUD_coin_xscale, HUD_coin_yscale, 0, c_white, HUD_coin_alpha);
}

draw_text_ext_transformed_color(HUD_coin_amount_x, HUD_coin_amount_y, current_coins, 0, global.View_Width, HUD_coin_amount_xscale, HUD_coin_amount_yscale, 0, c_white, c_white, c_white, c_white, HUD_coin_amount_alpha);

// Draw Keys
draw_sprite_ext(s_GoldenKey, 0, key_1_x, key_1_y, key_1_xscale, key_1_yscale, key_1_angle, c_white, key_1_alpha);
draw_sprite_ext(s_GoldenKey, 0, key_2_x, key_2_y, key_2_xscale, key_2_yscale, key_2_angle, c_white, key_2_alpha);
draw_sprite_ext(s_GoldenKey, 0, key_3_x, key_3_y, key_3_xscale, key_3_yscale, key_3_angle, c_white, key_3_alpha);

// Draw coin amount
draw_sprite_ext(s_PauseIcon, 0, pause_button_x, pause_button_y, pause_button_xscale, pause_button_yscale, 0, c_white, pause_button_alpha);

//Check mouse position relative to GUI
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

//Get corner co-ordinates of the sprite
var x1 = pause_button_x - sprite_get_xoffset(s_PauseIcon);
var y1 = pause_button_y - sprite_get_yoffset(s_PauseIcon);
var x2 = x1 + sprite_get_width(s_PauseIcon);
var y2 = y1 + sprite_get_height(s_PauseIcon);

//Check if click is within the co-ordinates
if (_mouse_x >= x1) && (_mouse_x <= x2) && (_mouse_y >= y1) && (_mouse_y <= y2) && (can_pause)  {

	if mouse_check_button_pressed(mb_any){

		audio_play_sound(snd_ButtonPress, 1, false);
		audio_play_sound(snd_GamePaused, 1, false);
		
		physics_pause_enable(true);
		
		global.Screenshot = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
		
		instance_create_layer(x, y, "GUI_Layer", o_PauseController);
		
		//part_type_clear(global.pt_Fog);
		part_emitter_clear(global.ParticleSystem,global.pe_Fog)
		part_particles_clear(global.pt_Fog);
		
		//part_type_(global.pt_FloatingDust);
		part_emitter_clear(global.ParticleSystem,global.pe_FloatingDust)
		part_particles_clear(global.pt_FloatingDust);
		
		instance_deactivate_all(false);
		
		instance_activate_object(o_PauseController);

		has_paused = true;
		can_pause = false;
	}
}

// Sequence of animations for the intro
if (intro_is_running) {
	
	// Draw intro
	if (can_draw_intro_text) {
	
		draw_set_font(fnt_Futura100);
		draw_set_halign(fa_center);
		draw_set_valign(fa_center);
		
		draw_text_ext_transformed_color(stage_title_x, stage_title_y, "STAGE " + string(stage_title_number), 0, global.View_Width, stage_title_xscale, stage_title_yscale, 0, c_white, c_white, c_white, c_white, stage_title_alpha);
		draw_sprite_ext(s_CollectAllKeysText, 0, stage_objective_x, stage_objective_y, stage_objective_xscale, stage_objective_yscale, 0, c_white, stage_objective_alpha);
	}

	// Control animation 1 delay
	if (can_delay_animation_1) {
	
		intro_animation_1_delay_timer++;
	
		if (intro_animation_1_delay_timer >= intro_animation_1_duration) {
	
			intro_animation_1 = true;
			can_delay_animation_1 = false;
		}
	}

	// Stage start animation 1
	if (intro_animation_1) {

		stage_title_alpha = ease_in_sine(intro_animation_timer_1, 0, 1, intro_animation_duration_1);
		intro_animation_timer_1++;

		if (intro_animation_timer_1 >= intro_animation_duration_1) {
		
			intro_animation_timer_1 = 0;
			intro_animation_1 = false;
			intro_animation_2 = true;
		}
	}

	// Stage start animation 2
	if (intro_animation_2) {

		stage_objective_alpha = ease_in_sine(intro_animation_timer_2, 0, 1, intro_animation_duration_2);
	
		intro_animation_timer_2++;

		if (intro_animation_timer_2 >= intro_animation_duration_2) {
		
			intro_animation_timer_2 = 0;
			intro_animation_2 = false;
			can_delay_animation_4 = true;
		}
	}

	// Stage start animation 3 (Bring in the top HUD)
	if (intro_animation_3) {

		HUD_coin_y = ease_out_sine(intro_animation_timer_3, -100, 210, intro_animation_duration_3);
		HUD_coin_alpha = ease_out_sine(intro_animation_timer_3, 0, 1, intro_animation_duration_3);
		HUD_coin_amount_y = ease_out_sine(intro_animation_timer_3, -135, 210, intro_animation_duration_3);
		HUD_coin_amount_alpha = ease_out_sine(intro_animation_timer_3, 0, 1, intro_animation_duration_3);
		key_1_y = ease_out_sine(intro_animation_timer_3, -100, 215, intro_animation_duration_3);
		key_2_y = ease_out_sine(intro_animation_timer_3, -100, 215, intro_animation_duration_3);
		key_3_y = ease_out_sine(intro_animation_timer_3, -100, 215, intro_animation_duration_3);
		key_1_alpha = ease_out_sine(intro_animation_timer_3, 0, 0.2, intro_animation_duration_3);
		key_2_alpha = ease_out_sine(intro_animation_timer_3, 0, 0.2, intro_animation_duration_3);
		key_3_alpha = ease_out_sine(intro_animation_timer_3, 0, 0.2, intro_animation_duration_3);
		pause_button_y = ease_out_sine(intro_animation_timer_3, -100, 220, intro_animation_duration_3);
		pause_button_alpha = ease_out_sine(intro_animation_timer_3, 0, 1, intro_animation_duration_3);
	
		intro_animation_timer_3++;

		if (intro_animation_timer_3 >= intro_animation_duration_3) {
		
			intro_animation_timer_3 = 0;
			intro_animation_3 = false;
		}
	}
	
	// Control animation 4 delay
	if (can_delay_animation_4) {
	
		intro_animation_4_delay_timer++;
	
		if (intro_animation_4_delay_timer >= intro_animation_4_duration) {
	
			intro_animation_3 = true;
			intro_animation_4 = true;
			can_delay_animation_4 = false;
		}
	}
	
	// Stage start animation 2
	if (intro_animation_4) {

		stage_title_alpha = ease_linear(intro_animation_timer_4, 1, -1.2, intro_animation_duration_4);
		stage_title_y = ease_in_sine(intro_animation_timer_4, (global.View_Height * 0.5) - 400, -50, intro_animation_duration_4);
		stage_objective_alpha = ease_linear(intro_animation_timer_4, 1, -1.2, intro_animation_duration_4);
		stage_objective_y = ease_in_sine(intro_animation_timer_4, (global.View_Height * 0.5), -50, intro_animation_duration_4);
	
		intro_animation_timer_4++;

		if (intro_animation_timer_4 >= intro_animation_duration_4) {
		
			intro_animation_timer_4 = 0;
			intro_animation_4 = false;
			
			instance_create_layer(ball_x_spawn, ball_y_spawn, "User_Layer", chosen_ball);
			intro_is_running = false;
		}
	}
}

// Animation if coin collected
if (HUD_coin_increase_animation_1) {
	
	HUD_coin_xscale = ease_linear(HUD_coin_increase_animation_timer, 1, 0.1, HUD_coin_increase_animation_duration);
	HUD_coin_yscale = ease_linear(HUD_coin_increase_animation_timer, 1, 0.1, HUD_coin_increase_animation_duration);
	HUD_coin_amount_xscale = ease_linear(HUD_coin_increase_animation_timer, 1, 0.1, HUD_coin_increase_animation_duration);
	HUD_coin_amount_yscale = ease_linear(HUD_coin_increase_animation_timer, 1, 0.1, HUD_coin_increase_animation_duration);
	HUD_coin_increase_animation_timer++;
	
	if (HUD_coin_increase_animation_timer >= HUD_coin_increase_animation_duration) {
		
		HUD_coin_increase_animation_1 = false;
		HUD_coin_increase_animation_2 = true;
		HUD_coin_increase_animation_timer = 0;
	}
}
if (HUD_coin_increase_animation_2) {
	
	HUD_coin_xscale = ease_linear(HUD_coin_increase_animation_timer, 1.1, -0.1, HUD_coin_increase_animation_duration);
	HUD_coin_xscale = ease_linear(HUD_coin_increase_animation_timer, 1.1, -0.1, HUD_coin_increase_animation_duration);
	HUD_coin_amount_xscale = ease_linear(HUD_coin_increase_animation_timer, 1.1, -0.1, HUD_coin_increase_animation_duration);
	HUD_coin_amount_yscale = ease_linear(HUD_coin_increase_animation_timer, 1.1, -0.1, HUD_coin_increase_animation_duration);
	HUD_coin_increase_animation_timer++;
	
	if (HUD_coin_increase_animation_timer >= HUD_coin_increase_animation_duration) {
		
		HUD_coin_increase_animation_2 = false;
		HUD_coin_increase_animation_timer = 0;
	}
}

// Animate first key
if (key_1_collected) {
	
	key_1_alpha = 1;
	
	if (can_animate_key_1) {
		
		key_1_xscale = ease_linear(key_animation_time_1, 1, 0.2, 8);
		key_1_yscale = ease_linear(key_animation_time_1, 1, 0.2, 8);
		key_animation_time_1++;
		
		if (key_animation_time_1 >= 8) {
			
			key_animation_time_1 = 0;
			can_animate_key_1 = false;
			can_animate_key_2 = true;
		}
	}
	if (can_animate_key_2) {
		
		key_1_xscale = ease_linear(key_animation_time_1, 1.2, -0.2, 10);
		key_1_yscale = ease_linear(key_animation_time_1, 1.2, -0.2, 10);
		key_animation_time_1++;
		
		if (key_animation_time_1 >= 10) {
			
			key_animation_time_1 = 0;
			can_animate_key_2 = false;
		}
	}
}
		
// Animate second key
if (key_2_collected) {
	
	key_2_alpha = 1;
	
	if (can_animate_key_3) {
		
		key_2_xscale = ease_linear(key_animation_time_1, 1, 0.2, 8);
		key_2_yscale = ease_linear(key_animation_time_1, 1, 0.2, 8);
		key_animation_time_1++;
		
		if (key_animation_time_1 >= 8) {
			
			key_animation_time_1 = 0;
			can_animate_key_3 = false;
			can_animate_key_4 = true;
		}
	}
	if (can_animate_key_4) {
		
		key_2_xscale = ease_linear(key_animation_time_1, 1.2, -0.2, 10);
		key_2_yscale = ease_linear(key_animation_time_1, 1.2, -0.2, 10);
		key_animation_time_1++;
		
		if (key_animation_time_1 >= 10) {
			
			key_animation_time_1 = 0;
			can_animate_key_4 = false;
		}
	}
}

// Animate third key
if (key_3_collected) {
	
	key_3_alpha = 1;
	
	if (can_animate_key_5) {
		
		key_3_xscale = ease_linear(key_animation_time_1, 1, 0.2, 8);
		key_3_yscale = ease_linear(key_animation_time_1, 1, 0.2, 8);
		key_animation_time_1++;
		
		if (key_animation_time_1 >= 8) {
			
			key_animation_time_1 = 0;
			can_animate_key_5 = false;
			can_animate_key_6 = true;
		}
	}
	if (can_animate_key_6) {
		
		key_3_xscale = ease_linear(key_animation_time_1, 1.2, -0.2, 10);
		key_3_yscale = ease_linear(key_animation_time_1, 1.2, -0.2, 10);
		key_animation_time_1++;
		
		if (key_animation_time_1 >= 10) {
			
			key_animation_time_1 = 0;
			can_animate_key_6 = false;
		}
	}
}

// Animate HUD fade
if (HUD_animation_out) {
		
	key_1_collected = false;
	key_2_collected = false;
	key_3_collected = false;
	key_1_alpha -= 0.02;
	key_2_alpha -= 0.02;
	key_3_alpha -= 0.02;	
		
	key_1_alpha = ease_linear(key_animation_time_1, 1, -1, 120);
	key_1_alpha = ease_linear(key_animation_time_1, 1, -1, 120);
	key_animation_time_1++;
		
	if (key_animation_time_1 >= 120) {
			
		key_animation_time_1 = 0;
		HUD_animation_out = false;
	}
}

// Pause button animation
if (pause_button_animation_1) {
	
	pause_button_xscale = ease_linear(pause_button_animation_timer, 1, 0.1, pause_button_animation_duration);
	pause_button_yscale = ease_linear(pause_button_animation_timer, 1, 0.1, pause_button_animation_duration);
	pause_button_animation_timer++;
	
	if (pause_button_animation_timer >= pause_button_animation_duration) {
		
		pause_button_animation_timer = 0
		pause_button_animation_1 = false;
		pause_button_animation_2 = true;
	}
}
if (pause_button_animation_2) {
	
	pause_button_xscale = ease_linear(pause_button_animation_timer, 1.1, -0.1, pause_button_animation_duration);
	pause_button_yscale = ease_linear(pause_button_animation_timer, 1.1, -0.1, pause_button_animation_duration);
	pause_button_animation_timer++;
	
	if (pause_button_animation_timer >= pause_button_animation_duration) {
		
		pause_button_animation_timer = 0
		pause_button_animation_2 = false;
	}
}

// Draw black box to the screen
if (can_fade_out) || (can_fade_in) {
	
	draw_sprite_ext(s_BlackBox, 0, 0, 0, blackbox_xscale, blackbox_yscale, 0, c_white, blackbox_alpha);
}

// Black box fade out animation
if (can_fade_out) {
	
	blackbox_alpha = ease_out_sine(fade_animation_time, 1, fade_out_amount, fade_animation_duration);
	fade_animation_time++;
	
	if (fade_animation_time >= fade_animation_duration) {
		
		fade_animation_time = 0;
		can_fade_out = false;
	}
}

// Black box fade in animation
if (can_fade_in) {
	
	blackbox_alpha = ease_out_sine(fade_animation_time, 0, 0.8, fade_animation_duration);
	fade_animation_time++;

	if (fade_animation_time == fade_animation_duration) {
		fade_animation_time = 0;
		can_fade_in = false;
	}
}

////Draw Timer
//if (can_time) {
	
//	milliseconds += 100/60;
//}

////Convert current millisecond count to MM:SS:MS
//var minutes_to_show = milliseconds div 6000;
//var seconds_to_show = milliseconds div 100 - (minutes_to_show * 60);
////var milliseconds_to_show = milliseconds mod 100;
////milliseconds_to_show = floor(milliseconds_to_show);

//if minutes_to_show > 9 {var minutes_formatted = string(minutes_to_show);}
//else if minutes_to_show < 10 {var minutes_formatted = "0" + string(minutes_to_show);}
//if seconds_to_show > 9 {var seconds_formatted = ":" + string(seconds_to_show);}
//else if seconds_to_show < 10 {var seconds_formatted = ":0" + string(seconds_to_show);}
////if milliseconds_to_show > 9 {var milliseconds_formatted = ":" + string(milliseconds_to_show);}
////else if milliseconds_to_show < 10 {var milliseconds_formatted = ":0" + string(milliseconds_to_show);}

////Draw current time
//draw_set_font(fnt_Futura64);
//draw_set_halign(fa_left);
//draw_set_valign(fa_center);
//draw_text_ext_transformed_color(60, 60, string(minutes_formatted) + string(seconds_formatted), 0, global.View_Width, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

////Convert best time into MM:SS:MS
//var best_minutes_to_show = current_best_time div 6000;
//var best_seconds_to_show = current_best_time div 100 - (best_minutes_to_show * 60);
//var best_milliseconds_to_show = current_best_time mod 100;
//best_milliseconds_to_show = floor(best_milliseconds_to_show);

//if best_minutes_to_show > 9 {var best_minutes_formatted = string(best_minutes_to_show);}
//else if best_minutes_to_show < 10 {var best_minutes_formatted = "0" + string(best_minutes_to_show);}
//if best_seconds_to_show > 9 {var best_seconds_formatted = ":" + string(best_seconds_to_show);}
//else if best_seconds_to_show < 10 {var best_seconds_formatted = ":0" + string(best_seconds_to_show);}
//if best_milliseconds_to_show > 9 {var best_milliseconds_formatted = ":" + string(best_milliseconds_to_show);}
//else if best_milliseconds_to_show < 10 {var best_milliseconds_formatted = ":0" + string(best_milliseconds_to_show);}

////Draw best time
//draw_set_font(fnt_Futura64);
//draw_set_halign(fa_left);
//draw_set_valign(fa_center);

//if (current_best_time != 9999999) {
	
//	//draw_text_ext_transformed_color(60, 180, string(best_minutes_formatted) + string(best_seconds_formatted) + (best_milliseconds_formatted), 0, global.View_Width, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
//	draw_text_ext_transformed_color(60, 180, string(best_minutes_formatted) + string(best_seconds_formatted), 0, global.View_Width, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
//}
