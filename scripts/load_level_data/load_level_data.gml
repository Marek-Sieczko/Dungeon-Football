// Load the game
function load_level_data() {
	
	// Check save file exists before trying to load it
	if (file_exists("maindata.sav")) {
		
		// Open the save file
		var load_file = file_text_open_read("maindata.sav");
		
		// Convert the file into a string
		var json_string = file_text_read_string(load_file);
		
		// Convert the JSON string back into a struct
		var level_data = snap_from_json(json_string);
		
		// Set existing struct to saved struct
		o_LevelData.campaign_data = level_data;
		
		// Close the file
		file_text_close(load_file);
	}
}
