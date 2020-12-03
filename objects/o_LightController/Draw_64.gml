/// @description Apply bloom

if (has_paused) {
	
	global.Screenshot = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
	
	has_paused = false;
}
