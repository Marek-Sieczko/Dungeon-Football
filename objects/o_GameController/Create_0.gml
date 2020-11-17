/// @description Set up game

//Create selected ball

instance_create_layer(room_width*0.5, room_height - global.View_Height*0.35, "User_Layer", global.BallSelected);

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

dungeon_dust = instance_create_layer(cam_x, cam_y, "Wall_Layer", o_DungeonDust1);
HUD_can_fade = false;

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
key_1_x = global.View_Width*0.5 - 100;
key_1_y = global.View_Height*0.06;
key_1_xscale = 1;
key_1_yscale = 1;
key_1_angle = 0;
key_1_alpha = 0.2;

key_2_collected = false;
key_2_x = global.View_Width*0.5;
key_2_y = global.View_Height*0.06;
key_2_xscale = 1;
key_2_yscale = 1;
key_2_angle = 0;
key_2_alpha = 0.2;

key_3_collected = false;
key_3_x = global.View_Width*0.5 + 100;
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

can_restart = false;
