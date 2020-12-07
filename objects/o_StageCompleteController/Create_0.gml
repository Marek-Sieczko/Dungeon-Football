/// @description Setup

// Play sound on start
audio_play_sound(snd_StageComplete, 1, false);

// Detect button push
has_pressed = false;

// Particle variables
create_particle_1 = true;

// Stage data variables
current_rank = global.PlayerRank;
current_coins = global.CoinAmount;
coins_to_award = o_GameController.current_coins;
xp_to_award = o_GameController.level_xp;
first_time_completed = o_GameController.first_time_completed;
current_shield = s_ShieldLevel1stIcon;

// Black screen control
can_fade_in = true;
can_draw_blackbox = false;
blackbox_alpha = 1;
blackbox_xscale = room_width;
blackbox_yscale = room_height;
fade_in_amount = 1;
fade_animation_time = 0;
fade_animation_duration = 40;

// Animation variables
stage_complete_animation_1 = true;
stage_complete_animation_1_timer = 0;
stage_complete_animation_1_duration = 20;

stage_complete_animation_2 = false;
stage_complete_animation_2_timer = 0;
stage_complete_animation_2_duration = 12;

stage_complete_animation_3 = false;
stage_complete_animation_3_timer = 0;
stage_complete_animation_3_duration = 20;

stage_complete_delay_animation_3 = true;
stage_complete_delay_animation_3_timer = 0;
stage_complete_delay_animation_3_duration = 80;

stage_complete_button_delay_animation_1 = false;
stage_complete_button_delay_animation_1_timer = 0;
stage_complete_button_delay_animation_1_duration = 40;

stage_complete_button_animation_1 = false;
stage_complete_button_animation_1_timer = 0;
stage_complete_button_animation_1_duration = 40;

exit_outro_animation_1 = false;
exit_outro_animation_duration = 40;
exit_outro_animation_timer = 0;

restart_outro_animation_1 = false;
restart_outro_animation_duration = 40;
restart_outro_animation_timer = 0;

next_outro_animation_1 = false;
next_outro_animation_duration = 40;
next_outro_animation_timer = 0;

// Draw variables
blackbox_alpha = 0;

xp_panel_x = 150;
xp_panel_y = -100;
xp_panel_alpha = 0;

xp_bar_x = 180;
xp_bar_y = -100;
xp_bar_xscale = 1;
xp_bar_yscale = 1;
xp_bar_alpha = 0;
xp_bar_flash_alpha = 0;

xp_bar_tip_x = 480;
xp_bar_tip_y = -100;
xp_bar_tip_alpha = 0;
xp_bar_tip_flash_alpha = 0;

shield_rank_icon_x = 150;
shield_rank_icon_y = -90;
shield_rank_icon_xscale = 1;
shield_rank_icon_yscale = 1;
shield_rank_icon_alpha = 0;
shield_rank_icon_flash_alpha = 0;

shield_rank_x = 150;
shield_rank_y = -130;
shield_rank_xscale = 1;
shield_rank_yscale = 1;
shield_rank_alpha = 0;
shield_rank_flash_alpha = 0;

coin_chest_x = global.View_Width - 150;
coin_chest_y = -100;
coin_chest_xscale = 1;
coin_chest_yscale = 1;
coin_chest_alpha = 0;
coin_chest_flash_alpha = 0;

coin_chest_amount_x = global.View_Width - 150;
coin_chest_amount_y = -65;
coin_chest_amount_xscale = 1;
coin_chest_amount_yscale = 1;
coin_chest_amount_alpha = 0;

stage_clear_text_x = global.View_Width*0.5;
stage_clear_text_y = global.View_Height*0.5 - 400;
stage_clear_text_xscale = 0;
stage_clear_text_yscale = 0;
stage_clear_text_alpha = 1;

xp_icon_x = global.View_Width*0.5 - 150;
xp_icon_y = global.View_Height*0.5 - 100;
xp_icon_xscale = 1;
xp_icon_yscale = 1;
xp_icon_alpha = 0;

xp_icon_amount_x = global.View_Width*0.5 - 90;
xp_icon_amount_y = global.View_Height*0.5 - 140;
xp_icon_amount_xscale = 1;
xp_icon_amount_yscale = 1;
xp_icon_amount_alpha = 0;

coin_icon_x = global.View_Width*0.5 + 50;
coin_icon_y = global.View_Height*0.5 - 100;
coin_icon_xscale = 1;
coin_icon_yscale = 1;
coin_icon_alpha = 0;

coin_amount_x = global.View_Width*0.5 + 110;
coin_amount_y = global.View_Height*0.5 - 140;
coin_amount_xscale = 1;
coin_amount_yscale = 1;
coin_amount_alpha = 0;

time_trial_text_x = global.View_Width - 100;
time_trial_text_y = -30;
time_trial_text_alpha = 0;

exit_button_x = global.View_Width*0.3;
exit_button_y = global.View_Height*0.5 + 400;
exit_button_xscale = 1;
exit_button_yscale = 1;
exit_button_alpha = 0;
exit_button_pressed_animation_1 = false;
exit_button_pressed_animation_2 = false;
exit_button_pressed_animation_duration = 8;
exit_button_pressed_animation_timer = 0;
exit_text_x = global.View_Width*0.3;
exit_text_y = global.View_Height*0.5 + 510;
exit_text_alpha = 0;

restart_button_x = global.View_Width*0.5;
restart_button_y = global.View_Height*0.5 + 400;
restart_button_xscale = 1;
restart_button_yscale = 1;
restart_button_alpha = 0;
restart_button_pressed_animation_1 = false;
restart_button_pressed_animation_2 = false;
restart_button_pressed_animation_duration = 8;
restart_button_pressed_animation_timer = 0;
restart_text_x = global.View_Width*0.5;
restart_text_y = global.View_Height*0.5 + 510;
restart_text_alpha = 0;

next_button_x = global.View_Width*0.7;
next_button_y = global.View_Height*0.5 + 400;
next_button_xscale = 1;
next_button_yscale = 1;
next_button_alpha = 0;
next_button_pressed_animation_1 = false;
next_button_pressed_animation_2 = false;
next_button_pressed_animation_duration = 8;
next_button_pressed_animation_timer = 0;
next_text_x = global.View_Width*0.7;
next_text_y = global.View_Height*0.5 + 510;
next_text_alpha = 0;