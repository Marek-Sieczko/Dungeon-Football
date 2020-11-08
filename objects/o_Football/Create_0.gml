///Init

power_applied = 1;
hit_type = "";
hit = false;
hsp = 0;
vsp = 0;
grav = 0.5;
dir = 0;
grounded = 0;
can_collide = true
random_spin = random_range(0.6, 2.4);

power_bar_pitch_modifier = 0.7;
ball_hit_pitch_modifier = 1;
ball_hit_volume = 1;
ball_collide_volume = 1;
ball_collide_pitch = 1;

//Node variables
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

power_timer = 0;
power_interval = 4;
power_level = 1;

can_animate_node_1 = false;
can_animate_node_2 = false;
node_animation_timer = 0;

//Shader variables
shadow_alpha = 0.3;
flash_alpha = 0;
flash_colour = c_white;
trail_sprite = spr_trail_basic;

alarm[0] = 1;