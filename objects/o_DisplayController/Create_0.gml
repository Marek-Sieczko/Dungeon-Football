///// @description Setup

global.View_Width = 0;
global.View_Height = 1920; //This is the vertical height I'm designing my game around.
var _aspect = display_get_width() / display_get_height(); //Get the aspect ratio of the display.

// You can use these settings to test out various aspect ratios
//var _aspect = 1080 / 2400; //Galaxy s8 super narrow screen
//var _aspect = 480 / 640; //Tablet
var _aspect = 1080 / 1920; //Standard phone

//Restrict horizontal screen size so elements aren't cut off
if _aspect < .49 {_aspect = .49;}

global.View_Width = round(global.View_Height * _aspect); //Set the view width based on the display.

surface_resize(application_surface, global.View_Width, global.View_Height); //Resize the application surface to the new size.
//surface_resize(application_surface, display_get_width(), display_get_height());
camera_set_view_size(view_camera[0], global.View_Width, global.View_Height);
window_set_size(global.View_Width, global.View_Height); //Finally, set the window size.

var _xcenter = (room_width - global.View_Width)/2;
camera_set_view_pos(view_camera[0], _xcenter, 0);

show_debug_message("display controller created");