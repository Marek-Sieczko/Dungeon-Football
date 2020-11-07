//Room Setup

//Reset display settings for new room
global.View_Width = 0;
global.View_Height=1920;

var _aspect = display_get_width() / display_get_height();
//var _aspect = 480 / 640; //Tablet size simulation
var _aspect = 1080 / 1920; //Standard phone
if _aspect<.49{_aspect=.49;}

global.View_Width = round(global.View_Height*_aspect);

surface_resize(application_surface, global.View_Width, global.View_Height);
camera_set_view_size(view_camera[0],global.View_Width, global.View_Height);
window_set_size(global.View_Width, global.View_Height);

var _xcenter = (room_width - global.View_Width)/2;
camera_set_view_pos(view_camera[0],_xcenter,0);

//Start game
//instance_create_layer(x, y, "Controllers", o_GameController);

//Load save data ready for updating on stage completion
with (o_GameController) {
	
	current_bronze_time = o_LevelData.campaign_data.level_2.bronze_time;
	current_silver_time = o_LevelData.campaign_data.level_2.silver_time;
	current_gold_time = o_LevelData.campaign_data.level_2.gold_time;
	current_bronze_time_attained = o_LevelData.campaign_data.level_2.bronze_time_attained;
	current_silver_time_attained = o_LevelData.campaign_data.level_2.silver_time_attained;
	current_gold_time_attained = o_LevelData.campaign_data.level_2.gold_time_attained;
	current_best_time = o_LevelData.campaign_data.level_2.best_time;
	next_level_lock_state = o_LevelData.campaign_data.level_3.level_unlocked;
	total_keys = o_LevelData.campaign_data.level_2.total_keys;
	total_coins = o_LevelData.campaign_data.level_2.total_coins;
	
	selected_struct = o_LevelData.campaign_data.level_2;
	next_level_selected_struct = o_LevelData.campaign_data.level_3;
}
