/// @description Check for input from user

// Check if player has started
if (mouse_check_button(mb_any)) & !(has_started) {can_time = true; has_started = true;}

// Check mouse position relative to GUI
_mouse_x = device_mouse_x_to_gui(0);
_mouse_y = device_mouse_y_to_gui(0);

// Check for win
if current_keys == total_keys {
	
	show_debug_message("current_keys == total_keys")
	with(o_ExitDoor) {
		can_move = true;
		show_debug_message("door open")
	}
	current_keys = 0;
}

// Restart game
if (can_restart) {
	
	var black_screen = instance_create_layer(x, y, "GUI_Layer", o_BlackBox);
	
	with (black_screen) {can_fade_in = true;}
	
	audio_play_sound(snd_StageComplete, 1, false);
	
	alarm[1] = 180;
	can_restart = false;
}

//show_debug_message("total keys: " + string(total_keys));
//show_debug_message("current keys: " + string(current_keys));
