/// @description Draw and animate the game title

//Draw game title
draw_sprite_ext(s_GameTitle, 0, tween_game_title_x, tween_game_title_y, tween_game_title_xscale, tween_game_title_yscale, 0, game_title_colour, tween_game_title_alpha);

//Animation for intro
if (intro_animation_1) {
	
	tween_game_title_y = ease_in_sine(intro_animation_time_1, 0 + global.View_Height*0.20, global.View_Height*0.05, 30);
	tween_game_title_alpha = ease_linear(intro_animation_time_1, 0, 1, 30);
	
	intro_animation_time_1++;
	
	if (intro_animation_time_1 >= 30) {
		
		intro_animation_time_1 = 0;
		intro_animation_1 = false;
		intro_animation_2 = true;
	}
}

if (intro_animation_2) {
	
	tween_game_title_xscale = ease_linear(intro_animation_time_2, 1, 0.1, 8);
	tween_game_title_yscale = ease_linear(intro_animation_time_2, 1, 0.1, 8);
	
	intro_animation_time_2++;
	
	if (intro_animation_time_2 >= 8) {

		intro_animation_time_2 = 0;
		intro_animation_2 = false;
		intro_animation_3 = true;
	}
}

if (intro_animation_3) {
	
	tween_game_title_xscale = ease_linear(intro_animation_time_3, 1.1, -0.1, 12);
	tween_game_title_yscale = ease_linear(intro_animation_time_3, 1.1, -0.1, 12);
	
	intro_animation_time_3++;
	
	if (intro_animation_time_3 >= 12) {
		
		intro_animation_time_3 = 0;
		intro_animation_3 = false;
	}
}

//Animation for outro
if (can_remove) {
	
	tween_game_title_y = ease_in_sine(intro_animation_time_1, 0 + global.View_Height*0.25, -global.View_Height*0.05, 30);
	tween_game_title_alpha = ease_linear(can_remove_time_1, 1, -1, 30);
	can_remove_time_1++;
	
	if (can_remove_time_1 >= 30) {
		
		instance_destroy();
	}
}
