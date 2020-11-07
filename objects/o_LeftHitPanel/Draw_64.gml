/// @description Insert description here
// You can write your code in this editor

if (can_increase) {
		
	if current_power_level < 21 {
		
		left_custom_colour = c_white;
	}
	else {
		
		left_custom_colour = c_yellow;
	}
}


if left_custom_colour != c_red {
		
		draw_circle_color(200, global.View_Height-400, current_power_level*5, left_custom_colour, left_custom_colour, false);
	}
	else {
			
		draw_circle_color(200, global.View_Height-400, current_power_level*10, left_custom_colour, left_custom_colour, false);
	}
	