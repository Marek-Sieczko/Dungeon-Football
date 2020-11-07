// Save data

function save_level_data(){
	
	// Clear the existing save file
	if (file_exists("maindata.sav"))
	{
		file_delete("maindata.sav");
	}

	// Open a new text file
	var save_file = file_text_open_write("maindata.sav");

	// Convert struct to a json and encode it
	var json_string = snap_to_json(o_LevelData.campaign_data);

	// Write JSON to save file
	file_text_write_string(save_file, json_string);

	// Close save file
	file_text_close(save_file);
}
