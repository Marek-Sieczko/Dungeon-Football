/// @description Setup

//Take start position
current_y_position = room_height - global.View_Height*0.55;

//Detect when user presses the button
can_click = true;

//Set variables to animate
tween_x = 0 + global.View_Width*0.5;
tween_y = room_height - global.View_Height*0.55;
tween_xscale = 1;
tween_yscale = 1;
tween_alpha = 0;

//Creation animation
creation_animation = false;
animation_1_timer = 0;
animation_1_time = 30;

//Selected animation variables
selected_animation_1 = false;
animation_2_timer = 0;
animation_2_time = 8;
selected_animation_2 = false;
animation_3_timer = 0;
animation_3_time = 10;

//Start animation to remove
can_remove = false;
animation_4_timer = 0;
animation_4_time = 30;
delay = false;

//Set alarm to start animation
alarm[0] = 96;
