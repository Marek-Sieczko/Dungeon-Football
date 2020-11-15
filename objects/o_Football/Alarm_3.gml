/// @description Insert description here
// You can write your code in this editor

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

instance_activate_region(vx-1000 , vy-1000 , vw+2000 , vh+2000 , true);

alarm[3] = 3;