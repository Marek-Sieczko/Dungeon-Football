/// @description Check for input from user

// Check if player has started
if (mouse_check_button(mb_any)) & !(has_started) {can_time = true; has_started = true;}

// Check mouse position relative to GUI
_mouse_x = device_mouse_x_to_gui(0);
_mouse_y = device_mouse_y_to_gui(0);

// Check for win
if current_keys == total_keys {
	
	audio_play_sound(snd_DoorOpen, 1, false);
	
	with(o_ExitDoor) {
		can_move = true;
	}
	current_keys = 0;
}

// Restart game
if (can_restart) {
	
	with(obj_light_ctrl) {
		
		Blackness_Value += 0.02;
	}
	
	audio_play_sound(snd_StageComplete, 1, false);
	instance_destroy(dungeon_dust);
	instance_destroy(dungeon_fog);
	
	alarm[1] = 180;
	can_restart = false;
}

var offset_y;
offset_y[0] = 500;

layer_y("Background", (camera_get_view_y(view_camera[0])*0.5)+offset_y[0]);
