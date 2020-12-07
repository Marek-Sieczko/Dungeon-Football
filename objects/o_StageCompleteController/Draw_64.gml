///@description Draw completion screen

// Main sprite/text draw
draw_set_font(fnt_Futura64);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

// Stage clear text
draw_text_ext_transformed_color(stage_clear_text_x, stage_clear_text_y, "STAGE CLEAR!", 0, global.View_Width, stage_clear_text_xscale, stage_clear_text_yscale, 0, c_white, c_white, c_white, c_white, stage_clear_text_alpha);

// XP bar
draw_set_font(fnt_Futura40);
draw_sprite_ext(s_XPBarPanel, 0, xp_panel_x, xp_panel_y, 1, 1, 0, c_white, xp_panel_alpha);
draw_sprite_ext(s_XPBar, 0, xp_bar_x, xp_bar_y, xp_bar_xscale, xp_bar_yscale, 0, c_white, xp_bar_tip_alpha);
draw_sprite_ext(s_XPBarTip, 0, xp_bar_tip_x, xp_bar_tip_y, 1, 1, 0, c_white, xp_bar_tip_alpha);
draw_sprite_ext(current_shield, 0, shield_rank_icon_x, shield_rank_icon_y, shield_rank_icon_xscale, shield_rank_icon_yscale, 0, c_white, shield_rank_icon_alpha);
draw_text_ext_transformed_color(shield_rank_x, shield_rank_y, current_rank, 0, 1000, shield_rank_xscale, shield_rank_yscale, 0, c_white, c_white, c_white, c_white, shield_rank_alpha);

// Coin chest
draw_sprite_ext(s_CoinChestIcon, 0, coin_chest_x, coin_chest_y, coin_chest_xscale, coin_chest_yscale, 0, c_white, coin_chest_alpha);
draw_text_ext_transformed_color(coin_chest_amount_x, coin_chest_amount_y, current_coins, 0, 1000, coin_chest_amount_xscale, coin_chest_amount_yscale, 0, c_white, c_white, c_white, c_white, coin_chest_amount_alpha);

// Xp to award
draw_set_halign(fa_left);
draw_set_font(fnt_Futura48);
draw_sprite_ext(s_XPIcon, 0, xp_icon_x, xp_icon_y, xp_icon_xscale, xp_icon_yscale, 0, c_white, xp_icon_alpha);
draw_text_ext_transformed_color(xp_icon_amount_x, xp_icon_amount_y, xp_to_award, 0, 1000, xp_icon_amount_xscale, xp_icon_amount_yscale, 0, c_white, c_white, c_white, c_white, xp_icon_amount_alpha);

// Coins to award
draw_sprite_ext(s_CoinsAwardedIcon, 0, coin_icon_x, coin_icon_y, coin_icon_xscale, coin_icon_yscale, 0, c_white, coin_icon_alpha);
draw_text_ext_transformed_color(coin_amount_x, coin_amount_y, coins_to_award, 0, 1000, coin_amount_xscale, coin_amount_yscale, 0, c_white, c_white, c_white, c_white, coin_amount_alpha);

// Exit, restart and next level buttons
draw_set_font(fnt_Futura32);
draw_set_halign(fa_center);
draw_sprite_ext(s_ExitIcon, 0, exit_button_x, exit_button_y, exit_button_xscale, exit_button_yscale, 0, c_white, exit_button_alpha);
draw_sprite_ext(s_RestartIcon, 0, restart_button_x, restart_button_y, restart_button_xscale, restart_button_yscale, 0, c_white, restart_button_alpha);
draw_sprite_ext(s_NextLevelIcon, 0, next_button_x, next_button_y, next_button_xscale, next_button_yscale, 0, c_white, next_button_alpha);
draw_text_color(exit_text_x, exit_text_y, "EXIT", c_white, c_white, c_white, c_white, exit_text_alpha);
draw_text_color(restart_text_x, restart_text_y, "RESTART", c_white, c_white, c_white, c_white, restart_text_alpha);
draw_text_color(next_text_x, next_text_y, "NEXT", c_white, c_white, c_white, c_white, next_text_alpha);

// Check mouse position relative to GUI
var _mouse_x = device_mouse_x_to_gui(0);
var _mouse_y = device_mouse_y_to_gui(0);

// Get corner co-ordinates of the exit button
var exit_x1 = exit_button_x - sprite_get_xoffset(s_ExitIcon);
var exit_y1 = exit_button_y - sprite_get_yoffset(s_ExitIcon);
var exit_x2 = exit_x1 + sprite_get_width(s_ExitIcon);
var exit_y2 = exit_y1 + sprite_get_height(s_ExitIcon);

// Check if click is within the co-ordinates of the exit button
if (_mouse_x >= exit_x1) && (_mouse_x <= exit_x2) && (_mouse_y >= exit_y1) && (_mouse_y <= exit_y2) && (!has_pressed){

	if mouse_check_button_pressed(mb_any){
		
		audio_play_sound(snd_ButtonPress, 1, false);
		exit_button_pressed_animation_1 = true;
		exit_outro_animation_1 = true;
		has_pressed = true;
	}
}

// Get corner co-ordinates of the exit button
var restart_x1 = restart_button_x - sprite_get_xoffset(s_RestartIcon);
var restart_y1 = restart_button_y - sprite_get_yoffset(s_RestartIcon);
var restart_x2 = restart_x1 + sprite_get_width(s_RestartIcon);
var restart_y2 = restart_y1 + sprite_get_height(s_RestartIcon);

// Check if click is within the co-ordinates of the restart button
if (_mouse_x >= restart_x1) && (_mouse_x <= restart_x2) && (_mouse_y >= restart_y1) && (_mouse_y <= restart_y2) && (!has_pressed){

	if mouse_check_button_pressed(mb_any){
		
		audio_play_sound(snd_ButtonPress, 1, false);
		restart_button_pressed_animation_1 = true;
		restart_outro_animation_1 = true;
		has_pressed = true;
	}
}

// Get corner co-ordinates of the exit button
var next_x1 = next_button_x - sprite_get_xoffset(s_NextLevelIcon);
var next_y1 = next_button_y - sprite_get_yoffset(s_NextLevelIcon);
var next_x2 = next_x1 + sprite_get_width(s_NextLevelIcon);
var next_y2 = next_y1 + sprite_get_height(s_NextLevelIcon);

// Check if click is within the co-ordinates of the resume button
if (_mouse_x >= next_x1) && (_mouse_x <= next_x2) && (_mouse_y >= next_y1) && (_mouse_y <= next_y2) && (!has_pressed){

	if mouse_check_button_pressed(mb_any){
		
		audio_play_sound(snd_ButtonPress, 1, false);
		next_button_pressed_animation_1 = true;
		next_outro_animation_1 = true;
		has_pressed = true;
	}
}

// Create particle on title creation
if (create_particle_1) {

	global.pe_Confetti = part_emitter_create(global.ParticleSystem2);
	global.pe_Flare = part_emitter_create(global.ParticleSystem2);


	var cam_x = camera_get_view_x(view_camera[0]) + global.View_Width*0.5;
	var cam_y = camera_get_view_y(view_camera[0]) + global.View_Height*0.5 - 380;
	var xp = cam_x;
	var yp = cam_y;

	part_emitter_region(global.ParticleSystem2, global.pe_Confetti, xp-360, xp+360, yp-40, yp+40, ps_shape_rectangle, ps_distr_invgaussian);
	part_emitter_burst(global.ParticleSystem2, global.pe_Confetti, global.pt_Confetti, 1000);
	part_emitter_region(global.ParticleSystem2, global.pe_Flare, xp-360, xp+360, yp-40, yp+40, ps_shape_rectangle, ps_distr_invgaussian);
	part_emitter_burst(global.ParticleSystem2, global.pe_Flare, global.pt_Flare, 100);

	create_particle_1 = false
}

// Animation to bring 'STAGE CLEAR' text in
if (stage_complete_animation_1) {
	
	stage_clear_text_xscale = ease_out_expo(stage_complete_animation_1_timer, 0, 1.2, stage_complete_animation_1_duration);
	stage_clear_text_yscale = ease_out_expo(stage_complete_animation_1_timer, 0, 1.2, stage_complete_animation_1_duration);
	stage_clear_text_alpha = ease_linear(stage_complete_animation_1_timer, 0, 1, stage_complete_animation_1_duration);
	stage_complete_animation_1_timer++;
	
	if (stage_complete_animation_1_timer >= stage_complete_animation_1_duration) {
		
		stage_complete_animation_1 = false;
		stage_complete_animation_2 = true;
		stage_complete_animation_1_timer = 0;
	}
}
if (stage_complete_animation_2) {
	
	stage_clear_text_xscale = ease_out_sine(stage_complete_animation_2_timer, 1.2, -0.2, stage_complete_animation_2_duration);
	stage_clear_text_yscale = ease_out_sine(stage_complete_animation_2_timer, 1.2, -0.2, stage_complete_animation_2_duration);
	stage_complete_animation_2_timer++;
	
	if (stage_complete_animation_2_timer >= stage_complete_animation_2_duration) {
		
		stage_complete_animation_2 = false;
		stage_complete_delay_animation_3 = true;
		stage_complete_animation_2_timer = 0;
	}
}
	
// Delay for bringing in the HUD, xp and coins
if (stage_complete_delay_animation_3) {
	
	stage_complete_delay_animation_3_timer++;
	
	if (stage_complete_delay_animation_3_timer >= stage_complete_delay_animation_3_duration) {
	
		stage_complete_animation_3 = true;
		stage_complete_delay_animation_3_timer = 0;
		stage_complete_delay_animation_3 = false;
	}
}
	
// Bring in HUD, xp and coins to be awarded
if (stage_complete_animation_3) {
	
	xp_panel_y = ease_out_back(stage_complete_animation_3_timer, -100, 200, stage_complete_animation_3_duration);
	xp_panel_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	xp_bar_y = ease_out_back(stage_complete_animation_3_timer, -100, 200, stage_complete_animation_3_duration);
	xp_bar_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	xp_bar_tip_y = ease_out_back(stage_complete_animation_3_timer, -100, 200, stage_complete_animation_3_duration);
	xp_bar_tip_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	shield_rank_icon_y = ease_out_back(stage_complete_animation_3_timer, -90, 200, stage_complete_animation_3_duration);
	shield_rank_icon_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	shield_rank_y = ease_out_back(stage_complete_animation_3_timer, -130, 200, stage_complete_animation_3_duration);
	shield_rank_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	coin_chest_y = ease_out_back(stage_complete_animation_3_timer, -100, 200, stage_complete_animation_3_duration);
	coin_chest_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	coin_chest_amount_y = ease_out_back(stage_complete_animation_3_timer, -65, 200, stage_complete_animation_3_duration);
	coin_chest_amount_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	xp_icon_y = ease_out_back(stage_complete_animation_3_timer, global.View_Height*0.5 - 100, -20, stage_complete_animation_3_duration);
	xp_icon_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	xp_icon_amount_y = ease_out_back(stage_complete_animation_3_timer, global.View_Height*0.5 - 140, -20, stage_complete_animation_3_duration);
	xp_icon_amount_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	coin_icon_y = ease_out_back(stage_complete_animation_3_timer, global.View_Height*0.5 - 100, -20, stage_complete_animation_3_duration);
	coin_icon_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	coin_amount_y = ease_out_back(stage_complete_animation_3_timer, global.View_Height*0.5 - 140, -20, stage_complete_animation_3_duration);
	coin_amount_alpha = ease_linear(stage_complete_animation_3_timer, 0, 1, stage_complete_animation_3_duration);
	
	stage_complete_animation_3_timer++;
	
	if (stage_complete_animation_3_timer >= stage_complete_animation_3_duration) {
		
		stage_complete_animation_3 = false;
		stage_complete_button_delay_animation_1 = true;
		stage_complete_animation_3_timer = 0;
	}
}

// Delay to bring in the bottom buttons
if (stage_complete_button_delay_animation_1) {
	
	stage_complete_button_delay_animation_1_timer++;
	
	if (stage_complete_button_delay_animation_1_timer >= stage_complete_button_delay_animation_1_duration) {
	
		stage_complete_button_animation_1 = true;
		stage_complete_button_delay_animation_1_timer = 0;
		stage_complete_button_delay_animation_1 = false;
	}
}

// Bring in bottom buttons
if (stage_complete_button_animation_1) {
	
	exit_button_y = ease_inout_sine(stage_complete_button_animation_1_timer, global.View_Height*0.5 + 400, -50, stage_complete_button_animation_1_duration);
	exit_button_alpha = ease_linear(stage_complete_button_animation_1_timer, 0, 1, stage_complete_button_animation_1_duration);
	exit_text_y = ease_inout_sine(stage_complete_button_animation_1_timer, global.View_Height*0.5 + 510, -50, stage_complete_button_animation_1_duration);
	exit_text_alpha = ease_linear(stage_complete_button_animation_1_timer, 0, 1, stage_complete_button_animation_1_duration);
	restart_button_y = ease_inout_sine(stage_complete_button_animation_1_timer, global.View_Height*0.5 + 400, -50, stage_complete_button_animation_1_duration);
	restart_button_alpha = ease_linear(stage_complete_button_animation_1_timer, 0, 1, stage_complete_button_animation_1_duration);
	restart_text_y = ease_inout_sine(stage_complete_button_animation_1_timer, global.View_Height*0.5 + 510, -50, stage_complete_button_animation_1_duration);
	restart_text_alpha = ease_linear(stage_complete_button_animation_1_timer, 0, 1, stage_complete_button_animation_1_duration);
	next_button_y = ease_inout_sine(stage_complete_button_animation_1_timer, global.View_Height*0.5 + 400, -50, stage_complete_button_animation_1_duration);
	next_button_alpha = ease_linear(stage_complete_button_animation_1_timer, 0, 1, stage_complete_button_animation_1_duration);
	next_text_y = ease_inout_sine(stage_complete_button_animation_1_timer, global.View_Height*0.5 + 510, -50, stage_complete_button_animation_1_duration);
	next_text_alpha = ease_linear(stage_complete_button_animation_1_timer, 0, 1, stage_complete_button_animation_1_duration);
	stage_complete_button_animation_1_timer++;
	
	if (stage_complete_button_animation_1_timer >= stage_complete_button_animation_1_duration) {
		
		stage_complete_button_animation_1 = false;
		stage_complete_button_animation_1_timer = 0;
	}
}

// Animation when pressing the exit button
if (exit_button_pressed_animation_1) {

	exit_button_xscale = ease_linear(exit_button_pressed_animation_timer, 1, 0.1, exit_button_pressed_animation_duration);
	exit_button_yscale = ease_linear(exit_button_pressed_animation_timer, 1, 0.1, exit_button_pressed_animation_duration);
	exit_button_pressed_animation_timer++;
	
	if (exit_button_pressed_animation_timer >= exit_button_pressed_animation_duration) {
		
		exit_button_pressed_animation_1 = false;
		exit_button_pressed_animation_2 = true;
		exit_button_pressed_animation_timer = 0;
	}
}
if (exit_button_pressed_animation_2) {

	exit_button_xscale = ease_linear(exit_button_pressed_animation_timer, 1.1, -0.1, exit_button_pressed_animation_duration);
	exit_button_yscale = ease_linear(exit_button_pressed_animation_timer, 1.1, -0.1, exit_button_pressed_animation_duration);
	exit_button_pressed_animation_timer++;
	
	if (exit_button_pressed_animation_timer >= exit_button_pressed_animation_duration) {
		
		exit_button_pressed_animation_2 = false;
		exit_button_pressed_animation_timer = 0;
	}
}

// Animation when pressing the restart button
if (restart_button_pressed_animation_1) {

	restart_button_xscale = ease_linear(restart_button_pressed_animation_timer, 1, 0.1, restart_button_pressed_animation_duration);
	restart_button_yscale = ease_linear(restart_button_pressed_animation_timer, 1, 0.1, restart_button_pressed_animation_duration);
	restart_button_pressed_animation_timer++;
	
	if (restart_button_pressed_animation_timer >= restart_button_pressed_animation_duration) {
		
		restart_button_pressed_animation_1 = false;
		restart_button_pressed_animation_2 = true;
		restart_button_pressed_animation_timer = 0;
	}
}
if (restart_button_pressed_animation_2) {

	restart_button_xscale = ease_linear(restart_button_pressed_animation_timer, 1.1, -0.1, restart_button_pressed_animation_duration);
	restart_button_yscale = ease_linear(restart_button_pressed_animation_timer, 1.1, -0.1, restart_button_pressed_animation_duration);
	restart_button_pressed_animation_timer++;
	
	if (restart_button_pressed_animation_timer >= restart_button_pressed_animation_duration) {
		
		restart_button_pressed_animation_2 = false;
		restart_button_pressed_animation_timer = 0;
	}
}

// Animation when pressing the next button
if (next_button_pressed_animation_1) {

	next_button_xscale = ease_linear(next_button_pressed_animation_timer, 1, 0.1, next_button_pressed_animation_duration);
	next_button_yscale = ease_linear(next_button_pressed_animation_timer, 1, 0.1, next_button_pressed_animation_duration);
	next_button_pressed_animation_timer++;
	
	if (next_button_pressed_animation_timer >= next_button_pressed_animation_duration) {
		
		next_button_pressed_animation_1 = false;
		next_button_pressed_animation_2 = true;
		next_button_pressed_animation_timer = 0;
	}
}
if (next_button_pressed_animation_2) {

	next_button_xscale = ease_linear(next_button_pressed_animation_timer, 1.1, -0.1, next_button_pressed_animation_duration);
	next_button_yscale = ease_linear(next_button_pressed_animation_timer, 1.1, -0.1, next_button_pressed_animation_duration);
	next_button_pressed_animation_timer++;
	
	if (next_button_pressed_animation_timer >= next_button_pressed_animation_duration) {
		
		next_button_pressed_animation_2 = false;
		next_button_pressed_animation_timer = 0;
	}
}

// Animation to go back to the main menu
if (exit_outro_animation_1) {

	black_box_alpha = ease_linear(exit_outro_animation_timer, 0.5, 0.5, exit_outro_animation_duration);
	restart_button_alpha = ease_in_sine(exit_outro_animation_timer, 1, -1, exit_outro_animation_duration);
	next_button_alpha = ease_in_sine(exit_outro_animation_timer, 1, -1, exit_outro_animation_duration);
	exit_outro_animation_timer++;
	
	if (exit_outro_animation_timer >= exit_outro_animation_duration) {
		
		can_return_to_game = true;
		exit_outro_animation_1 = false;
		exit_outro_animation_timer = 0;
		room_goto(rm_Main_Menu);
	}
}

// Animation to restart the game
if (restart_outro_animation_1) {

	black_box_alpha = ease_linear(restart_outro_animation_timer, 0.5, 0.5, restart_outro_animation_duration);
	exit_button_alpha = ease_in_sine(exit_outro_animation_timer, 1, -1, exit_outro_animation_duration);
	next_button_alpha = ease_in_sine(exit_outro_animation_timer, 1, -1, exit_outro_animation_duration);
	restart_outro_animation_timer++;
	
	if (restart_outro_animation_timer >= restart_outro_animation_duration) {
		can_return_to_game = true;
		restart_outro_animation_1 = false;
		restart_outro_animation_timer = 0;
		room_restart();
	}
}

// Animation to resume the game
if (next_outro_animation_1) {
	
	black_box_alpha = ease_linear(next_outro_animation_timer, 0.5, -0.5, next_outro_animation_duration);
	pause_text_alpha = ease_in_sine(next_outro_animation_timer, 1, -1, next_outro_animation_duration);
	exit_button_alpha = ease_in_sine(next_outro_animation_timer, 1, -1, next_outro_animation_duration);
	exit_text_alpha = ease_in_sine(next_outro_animation_timer, 1, -1, next_outro_animation_duration);
	restart_button_alpha = ease_in_sine(next_outro_animation_timer, 1, -1, next_outro_animation_duration);
	restart_text_alpha = ease_in_sine(next_outro_animation_timer, 1, -1, next_outro_animation_duration);
	next_button_alpha = ease_in_quint(next_outro_animation_timer, 1, -1, next_outro_animation_duration);
	next_text_alpha = ease_in_quint(next_outro_animation_timer, 1, -1, next_outro_animation_duration);
	next_outro_animation_timer++;
	
	if (next_outro_animation_timer >= next_outro_animation_duration) {
		
		instance_activate_all();
		physics_pause_enable(false);
		with (o_GameController) {can_pause = true; can_spawn_particles = true;}
		instance_destroy();

		next_outro_animation_1 = false;
		next_outro_animation_timer = 0;
		
	}
}

