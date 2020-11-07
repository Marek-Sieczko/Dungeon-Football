/// @description Draw skill text

//Draw sprite
draw_sprite_ext(s_StartButton,0, tween_x, tween_y, tween_xscale, tween_yscale, 0, c_white, tween_alpha);

//Check mouse position relative to GUI
_mouse_x = device_mouse_x_to_gui(0);
_mouse_y = device_mouse_y_to_gui(0);

//Animation for intro
if (intro_animation_1) {
	
	//tween_alpha = ease_linear(intro_animation_time_1, 0, 1, 12);
	//tween_xscale = ease_linear(intro_animation_time_1, 1, 0.15, 12);
	//tween_yscale = ease_linear(intro_animation_time_1, 1, 0.15, 12);
	
	intro_animation_time_1++;
	
	if (intro_animation_time_1 >= 12) {
		
		intro_animation_time_1 = 0;
		intro_animation_1 = false;
		intro_animation_2 = true;
	}
}
if (intro_animation_2) {
	
	//tween_xscale = ease_linear(intro_animation_time_2, 1.15, -0.15, 18);
	//tween_yscale = ease_linear(intro_animation_time_2, 1.15, -0.15, 18);
	
	intro_animation_time_2++;
	
	if (intro_animation_time_2 >= 18) {
		
		intro_animation_time_2 = 0;
		intro_animation_2 = false;
	}
}

//Outro animation
if (can_remove) {
	
	tween_alpha = ease_linear(can_remove_time_1, 1, -1, 30);
	//tween_xscale = ease_linear(can_remove_time_1, 1, 0.5, 60);
	//tween_yscale = ease_linear(can_remove_time_1, 1, 0.5, 60);
	can_remove_time_1++;
	
	if (can_remove_time_1 >= 30) {
		
		instance_destroy();
	}
}

//Get corner co-ordinates of the sprite
x1 = tween_x - sprite_get_xoffset(s_StartButton);
y1 = tween_y - sprite_get_yoffset(s_StartButton);
x2 = x1 + sprite_get_width(s_StartButton);
y2 = y1 + sprite_get_height(s_StartButton);

//Check if click is within the co-ordinates
if (_mouse_x >= x1) && (_mouse_x <= x2) && (_mouse_y >= y1) && (_mouse_y <= y2) && !(has_pressed) {

	if mouse_check_button_pressed(mb_any){


		audio_play_sound(snd_ButtonPress, 1, false);
		o_CampaignScreenParent.can_remove = true;
		
		alarm[1] = 30;
		has_pressed = true;
	}
}

// Activates flash
//if (flash_alpha > 0) {
	
//	gpu_set_blendmode(bm_add);
//	shader_set(shd_flash); 

//	draw_sprite_ext(s_StartButton,0, tween_x, tween_y, tween_xscale, tween_yscale, 0, c_white, flash_colour);

//	shader_reset();
//}

//else {
	
//	draw_sprite_ext(s_StartButton,0, tween_x, tween_y, tween_xscale, tween_yscale, 0, c_white, tween_alpha);
//}

//gpu_set_blendmode(bm_normal);