/// @description Holding right key


if (can_increase) {
	
	current_power_timer++;
}

//Check to increase power level
if (current_power_timer >= power_range) {
	
	current_power_level++;
	current_power_timer = 0;
}

if current_power_level > top_power_level {
	
	right_custom_colour = c_red;
	current_power_level = 1;
	can_increase = false;
}