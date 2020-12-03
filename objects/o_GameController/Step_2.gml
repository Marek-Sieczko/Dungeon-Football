/// @description Control free cam

// ACtivates all way dynaminc camera panning
if (can_activate_free_cam) {

	// Update destination
	if (instance_exists(follow)) {
		
		xTo = follow.x;
		yTo = follow.y;
	}

	// Update object position
	x += (xTo - x) / 25;
	y += (yTo - y) / 25;

	// Update view size
	zoomXTo = default_zoom_width * zoom_level;
	zoomyTo = default_zoom_height * zoom_level;
	currW += (zoomXTo - camera_get_view_width(cam)) / 25;
	currH += (zoomyTo - camera_get_view_height(cam)) / 25;
	camera_set_view_size(cam, currW, currH);

	view_w_half = camera_get_view_width(cam) * 0.5;
	view_h_half = camera_get_view_height(cam) * 0.5;

	// Clamp camera 
	x = clamp(x, view_w_half, room_width - view_w_half);
	y = clamp(y, view_h_half, room_height - view_h_half);

	// Update camera position
	camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
}
