/// @description Variables

//Draw variables
tween_stage_number_x = 0 + global.View_Width*0.5;
tween_stage_number_y = 0 + global.View_Height*0.25;
tween_bronze_trophy_x = 0 + global.View_Width*0.3;
tween_bronze_trophy_y = 0 + global.View_Height*0.355;
tween_bronze_trophy_alpha = 0;
tween_bronze_trophy_time_x = 0 + global.View_Width*0.35;
tween_bronze_trophy_time_y = 0 + global.View_Height*0.355;
tween_silver_trophy_x = 0 + global.View_Width*0.3;
tween_silver_trophy_y = 0 + global.View_Height*0.41;
tween_silver_trophy_alpha = 0;
tween_silver_trophy_time_x = 0 + global.View_Width*0.35;
tween_silver_trophy_time_y = 0 + global.View_Height*0.41;
tween_gold_trophy_x = 0 + global.View_Width*0.3;
tween_gold_trophy_y = 0 + global.View_Height*0.465;
tween_gold_trophy_alpha = 0;
tween_gold_trophy_time_x = 0 + global.View_Width*0.35;
tween_gold_trophy_time_y = 0 + global.View_Height*0.465;
tween_best_score_text_x = 0 + global.View_Width*0.6;
tween_best_score_text_y = 0 + global.View_Height*0.34;
tween_best_score_amount_x = 0 + global.View_Width*0.6;
tween_best_score_amount_y = 0 + global.View_Height*0.37;
tween_best_score_amount_alpha = 1;
tween_level_rank_text_x = 0 + global.View_Width*0.6;
tween_level_rank_text_y = 0 + global.View_Height*0.43;
tween_level_rank_amount_x = 0 + global.View_Width*0.6;
tween_level_rank_amount_y = 0 + global.View_Height*0.46;
tween_level_rank_amount_alpha = 1;


//Stage data variables to show
bronze_time_attained = o_LevelData.campaign_data.level_1.bronze_time_attained;
bronze_time_to_show = o_LevelData.campaign_data.level_1.bronze_time;
silver_time_attained = o_LevelData.campaign_data.level_1.silver_time_attained;
silver_time_to_show = o_LevelData.campaign_data.level_1.silver_time;
gold_time_attained = o_LevelData.campaign_data.level_1.gold_time_attained;
gold_time_to_show = o_LevelData.campaign_data.level_1.gold_time;
best_time_to_show = o_LevelData.campaign_data.level_1.best_time;
level_rank_to_show = o_LevelData.campaign_data.level_1.level_rank;

//Animation variables
can_enter = true;
animation_time_1 = 0;
animation_duration_1 = 30;

can_remove = false;
animation_time_2 = 0;
animation_duration_2 = 30;
