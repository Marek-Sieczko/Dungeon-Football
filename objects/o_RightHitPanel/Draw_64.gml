/// @description Draw power circle

if (can_increase) {
		
	if current_power_level < 21 {
		
		right_custom_colour = c_white;
	}
	else {
		
		right_custom_colour = c_yellow;
	}
}


if right_custom_colour != c_red {
		
		draw_circle_color(global.View_Width-200, global.View_Height-400, current_power_level*5, right_custom_colour, right_custom_colour, false);
	}
	else {
			
		draw_circle_color(global.View_Width-200, global.View_Height-400, current_power_level*20, right_custom_colour, right_custom_colour, false);
	}
	