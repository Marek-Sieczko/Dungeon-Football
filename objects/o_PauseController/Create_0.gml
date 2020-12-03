/// @description Setup

has_pressed = false;
can_return_to_game = false;

pause_intro_animation_1 = true;
pause_intro_animation_1_duration = 8;
pause_intro_animation_1_timer = 0;

pause_intro_animation_2 = true;
pause_intro_animation_2_duration = 20;
pause_intro_animation_2_timer = 0;

exit_outro_animation_1 = false;
exit_outro_animation_duration = 40;
exit_outro_animation_timer = 0;

restart_outro_animation_1 = false;
restart_outro_animation_duration = 40;
restart_outro_animation_timer = 0;

resume_outro_animation_1 = false;
resume_outro_animation_duration = 40;
resume_outro_animation_timer = 0;

black_box_x = 0;
black_box_y = 0;
black_box_alpha = 0;

pause_text_x = global.View_Width*0.5;
pause_text_y = global.View_Height*0.5 - 300;
pause_text_alpha = 0;

exit_button_x = global.View_Width*0.3;
exit_button_y = global.View_Height*0.5 + 100;
exit_button_xscale = 1;
exit_button_yscale = 1;
exit_button_alpha = 0;
exit_button_pressed_animation_1 = false;
exit_button_pressed_animation_2 = false;
exit_button_pressed_animation_duration = 8;
exit_button_pressed_animation_timer = 0;
exit_text_x = global.View_Width*0.3;
exit_text_y = global.View_Height*0.5 + 200;
exit_text_alpha = 0;

restart_button_x = global.View_Width*0.5;
restart_button_y = global.View_Height*0.5 + 100;
restart_button_xscale = 1;
restart_button_yscale = 1;
restart_button_alpha = 0;
restart_button_pressed_animation_1 = false;
restart_button_pressed_animation_2 = false;
restart_button_pressed_animation_duration = 8;
restart_button_pressed_animation_timer = 0;
restart_text_x = global.View_Width*0.5;
restart_text_y = global.View_Height*0.5 + 200;
restart_text_alpha = 0;

resume_button_x = global.View_Width*0.7;
resume_button_y = global.View_Height*0.5 + 100;
resume_button_xscale = 1;
resume_button_yscale = 1;
resume_button_alpha = 0;
resume_button_pressed_animation_1 = false;
resume_button_pressed_animation_2 = false;
resume_button_pressed_animation_duration = 8;
resume_button_pressed_animation_timer = 0;
resume_text_x = global.View_Width*0.7;
resume_text_y = global.View_Height*0.5 + 200;
resume_text_alpha = 0;
