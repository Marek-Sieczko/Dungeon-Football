/// @description Setup

// Play sound on start
audio_play_sound(snd_StageComplete, 1, false);

// Detect button push
has_pressed = false;

// Particle variables
create_particle_1 = true;

// Stage data variables


current_rank = global.PlayerRank;
current_level = global.PlayerLevel;
current_gems = global.GemAmount;
current_coins = global.CoinAmount;
current_xp = global.CurrentXP;
xp_to_award = o_GameController.level_xp;
gems_to_award = o_GameController.current_gems;
coins_to_award = o_GameController.current_coins;











//level_struct_to_update = "";
//next_struct_to_update = "";

//next_level_lock_state = o_LevelData.campaign_data.level_2.level_unlocked;
//	level_completed = o_LevelData.campaign_data.level_1.level_completed;
//	total_keys = o_LevelData.campaign_data.level_1.total_keys;
//	level_xp = o_LevelData.campaign_data.level_1.level_xp;
//	selected_struct = o_LevelData.campaign_data.level_1;
//	next_level_selected_struct = o_LevelData.campaign_data.level_2;















xp_to_show = xp_to_award;
gems_to_show = gems_to_award;
coins_to_show = coins_to_award;
first_time_completed = o_GameController.level_completed;
current_shield = s_ShieldRanks1;

// Trigger crediting of rewards
can_award_xp = false;
can_award_gems = false;
can_award_coins = false;

// Black screen control
can_fade_in = true;
can_draw_blackbox = false;
blackbox_alpha = 1;
blackbox_xscale = room_width;
blackbox_yscale = room_height;
fade_in_amount = 1;
fade_animation_time = 0;
fade_animation_duration = 40;

// Draw variables

flash_colour = c_white;
blackbox_alpha = 0;

xp_panel_x = 220;
xp_panel_y = -100;
xp_panel_alpha = 0;

xp_bar_x = 228;
xp_bar_y = -96;
xp_bar_xscale = (current_xp/current_level*10) / 100;
xp_bar_xscale = clamp(xp_bar_xscale, 0, 1);
xp_bar_yscale = 1;
xp_bar_alpha = 0;
xp_bar_flash_alpha = 0;

shield_rank_icon_x = 180;
shield_rank_icon_y = -90;
shield_rank_icon_xscale = 1;
shield_rank_icon_yscale = 1;
shield_rank_icon_alpha = 0;
shield_rank_icon_flash_alpha = 0;

shield_rank_x = 155;
shield_rank_y = -170;
shield_rank_xscale = 1;
shield_rank_yscale = 1;
shield_rank_alpha = 0;
shield_rank_flash_alpha = 0;

coin_chest_x = global.View_Width - 190;
coin_chest_y = -80;
coin_chest_xscale = 1;
coin_chest_yscale = 1;
coin_chest_alpha = 0;
coin_chest_flash_alpha = 0;

coin_chest_icon_x = global.View_Width - 130;
coin_chest_icon_y = -130;
coin_chest_icon_xscale = 1;
coin_chest_icon_yscale = 1;
coin_chest_icon_alpha = 0;
coin_chest_icon_flash_alpha = 0;

coin_chest_amount_x = global.View_Width - 190;
coin_chest_amount_y = -40;
coin_chest_amount_xscale = 1;
coin_chest_amount_yscale = 1;
coin_chest_amount_alpha = 0;

gem_chest_x = global.View_Width - 370;
gem_chest_y = -80;
gem_chest_xscale = 1;
gem_chest_yscale = 1;
gem_chest_alpha = 0;
gem_chest_flash_alpha = 0;

gem_chest_icon_x = global.View_Width - 310;
gem_chest_icon_y = -130;
gem_chest_icon_xscale = 1;
gem_chest_icon_yscale = 1;
gem_chest_icon_alpha = 0;
gem_chest_icon_flash_alpha = 0;

gem_chest_amount_x = global.View_Width - 370;
gem_chest_amount_y = -40;
gem_chest_amount_xscale = 1;
gem_chest_amount_yscale = 1;
gem_chest_amount_alpha = 0;

stage_clear_text_x = global.View_Width*0.5;
stage_clear_text_y = global.View_Height*0.5 - 500;
stage_clear_text_xscale = 0;
stage_clear_text_yscale = 0;
stage_clear_text_alpha = 1;

rewards_text_x = global.View_Width*0.5;
rewards_text_y = global.View_Height*0.5 - 200;
rewards_text_xscale = 1;
rewards_text_yscale = 1;
rewards_text_alpha = 0;

xp_icon_x = global.View_Width*0.5 - 180;
xp_icon_y = global.View_Height*0.5 - 50;
xp_icon_xscale = 1;
xp_icon_yscale = 1;
xp_icon_alpha = 0;

xp_icon_amount_x = global.View_Width*0.5 - 180;
xp_icon_amount_y = global.View_Height*0.5;
xp_icon_amount_xscale = 1;
xp_icon_amount_yscale = 1;
xp_icon_amount_alpha = 0;

gem_icon_x = global.View_Width*0.5;
gem_icon_y = global.View_Height*0.5 - 50;
gem_icon_xscale = 1;
gem_icon_yscale = 1;
gem_icon_alpha = 0;

gem_icon_amount_x = global.View_Width*0.5;
gem_icon_amount_y = global.View_Height*0.5;
gem_icon_amount_xscale = 1;
gem_icon_amount_yscale = 1;
gem_icon_amount_alpha = 0;

coin_icon_x = global.View_Width*0.5 + 180;
coin_icon_y = global.View_Height*0.5 - 50;
coin_icon_xscale = 1;
coin_icon_yscale = 1;
coin_icon_alpha = 0;

coin_amount_x = global.View_Width*0.5 + 180;
coin_amount_y = global.View_Height*0.5;
coin_amount_xscale = 1;
coin_amount_yscale = 1;
coin_amount_alpha = 0;

// Statement to determine which rewards will appear and in which position
if (coins_to_award > 0) && (gems_to_award > 0) { // Player has collected coin and gems
	
	show_debug_message("coins and gems");
	xp_icon_x = global.View_Width*0.5 - 180;
	xp_icon_amount_x = global.View_Width*0.5 - 180;
	gem_icon_x = global.View_Width*0.5;
	gem_icon_amount_x = global.View_Width*0.5;
	coin_icon_x  = global.View_Width*0.5 + 180;
	coin_amount_x = global.View_Width*0.5 + 180;
}
else if (!coins_to_award) && (gems_to_award > 0) { // Player has collected gems but no coins
	
	show_debug_message("gems no coins");
	xp_icon_x = global.View_Width*0.5 - 90;
	xp_icon_amount_x = global.View_Width*0.5 - 90;
	gem_icon_x = global.View_Width*0.5 + 90;
	gem_icon_amount_x = global.View_Width*0.5 + 90;
}
else if (coins_to_award > 0) && (!gems_to_award) { // Player has collected coins but no gems
	
	show_debug_message("coins no gems");
	xp_icon_x = global.View_Width*0.5 - 90;
	xp_icon_amount_x = global.View_Width*0.5 - 90;
	coin_icon_x  = global.View_Width*0.5 + 90;
	coin_amount_x = global.View_Width*0.5 + 90;
}
else { // Player has collected neither gem or coins
	
	show_debug_message("no gems or coins");
	xp_icon_x = global.View_Width*0.5;
	xp_icon_amount_x = global.View_Width*0.5;
}

time_trial_text_x = global.View_Width*0.5;
time_trial_text_y = global.View_Height*0.5 + 150;
time_trial_text_alpha = 0;

exit_button_x = global.View_Width*0.25;
exit_button_y = global.View_Height*0.5 + 400;
exit_button_xscale = 1;
exit_button_yscale = 1;
exit_button_alpha = 0;
exit_button_pressed_animation_1 = false;
exit_button_pressed_animation_2 = false;
exit_button_pressed_animation_duration = 8;
exit_button_pressed_animation_timer = 0;
exit_text_x = global.View_Width*0.25;
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

next_button_x = global.View_Width*0.75;
next_button_y = global.View_Height*0.5 + 400;
next_button_xscale = 1;
next_button_yscale = 1;
next_button_alpha = 0;
next_button_pressed_animation_1 = false;
next_button_pressed_animation_2 = false;
next_button_pressed_animation_duration = 8;
next_button_pressed_animation_timer = 0;
next_text_x = global.View_Width*0.75;
next_text_y = global.View_Height*0.5 + 510;
next_text_alpha = 0;

// Animation variables
stage_complete_animation_1 = true;
stage_complete_animation_1_timer = 0;
stage_complete_animation_1_duration = 20;
stage_complete_animation_2 = false;
stage_complete_animation_2_timer = 0;
stage_complete_animation_2_duration = 12;
stage_complete_delay_animation_3 = true;
stage_complete_delay_animation_3_timer = 0;
stage_complete_delay_animation_3_duration = 80;
stage_complete_animation_3 = false;
stage_complete_animation_3_timer = 0;
stage_complete_animation_3_duration = 20;

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

level_up_animation_1 = false;
level_up_animation_1_duration = 20;
level_up_animation_1_timer = 0;
level_up_animation_2 = false;
level_up_animation_2_duration = 12;
level_up_animation_2_timer = 0;