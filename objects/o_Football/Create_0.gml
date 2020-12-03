///@description Setup

can_click = true;

// Set ball to invisible on startup
image_alpha = 0;
ball_intro_active = true;
light_xscale = 3;
light_yscale = 3;

//Power and collision variables
power_applied = 1;
hit = false;
dir = 0;
power_timer = 0;
power_interval = 4;
power_level = 1;
can_collide = true;
miss_hit_variance = 1;
power_hit = false;
trail_timer = 0;
trail_timer_duration = 60;

//Variables to activate instances
can_activate = true;
can_activate_timer = 0;

//Flash variables
flash_colour = c_white;
flash_alpha = 1;

//Sound variables
hit_play = true;
power_bar_pitch_modifier = 0.7;
ball_hit_pitch_modifier = 1;
ball_hit_volume = 1;

//Power node variables
node_1_image_xscale = 1;
node_1_image_yscale = 1;
node_1_image_alpha = 1;
node_1_length = 60;

node_2_image_xscale = 1;
node_2_image_yscale = 1;
node_2_image_alpha = 0.2;
node_2_length = 80;

node_3_image_xscale = 1;
node_3_image_yscale = 1;
node_3_image_alpha = 0.2;
node_3_length = 100;

node_4_image_xscale = 1;
node_4_image_yscale = 1;
node_4_image_alpha = 0.2;
node_4_length = 120;

node_5_image_xscale = 1;
node_5_image_yscale = 1;
node_5_image_alpha = 0.2;
node_5_length = 140;

node_6_image_xscale = 1;
node_6_image_yscale = 1;
node_6_image_alpha = 0.2;
node_6_length = 160;

node_7_image_xscale = 1;
node_7_image_yscale = 1;
node_7_image_alpha = 0.2;
node_7_length = 180;

node_8_image_xscale = 1;
node_8_image_yscale = 1;
node_8_image_alpha = 0.2;
node_8_length = 200;

node_9_image_xscale = 1;
node_9_image_yscale = 1;
node_9_image_alpha = 0.2;
node_9_length = 220;

node_10_image_xscale = 1;
node_10_image_yscale = 1;
node_10_image_alpha = 0.2;
node_10_length = 240;

can_animate_node_1 = false;

alarm[0] = 1; //Make light
