/// @description Check for input from user

// Check if player has started
if (mouse_check_button(mb_any)) & !(has_started) {can_time = true; has_started = true;}

// Check mouse position relative to GUI
_mouse_x = device_mouse_x_to_gui(0);
_mouse_y = device_mouse_y_to_gui(0);

// Check for win
if current_keys == total_keys {
	
	with(o_ExitDoor) {
		can_move = true;
	}
	current_keys = 0;
}

// Restart game
if (can_restart) {
	
	alarm[1] = 180;
	can_restart = false;
}
