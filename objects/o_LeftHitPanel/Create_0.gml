/// @description Setup

//Detect if panel has been tapped
been_hit = false;

//Set initial power and time between power levels
current_power_timer = 0;
current_power_level = 0;
power_range = 1;
top_power_level = 24;

//Check to reset timer and stop increasing
can_increase = true;

//Set colour of power circle
left_custom_colour = c_white;