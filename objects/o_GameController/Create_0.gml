/// @description Set up game

//Create selected ball
instance_create_layer(room_width*0.5, room_height - global.View_Height*0.35, "User_Layer", global.BallSelected);

//Create control buttons(debug)
//instance_create_layer(x,y, "GUI_Layer", o_RightHitPanel);
//instance_create_layer(x,y, "GUI_Layer", o_LeftHitPanel);

//Create user controls
//instance_create_layer(x, y, "Controllers", o_UserTapBox);

//Set variables to record time
milliseconds = 0;
has_started = false;
can_time = false;

//Current data from saved data
current_bronze_time = 0;
current_silver_time = 0;
current_gold_time = 0;
current_bronze_time_attained = 0;
current_silver_time_attained = 0;
current_gold_time_attained = 0;
current_best_time = 0;
next_level_lock_state = 0;
total_keys = 0;
total_coins = 0;
current_keys = 0;
current_coins = 0;
selected_struct = "";
next_level_selected_struct = "";

//Key variables

key_1_collected = false;
key_1_x = global.View_Width*0.92 - 200;
key_1_y = global.View_Height*0.06;
key_1_xscale = 1;
key_1_yscale = 1;
key_1_angle = 0;
key_1_alpha = 0.2;

key_2_collected = false;
key_2_x = global.View_Width*0.92 - 100;
key_2_y = global.View_Height*0.06;
key_2_xscale = 1;
key_2_yscale = 1;
key_2_angle = 0;
key_2_alpha = 0.2;

key_3_collected = false;
key_3_x = global.View_Width*0.92;
key_3_y = global.View_Height*0.06;
key_3_xscale = 1;
key_3_yscale = 1;
key_3_angle = 0;
key_3_alpha = 0.2;

can_animate_key_1 = false;
can_animate_key_2 = false;
can_animate_key_3 = false;
can_animate_key_4 = false;
can_animate_key_5 = false;
can_animate_key_6 = false;
key_animation_time_1 = 0;

//Detect if left pressed
left_pressed = false;

//Detect if right pressed
right_pressed = false;

//Set initial power and time between power levels
left_current_power_timer = 0;
left_current_power_level = 0;
left_power_range = 1;
left_top_power_level = 24;
right_current_power_timer = 0;
right_current_power_level = 0;
right_power_range = 1;
right_top_power_level = 24;
down_current_power_timer = 0;
down_current_power_level = 0;
down_power_range = 1;
down_top_power_level = 24;

right_custom_colour = c_white;
left_custom_colour = c_white;

//Check to reset timer and stop increasing
left_can_increase = true;
right_can_increase = true;
down_can_increase = true;

can_restart = false;

//Swipe controls
MouseX = 0;
MouseY = 0;
MouseXStart = 0;
MouseYStart = 0;

Swipe = false;
SwipeTime = 0;
SwipeSpeed = 0;

PD = 0;  //Point of Direction




