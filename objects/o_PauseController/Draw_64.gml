/// @description Draw

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
var resume_x1 = resume_button_x - sprite_get_xoffset(s_ResumeIcon);
var resume_y1 = resume_button_y - sprite_get_yoffset(s_ResumeIcon);
var resume_x2 = resume_x1 + sprite_get_width(s_ResumeIcon);
var resume_y2 = resume_y1 + sprite_get_height(s_ResumeIcon);

// Check if click is within the co-ordinates of the resume button
if (_mouse_x >= resume_x1) && (_mouse_x <= resume_x2) && (_mouse_y >= resume_y1) && (_mouse_y <= resume_y2) && (!has_pressed){

	if mouse_check_button_pressed(mb_any){
		
		audio_play_sound(snd_ButtonPress, 1, false);
		resume_button_pressed_animation_1 = true;
		resume_outro_animation_1 = true;
		has_pressed = true;
	}
}

// Draw sprites to GUI
draw_sprite_ext(global.Screenshot, 0, 0, 0, 1, 1, 0, c_white, 1);

// Draw black box over screenshot whilst no button pressed
if (!has_pressed) {
	
	draw_sprite_ext(s_BlackBox, 0, black_box_x, black_box_y, view_wport[0], view_hport[0], 0, c_white, black_box_alpha);
}

draw_sprite_ext(s_ExitIcon, 0, exit_button_x, exit_button_y, exit_button_xscale, exit_button_yscale, 0, c_white, exit_button_alpha);
draw_sprite_ext(s_RestartIcon, 0, restart_button_x, restart_button_y, restart_button_xscale, restart_button_yscale, 0, c_white, restart_button_alpha);
draw_sprite_ext(s_ResumeIcon, 0, resume_button_x, resume_button_y, resume_button_xscale, resume_button_yscale, 0, c_white, resume_button_alpha);

// Draw paused text
draw_set_font(fnt_Futura80);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_color(pause_text_x, pause_text_y, "PAUSED", c_white, c_white, c_white, c_white, pause_text_alpha);

draw_set_font(fnt_Futura40);
draw_text_color(exit_text_x, exit_text_y, "EXIT", c_white, c_white, c_white, c_white, exit_text_alpha);
draw_text_color(restart_text_x, restart_text_y, "RESTART", c_white, c_white, c_white, c_white, restart_text_alpha);
draw_text_color(resume_text_x, resume_text_y, "RESUME", c_white, c_white, c_white, c_white, resume_text_alpha);

// Draw black box over everything when any button pressed
if (has_pressed) {
	
	draw_sprite_ext(s_BlackBox, 0, black_box_x, black_box_y, view_wport[0], view_hport[0], 0, c_white, black_box_alpha);
}

// Darken the screen on pause menu start
if (pause_intro_animation_1) {

	black_box_alpha = ease_linear(pause_intro_animation_1_timer, 0, 0.5, pause_intro_animation_1_duration);
	
	pause_intro_animation_1_timer++;
	
	if (pause_intro_animation_1_timer >= pause_intro_animation_1_duration) {
		
		pause_intro_animation_1 = false;
		pause_intro_animation_1_timer = 0;
	}
}

// Bring in pause menu buttons
if (pause_intro_animation_2) {
	
	pause_text_alpha = ease_linear(pause_intro_animation_2_timer, 0, 1, pause_intro_animation_2_duration);
	exit_button_y = ease_inout_sine(pause_intro_animation_2_timer, global.View_Height*0.5 + 100, -50, pause_intro_animation_2_duration);
	exit_button_alpha = ease_linear(pause_intro_animation_2_timer, 0, 1, pause_intro_animation_2_duration);
	exit_text_y = ease_inout_sine(pause_intro_animation_2_timer, global.View_Height*0.5 + 200, -50, pause_intro_animation_2_duration);
	exit_text_alpha = ease_linear(pause_intro_animation_2_timer, 0, 1, pause_intro_animation_2_duration);
	restart_button_y = ease_inout_sine(pause_intro_animation_2_timer, global.View_Height*0.5 + 100, -50, pause_intro_animation_2_duration);
	restart_button_alpha = ease_linear(pause_intro_animation_2_timer, 0, 1, pause_intro_animation_2_duration);
	restart_text_y = ease_inout_sine(pause_intro_animation_2_timer, global.View_Height*0.5 + 200, -50, pause_intro_animation_2_duration);
	restart_text_alpha = ease_linear(pause_intro_animation_2_timer, 0, 1, pause_intro_animation_2_duration);
	resume_button_y = ease_inout_sine(pause_intro_animation_2_timer, global.View_Height*0.5 + 100, -50, pause_intro_animation_2_duration);
	resume_button_alpha = ease_linear(pause_intro_animation_2_timer, 0, 1, pause_intro_animation_2_duration);
	resume_text_y = ease_inout_sine(pause_intro_animation_2_timer, global.View_Height*0.5 + 200, -50, pause_intro_animation_2_duration);
	resume_text_alpha = ease_linear(pause_intro_animation_2_timer, 0, 1, pause_intro_animation_2_duration);
	pause_intro_animation_2_timer++;
	
	if (pause_intro_animation_2_timer >= pause_intro_animation_2_duration) {
		
		pause_intro_animation_2 = false;
		pause_intro_animation_2_timer = 0;
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

// Animation when pressing the resume button
if (resume_button_pressed_animation_1) {

	resume_button_xscale = ease_linear(resume_button_pressed_animation_timer, 1, 0.1, resume_button_pressed_animation_duration);
	resume_button_yscale = ease_linear(resume_button_pressed_animation_timer, 1, 0.1, resume_button_pressed_animation_duration);
	resume_button_pressed_animation_timer++;
	
	if (resume_button_pressed_animation_timer >= resume_button_pressed_animation_duration) {
		
		resume_button_pressed_animation_1 = false;
		resume_button_pressed_animation_2 = true;
		resume_button_pressed_animation_timer = 0;
	}
}
if (resume_button_pressed_animation_2) {

	resume_button_xscale = ease_linear(resume_button_pressed_animation_timer, 1.1, -0.1, resume_button_pressed_animation_duration);
	resume_button_yscale = ease_linear(resume_button_pressed_animation_timer, 1.1, -0.1, resume_button_pressed_animation_duration);
	resume_button_pressed_animation_timer++;
	
	if (resume_button_pressed_animation_timer >= resume_button_pressed_animation_duration) {
		
		resume_button_pressed_animation_2 = false;
		resume_button_pressed_animation_timer = 0;
	}
}

// Animation to go back to the main menu
if (exit_outro_animation_1) {

	black_box_alpha = ease_linear(exit_outro_animation_timer, 0.5, 0.5, exit_outro_animation_duration);
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
	restart_outro_animation_timer++;
	
	if (restart_outro_animation_timer >= restart_outro_animation_duration) {
		
		can_return_to_game = true;
		restart_outro_animation_1 = false;
		restart_outro_animation_timer = 0;
		room_restart();
	}
}

// Animation to resume the game
if (resume_outro_animation_1) {

	black_box_alpha = ease_linear(resume_outro_animation_timer, 0.5, -0.5, resume_outro_animation_duration);
	pause_text_alpha = ease_linear(resume_outro_animation_timer, 1, -1, resume_outro_animation_duration);
	exit_button_alpha = ease_linear(resume_outro_animation_timer, 1, -1, resume_outro_animation_duration);
	exit_text_alpha = ease_linear(resume_outro_animation_timer, 1, -1, resume_outro_animation_duration);
	restart_button_alpha = ease_linear(resume_outro_animation_timer, 1, -1, resume_outro_animation_duration);
	restart_text_alpha = ease_linear(resume_outro_animation_timer, 1, -1, resume_outro_animation_duration);
	resume_button_alpha = ease_linear(resume_outro_animation_timer, 1, -1, resume_outro_animation_duration);
	resume_text_alpha = ease_linear(resume_outro_animation_timer, 1, -1, resume_outro_animation_duration);
	resume_outro_animation_timer++;
	
	if (resume_outro_animation_timer >= resume_outro_animation_duration) {
		
		instance_activate_all();
		physics_pause_enable(false);
		with (o_GameController) {can_pause = true; can_spawn_particles = true;}
		instance_destroy();

		resume_outro_animation_1 = false;
		resume_outro_animation_timer = 0;
		
	}
}
