///@description Setup

// Activate intro screen instances
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
		
instance_activate_region(vx-500, vy-500, vw+1000, vh+1000, true);

//Current data from saved data

level_completed = false;
next_level_lock_state = 0;
level_xp = 0;
total_keys = 0;
total_coins = 0;
current_keys = 0;
current_gems = 0;
current_coins = 0;
selected_struct = "";
next_level_selected_struct = "";

// Check for stage completion
has_completed = false;

// Start spawning fog and dust
can_spawn_particles = true;

// Draw variables
can_draw_intro_text = true;

//Ball variables
chosen_ball = global.BallSelected;
ball_x_spawn = room_width * 0.5;
ball_y_spawn = room_height - 700;

// Animation trigger variables
intro_is_running = true;

can_delay_animation_1 = true;
intro_animation_1_delay_timer = 0;
intro_animation_1_duration = 60;

intro_animation_1 = false;
intro_animation_timer_1 = 0;
intro_animation_duration_1 = 60;

intro_animation_2 = false;
intro_animation_timer_2 = 0;
intro_animation_duration_2 = 60;

intro_animation_3 = false;
intro_animation_timer_3 = 0;
intro_animation_duration_3 = 40;

can_delay_animation_4 = false;
intro_animation_4_delay_timer = 0;
intro_animation_4_duration = 40;

intro_animation_4 = false;
intro_animation_timer_4 = 0;
intro_animation_duration_4 = 40;

outro_animation_1 = false;
outro_animation_1_timer = 0;
outro_animation_1_duration = 60;

// Stage title/objective variables
stage_title_number = global.StageSelected;
stage_title_x = global.View_Width * 0.5;
stage_title_y = (global.View_Height * 0.5) - 400;
stage_title_xscale = 1;
stage_title_yscale = 1;
stage_title_alpha = 0;
stage_objective_x = global.View_Width * 0.5;
stage_objective_y = (global.View_Height * 0.5);
stage_objective_xscale = 1;
stage_objective_yscale = 1;
stage_objective_alpha = 0;

// Black screen control
can_fade_out = true;
can_fade_in = false;
can_draw_blackbox = false;
blackbox_alpha = 1;
blackbox_xscale = room_width;
blackbox_yscale = room_height;
fade_in_amount = 1;
fade_out_amount = -1;
fade_animation_time = 0;
fade_animation_duration = 90;

// Top HUD control
HUD_animation_out = false;
HUD_animation_out_timer = 0;
HUD_animation_out_duration = 0;

// HUD coin amount variables
HUD_coin_x = 100;
HUD_coin_y = -100;
HUD_coin_xscale = 1;
HUD_coin_yscale = 1;
HUD_coin_alpha = 1;
HUD_coin_increase_animation_1 = false;
HUD_coin_increase_animation_2 = false;
HUD_coin_increase_animation_duration = 8;
HUD_coin_increase_animation_timer = 0;
HUD_coin_flash_colour = c_white

HUD_coin_amount_x = 160;
HUD_coin_amount_y = -150;
HUD_coin_amount_xscale = 1;
HUD_coin_amount_yscale = 1;
HUD_coin_amount_alpha = 1;
HUD_coin_amount_flash_alpha = 0;

// Pause variables
can_pause = true;
has_paused = false;
pause_button_x = global.View_Width - 130;
pause_button_y = -100;
pause_button_xscale = 1;
pause_button_yscale = 1;
pause_button_alpha = 1;

// Pause animation variables
pause_button_animation_1 = false;
pause_button_animation_2 = false;
pause_button_animation_duration = 8;
pause_button_animation_timer = 0;

pause_menu_animation_1 = false;
pause_menu_animation_2 = false;
pause_menu_animation_duration = 8;
pause_menu_animation_timer = 0;

//Set variables to record time
milliseconds = 0;
has_started = false;
can_time = false;

// Bloom control variables
bloom_handler = shader_get_uniform(shd_bloom, "intensity");
bloom_value = 0.15;

// Camera variables
adjusted_y = 0;
camera_pan_timer = 0;
camera_pan_duration = 120;
camera_can_pan = true;
can_activate_free_cam = false;
zoom_level = 1;
cam = view_camera[0];
follow = o_BallParent;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
default_zoom_width = camera_get_view_width(cam);
default_zoom_height = camera_get_view_height(cam);
currW = default_zoom_width;
currH = default_zoom_height;

// HUD Key variables
key_1_collected = false;
key_1_x = global.View_Width * 0.5 - 100;
key_1_y = -100;
key_1_xscale = 1;
key_1_yscale = 1;
key_1_angle = 0;
key_1_alpha = 0;

key_2_collected = false;
key_2_x = global.View_Width*0.5;
key_2_y = -100;
key_2_xscale = 1;
key_2_yscale = 1;
key_2_angle = 0;
key_2_alpha = 0;

key_3_collected = false;
key_3_x = global.View_Width*0.5 + 100;
key_3_y = -100;
key_3_xscale = 1;
key_3_yscale = 1;
key_3_angle = 0;
key_3_alpha = 0;

can_animate_key_1 = false;
can_animate_key_2 = false;
can_animate_key_3 = false;
can_animate_key_4 = false;
can_animate_key_5 = false;
can_animate_key_6 = false;
key_animation_time_1 = 0;
