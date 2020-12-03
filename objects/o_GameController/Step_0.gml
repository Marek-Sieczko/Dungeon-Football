/// @description Check for input from user

// Check if player has started
if (mouse_check_button(mb_any)) & !(has_started) {can_time = true; has_started = true;}

// Check mouse position relative to GUI
_mouse_x = device_mouse_x_to_gui(0);
_mouse_y = device_mouse_y_to_gui(0);

// Control parallax of the background on the y-axis
var offset_y;
offset_y[0] = 500;
layer_y("Background", (camera_get_view_y(view_camera[0])*0.5)+offset_y[0]);

// Control HUD coin flash
if (HUD_coin_amount_flash_alpha > 0) {

	HUD_coin_amount_flash_alpha -= 0.04 * delta;
}

// Check to see if camrea can pan during intro
if (camera_can_pan) {
	
	adjusted_y = ease_inout_sine(camera_pan_timer, 0, 200, camera_pan_duration);
	camera_pan_timer++;
	
	camera_set_view_pos(view_camera[0], room_width*0.5 - global.View_Width*0.5, ((room_height-global.View_Height) - 200) + adjusted_y);
	
	if (camera_pan_timer >= camera_pan_duration) {
		
		camera_pan_timer = 0;
		camera_can_pan = false;
	}
}

// Check to open the exit door
if (current_keys == total_keys) {
	
	audio_play_sound(snd_DoorOpen, 1, false);
	
	with(o_ExitDoor) {
		
		can_move = true;
	}
	current_keys = 0;
}

// Check for stage win
if (stage_completed) {
	
	fade_in_amount = 0.8;
	can_fade_in = true;
	
	audio_play_sound(snd_StageComplete, 1, false);
	
	//alarm[1] = 180;
	stage_completed = false;
}

// Start streaming fog and dust particles
if (can_spawn_particles) {
	
	var cam_x = camera_get_view_x(view_camera[0]);
	var cam_y = camera_get_view_y(view_camera[0]);
	var xp = cam_x;
	var yp = cam_y;
	
	// Floating dungeon dust particle effect
	global.pe_FloatingDust = part_emitter_create(global.ParticleSystem);
	part_emitter_region(global.ParticleSystem, global.pe_FloatingDust, xp-room_width, xp+room_width, yp-room_height, yp+room_height, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(global.ParticleSystem, global.pe_FloatingDust, global.pt_FloatingDust, 10);

	// Dungeon fog particle effect
	global.pe_Fog = part_emitter_create(global.ParticleSystem);
	part_emitter_region(global.ParticleSystem, global.pe_Fog, xp-room_width, xp+room_width, yp-room_height, yp+room_height, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(global.ParticleSystem, global.pe_Fog, global.pt_Fog, 1);
	
	can_spawn_particles = false;
}