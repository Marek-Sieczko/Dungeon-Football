/// @description Draw sprite

draw_sprite_ext(s_OptionsText, 0, tween_x, tween_y, tween_xscale, tween_yscale, 0, c_white, tween_alpha);

//Check mouse position relative to GUI
_mouse_x = device_mouse_x_to_gui(0);
_mouse_y = device_mouse_y_to_gui(0);

//Get corner co-ordinates of the sprite
x1 = tween_x - sprite_get_xoffset(s_OptionsText);
y1 = tween_y - sprite_get_yoffset(s_OptionsText);
x2 = x1 + sprite_get_width(s_OptionsText);
y2 = y1 + sprite_get_height(s_OptionsText);

//Check if click is within the co-ordinates
if (_mouse_x >= x1) && (_mouse_x <= x2) && (_mouse_y >= y1) && (_mouse_y <= y2) && (can_click) {

	if mouse_check_button_pressed(mb_any){

		audio_play_sound(snd_ButtonPress, 1, false);
	
		o_MainMenuParent.can_remove = true;
	
		delay = true;
		selected_animation_1 = true; 
		can_click = false;
	}
}