/// @description Detect tap of the screen

////Get corner co-ordinates for left panel
//x1 = 0;
//y1 = 0;
//x2 = global.View_Width*0.5;
//y2 = global.View_Height;

////Get corner co-ordinates for right panel
//x3 = global.View_Width*0.5;
//y3 = 0;
//x4 = global.View_Width;
//y4 = global.View_Height;

//Draw Keys
draw_sprite_ext(s_GoldenKey, 0, key_1_x, key_1_y, key_1_xscale, key_1_yscale, key_1_angle, c_white, key_1_alpha);
draw_sprite_ext(s_GoldenKey, 0, key_2_x, key_2_y, key_2_xscale, key_2_yscale, key_2_angle, c_white, key_2_alpha);
draw_sprite_ext(s_GoldenKey, 0, key_3_x, key_3_y, key_3_xscale, key_3_yscale, key_3_angle, c_white, key_3_alpha);

//Animate first key
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
		
//Animate second key
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

//Animate third key
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

//Draw Timer
if (can_time) {
	
	milliseconds += 100/60;
}

//Convert current millisecond count to MM:SS:MS
var minutes_to_show = milliseconds div 6000;
var seconds_to_show = milliseconds div 100 - (minutes_to_show * 60);
var milliseconds_to_show = milliseconds mod 100;
milliseconds_to_show = floor(milliseconds_to_show);

if minutes_to_show > 9 {var minutes_formatted = string(minutes_to_show);}
else if minutes_to_show < 10 {var minutes_formatted = "0" + string(minutes_to_show);}
if seconds_to_show > 9 {var seconds_formatted = ":" + string(seconds_to_show);}
else if seconds_to_show < 10 {var seconds_formatted = ":0" + string(seconds_to_show);}
if milliseconds_to_show > 9 {var milliseconds_formatted = ":" + string(milliseconds_to_show);}
else if milliseconds_to_show < 10 {var milliseconds_formatted = ":0" + string(milliseconds_to_show);}

//Draw current time
draw_set_font(fnt_LuckiestGuy80);
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_text_ext_transformed_color(60, 60, string(minutes_formatted) + string(seconds_formatted) + (milliseconds_formatted), 0, global.View_Width, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

//Convert best time into MM:SS:MS
var best_minutes_to_show = current_best_time div 6000;
var best_seconds_to_show = current_best_time div 100 - (best_minutes_to_show * 60);
var best_milliseconds_to_show = current_best_time mod 100;
best_milliseconds_to_show = floor(best_milliseconds_to_show);

if best_minutes_to_show > 9 {var best_minutes_formatted = string(best_minutes_to_show);}
else if best_minutes_to_show < 10 {var best_minutes_formatted = "0" + string(best_minutes_to_show);}
if best_seconds_to_show > 9 {var best_seconds_formatted = ":" + string(best_seconds_to_show);}
else if best_seconds_to_show < 10 {var best_seconds_formatted = ":0" + string(best_seconds_to_show);}
if best_milliseconds_to_show > 9 {var best_milliseconds_formatted = ":" + string(best_milliseconds_to_show);}
else if best_milliseconds_to_show < 10 {var best_milliseconds_formatted = ":0" + string(best_milliseconds_to_show);}

//Draw best time
draw_set_font(fnt_LuckiestGuy50);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

if (current_best_time != 9999999) {
	
	draw_text_ext_transformed_color(60, 180, string(best_minutes_formatted) + string(best_seconds_formatted) + (best_milliseconds_formatted), 0, global.View_Width, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
}

//Check if click is within the co-ordinates
//if (_mouse_x >= x1) && (_mouse_x <= x2) && (_mouse_y >= y1) && (_mouse_y <= y2) && !(left_pressed){

//	if mouse_check_button(mb_any) {

//		//Increase timer per frame if power not reset
//		if (left_can_increase) {
	
//			left_current_power_timer++;
//		}

//		//Check to increase power level
//		if (left_current_power_timer >= left_power_range) {
	
//			left_current_power_level++;
//			left_current_power_timer = 0;
//		}

//		//Check to reset the power level if held too long
//		if left_current_power_level > left_top_power_level {
	
//			left_custom_colour = c_red;
//			left_current_power_level = 1;
//			left_can_increase = false;
//		}
		
//		if (left_can_increase) {
			
//			if left_current_power_level < 21 {left_custom_colour = c_white;}
//			else {left_custom_colour = c_yellow;}
//		}
		
//		if left_custom_colour != c_red {
		
//			draw_circle_color(_mouse_x, _mouse_y, left_current_power_level*5, left_custom_colour, left_custom_colour, false);
//		}
//		else {
			
//			draw_circle_color(_mouse_x, _mouse_y, left_current_power_level*20, left_custom_colour, left_custom_colour, false);
//		}

//	}
//	if mouse_check_button_released(mb_any){
	
//		with(o_BallParent) {
	
//			power_applied = other.left_current_power_level;
//			hit_type = "left";
//			hit = true;
//			if other.left_current_power_level >= 21 {flash_alpha = 1;}
//		}

//		can_time = true;
//		audio_play_sound(snd_FootballTap, 1, false);
//		left_current_power_timer = 0;
//		left_current_power_level = 0;
//		left_can_increase = true;
//		left_pressed = false;
		
//	}
//}

//if (_mouse_x >= x3) && (_mouse_x <= x4) && (_mouse_y >= y3) && (_mouse_y <= y4) && !(right_pressed){

//	if mouse_check_button(mb_any){

//		//Increase timer per frame if power not reset
//		if (right_can_increase) {
	
//			right_current_power_timer++;
//		}

//		//Check to increase power level
//		if (right_current_power_timer >= right_power_range) {
	
//			right_current_power_level++;
//			right_current_power_timer = 0;
//		}

//		if right_current_power_level > right_top_power_level {
	
//			right_custom_colour = c_red;
//			right_current_power_level = 1;
//			right_can_increase = false;
//		}
		
//		if (right_can_increase) {
			
//			if right_current_power_level < 21 {right_custom_colour = c_white;}
//			else {right_custom_colour = c_yellow;}
//		}
		
//		if right_custom_colour != c_red {
			
//			draw_circle_color(_mouse_x, _mouse_y, right_current_power_level*5, right_custom_colour, right_custom_colour, false);
//		}
//		else {
			
//			draw_circle_color(_mouse_x, _mouse_y, right_current_power_level*20, right_custom_colour, right_custom_colour, false);
//		}
//	}
	
//	if mouse_check_button_released(mb_any) {
		
//		with(o_BallParent) {
//			power_applied = other.right_current_power_level;
//			hit_type = "right";
//			hit = true;
//			if other.right_current_power_level >= 21 {flash_alpha = 1;}
//		}

//		audio_play_sound(snd_FootballTap, 1, false);
//		can_time = true;
//		right_current_power_timer = 0;
//		right_current_power_level = 0;
//		right_can_increase = true;
//		right_pressed = false;
		
//	}
//}