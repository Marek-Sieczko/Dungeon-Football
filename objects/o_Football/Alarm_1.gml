/// @description Activate region within view

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

instance_activate_region(vx, vy, vw, vh, true);

alarm[1] = 3;
