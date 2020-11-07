/// @description Draw sprite

//Draw sprite
draw_sprite_ext(s_LevelButton_1_1, 0, tween_x, tween_y, tween_xscale, tween_yscale, 0, c_white, tween_alpha);

//Check mouse position relative to GUI
_mouse_x = device_mouse_x_to_gui(0);
_mouse_y = device_mouse_y_to_gui(0);

//Get corner co-ordinates of the sprite
x1 = tween_x - sprite_get_xoffset(s_LevelButton_1_1);
y1 = tween_y - sprite_get_yoffset(s_LevelButton_1_1);
x2 = x1 + sprite_get_width(s_LevelButton_1_1);
y2 = y1 + sprite_get_height(s_LevelButton_1_1);

//Check if click is within the co-ordinates and execute click action
if (_mouse_x >= x1) && (_mouse_x <= x2) && (_mouse_y >= y1) && (_mouse_y <= y2) {

	if mouse_check_button_pressed(mb_any){

		audio_play_sound(snd_ButtonPress, 1, false);

		//global.LevelSelected = 1;
		with (o_StartButton) {selected_room = rm_Level_1;}

		o_CampaignPanel.bronze_time_attained = o_LevelData.campaign_data.level_1.bronze_time_attained;
		o_CampaignPanel.bronze_time_to_show = o_LevelData.campaign_data.level_1.bronze_time;
		o_CampaignPanel.silver_time_attained = o_LevelData.campaign_data.level_1.silver_time_attained;
		o_CampaignPanel.silver_time_to_show = o_LevelData.campaign_data.level_1.silver_time;
		o_CampaignPanel.gold_time_attained = o_LevelData.campaign_data.level_1.gold_time_attained;
		o_CampaignPanel.gold_time_to_show = o_LevelData.campaign_data.level_1.gold_time;
		o_CampaignPanel.best_time_to_show = o_LevelData.campaign_data.level_1.best_time;
		o_CampaignPanel.level_rank_to_show = o_LevelData.campaign_data.level_1.level_rank;

		selected_animation_1 = true; 
		
	}
}

//Animation when screen starts
if (creation_animation) {
	
	animation_1_timer++;
	
	if (animation_1_timer >= animation_1_time) {
		
		creation_animation = false;
		animation_1_timer = 0;
	}
}

//Animation when clicked
if (selected_animation_1) {
	
	tween_xscale = ease_linear(animation_2_timer, 1, 0.1, animation_2_time);
	tween_yscale = ease_linear(animation_2_timer, 1, 0.1, animation_2_time);
	animation_2_timer++;
	
	if (animation_2_timer >= animation_2_time) {
		
		selected_animation_1 = false;
		selected_animation_2 = true;
		animation_2_timer = 0;
	}
}
if (selected_animation_2) {
	
	tween_xscale = ease_out_sine(animation_3_timer, 1.1, -0.1, animation_3_time);
	tween_yscale = ease_out_sine(animation_3_timer, 1.1, -0.1, animation_3_time);
	animation_3_timer++;
	
	if (animation_3_timer >= animation_3_time) {
		
		selected_animation_2 = false;
		animation_2_timer = 0;
	}
}
//Animation when removed
if !(delay) {
	if (can_remove) {
	
		tween_alpha = ease_linear(animation_4_timer, 1, -1, animation_4_time);
		animation_4_timer++;
	
		if (animation_4_timer >= animation_4_time) {
		
			instance_destroy();
		}
	}
}
else { 
	
	alarm[1] = 20; //Set animation to delay
	can_remove = false;
	delay = false;
}

//Get current stage completion data
var bronze_completion = o_LevelData.campaign_data.level_1.bronze_time_attained;
var silver_completion = o_LevelData.campaign_data.level_1.silver_time_attained;
var gold_completion = o_LevelData.campaign_data.level_1.gold_time_attained;

//Show trophy based on highest trophy earned
if (gold_completion) {
	
	draw_sprite_ext(s_TrophyGold, 0, tween_x+88, tween_y-74, 1, 1, 0, c_white, tween_alpha);
	exit;
}
else if (silver_completion) {
	
	draw_sprite_ext(s_TrophySilver, 0, tween_x+88, tween_y-74, 1, 1, 0, c_white, tween_alpha);
	exit;
}
else if (bronze_completion) {
	
	draw_sprite_ext(s_TrophyBronze, 0, tween_x+88, tween_y-74, 1, 1, 0, c_white, tween_alpha);
}
