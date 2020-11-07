/// @description Set up main screen

//Variables to detect when a new screen needs to be created
can_create_main_screen = true;
can_create_campaign_screen = false;
can_create_balls_screen = false;
can_create_store_screen = false;
can_create_options_screen = false;

load_level_data();

//Create a black screen at full opacity
black_screen = instance_create_layer(x, y, "GUI_Layer", o_BlackBox);
//Set black screen to fade out
with (black_screen) {
	
	can_fade = true;
}
