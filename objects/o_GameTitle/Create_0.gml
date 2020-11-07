/// @description Setup

//Set variables to control animations in the draw event
tween_game_title_x = global.View_Width*0.5;
tween_game_title_y = 0 + global.View_Height*0.30;
tween_game_title_xscale = 1;
tween_game_title_yscale = 1;
tween_game_title_alpha = 0;
game_title_colour = c_white;

//Set animation variables
intro_animation_1 = false;
intro_animation_time_1 = 0;
intro_animation_2 = false;
intro_animation_time_2 = 0;
intro_animation_3 = false;
intro_animation_time_3 = 0;

can_remove = false;
can_remove_time_1 = 0;

//Set alarm to start the intro animation
alarm[0] = 60;