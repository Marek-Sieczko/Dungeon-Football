/// @description Draw text

//Set text properties for stage text
draw_set_font(fnt_LuckiestGuy64);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//Check if trophy sprites need to be faded out
if !(bronze_time_attained) {tween_bronze_trophy_alpha = 0.2;}
else {tween_bronze_trophy_alpha = 1;}
if !(silver_time_attained) {tween_silver_trophy_alpha = 0.2;}
else {tween_silver_trophy_alpha = 1;}
if !(gold_time_attained) {tween_gold_trophy_alpha = 0.2;}
else {tween_gold_trophy_alpha = 1;}


//Draw the stage text
draw_text_ext_transformed_color(tween_stage_number_x, tween_stage_number_y, "Stage " + string(global.LevelSelected), 0, global.View_Width, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

//Set text properties for stage times
draw_set_font(fnt_LuckiestGuy50);
draw_set_halign(fa_left);

//Convert bronze time to MM/SS
var bronze_minutes = bronze_time_to_show div 6000;
var bronze_seconds = bronze_time_to_show div 100 - (bronze_minutes*60);

if bronze_seconds > 9 {var bronze_time_format = string(bronze_minutes) + ":" + string(bronze_seconds);}
else if bronze_seconds < 10 {var bronze_time_format = string(bronze_minutes) + ":0" + string(bronze_seconds);}

//Draw the bronze trophy and time
draw_sprite_ext(s_TrophyBronze, 0, tween_bronze_trophy_x, tween_bronze_trophy_y, 1, 1, 0, c_white, tween_bronze_trophy_alpha);
draw_text_ext_transformed_color(tween_bronze_trophy_time_x, tween_bronze_trophy_time_y - 20, bronze_time_format, 0, global.View_Width, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

//Convert silver time to MM/SS
var silver_minutes = silver_time_to_show div 6000;
var silver_seconds = silver_time_to_show div 100 - (silver_minutes*60);

if silver_seconds > 9 {var silver_time_format = string(silver_minutes) + ":" + string(silver_seconds);}
else if silver_seconds < 10 {var silver_time_format = string(silver_minutes) + ":0" + string(silver_seconds);}

//Draw the silver trophy and time
draw_sprite_ext(s_TrophySilver, 0, tween_silver_trophy_x, tween_silver_trophy_y, 1, 1, 0, c_white, tween_silver_trophy_alpha);
draw_text_ext_transformed_color(tween_silver_trophy_time_x, tween_silver_trophy_time_y - 20, silver_time_format, 0, global.View_Width, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

//Convert gold time to MM/SS
var gold_minutes = gold_time_to_show div 6000;
var gold_seconds = gold_time_to_show div 100 - (gold_minutes*60);

if gold_seconds > 9 {var gold_time_format = string(gold_minutes) + ":" + string(gold_seconds);}
else if gold_seconds < 10 {var gold_time_format = string(gold_minutes) + ":0" + string(gold_seconds);}

//Draw the gold trophy and time
draw_sprite_ext(s_TrophyGold, 0, tween_gold_trophy_x, tween_gold_trophy_y, 1, 1, 0, c_white, tween_gold_trophy_alpha);
draw_text_ext_transformed_color(tween_gold_trophy_time_x, tween_gold_trophy_time_y - 20, gold_time_format, 0, global.View_Width, 1, 1, 0, c_white, c_white, c_white, c_white, 1);

//Convert best time to MM/SS/MS
var minutes_to_show = best_time_to_show div 6000;
var seconds_to_show = best_time_to_show div 100 - (minutes_to_show * 60);
var milliseconds_to_show = best_time_to_show mod 100;
milliseconds_to_show = floor(milliseconds_to_show);

if minutes_to_show > 9 {var minutes_formatted = string(minutes_to_show);}
else if minutes_to_show < 10 {var minutes_formatted = "0" + string(minutes_to_show);}
if seconds_to_show > 9 {var seconds_formatted = ":" + string(seconds_to_show);}
else if seconds_to_show < 10 {var seconds_formatted = ":0" + string(seconds_to_show);}
if milliseconds_to_show > 9 {var milliseconds_formatted = ":" + string(milliseconds_to_show);}
else if milliseconds_to_show < 10 {var milliseconds_formatted = ":0" + string(milliseconds_to_show);}

//Draw best time
draw_set_halign(fa_center);
draw_sprite_ext(s_BestTimeText, 0, tween_best_score_text_x, tween_best_score_text_y, 1, 1, 0, c_white, 1);
if best_time_to_show != 9999999 {
	
	draw_text_ext_transformed_color(tween_best_score_amount_x, tween_best_score_amount_y, string(minutes_formatted) + string(seconds_formatted) + (milliseconds_formatted), 0, global.View_Width, 1, 1, 0, c_white, c_white, c_white, c_white, tween_best_score_amount_alpha);
}
else {

	draw_text_ext_transformed_color(tween_best_score_amount_x, tween_best_score_amount_y, "Not Set", 0, global.View_Width, 1, 1, 0, c_white, c_white, c_white, c_white, tween_best_score_amount_alpha);
}
//Draw level rank
draw_sprite_ext(s_LevelRank, 0, tween_level_rank_text_x, tween_level_rank_text_y, 1, 1, 0, c_white, 1);
draw_text_ext_transformed_color(tween_level_rank_amount_x, tween_level_rank_amount_y , level_rank_to_show, 0, global.View_Width, 1, 1, 0, c_white, c_white, c_white, c_white, tween_level_rank_amount_alpha);

//Animation on screen startup
if (can_enter) {
	
	animation_time_1++;
	
	if (animation_time_1 >= animation_duration_1) {
		
		animation_1_time = 0;
		can_enter = false;
	}
}

//Animation on screen cleanup
if (can_remove) {
	
	animation_time_2++;
	
	if (animation_time_2 >= animation_duration_2) {
		
		animation_2_time = 0;
		can_remove = false;
	}
}