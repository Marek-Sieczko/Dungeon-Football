/// @description Setup

can_remove = false;
has_pressed = false;

tween_x = global.View_Width*0.5;
tween_y = global.View_Height*0.9;
tween_xscale = 1;
tween_yscale = 1;
tween_alpha = 1;

can_remove = false;
can_remove_time_1 = 0;

flash_alpha = 0;
flash_colour = c_white;

intro_animation_1 = true;
intro_animation_time_1 = 0;

intro_animation_2 = false;
intro_animation_time_2 = 0;

selected_room = global.StageSelected;

//alarm[0] = 30; //Start animation