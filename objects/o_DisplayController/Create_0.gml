///// @description Setup

global.View_Width = 0;
global.View_Height = 1920; //This is the vertical height I'm designing my game around.
var _aspect = display_get_width() / display_get_height(); //Get the aspect ratio of the display.

// You can use these settings to test out various aspect ratios
//var _aspect = 1080 / 2400; //Galaxy s8 super narrow screen
var _aspect = 480 / 640; //Tablet
//var _aspect = 1080 / 1920; //Standard phone

//Restrict horizontal screen size so elements aren't cut off
if _aspect < .49 {_aspect = .49;}

global.View_Width = round(global.View_Height * _aspect); //Set the view width based on the display.

surface_resize(application_surface, global.View_Width, global.View_Height); //Resize the application surface to the new size.
//surface_resize(application_surface, display_get_width(), display_get_height());
camera_set_view_size(view_camera[0], global.View_Width, global.View_Height);
window_set_size(global.View_Width, global.View_Height); //Finally, set the window size.

var _xcenter = (room_width - global.View_Width)/2;
camera_set_view_pos(view_camera[0], _xcenter, 0);





















////Check the aspect ratio of device
//var device_width = display_get_width();
//var device_height = display_get_height();

//window_set_size(1080,1920); //Testing different aspect ratios

//if device_height < device_width { //in case any device return height as shorter side of device
//    device_height = display_get_width();
//    device_width = display_get_height();
//}

//global.device_aspect = device_height / device_width;
//var native_width = 1080;
//var native_height = 1920;
//var native_aspect = native_height / native_width;

////Assigning camera
//if (global.device_aspect < native_aspect) { // device is more square that native ratio
    
//    global.View_Height = native_height;
//    global.View_Width = global.View_Height / global.device_aspect;
//}
//else { // device is longer than native ratio
    
//    global.View_Width = native_width;
//    global.View_Height = global.View_Width * global.device_aspect;
//}

//var _xcenter = (room_width - global.View_Width)/2;
//camera_set_view_pos(view_camera[0],_xcenter,0);

//camera_set_view_pos(view_camera[0], global.camera_x, global.camera_y)
//camera_set_view_size(view_camera[0], ceil(global.View_Width), ceil(global.View_Height));

//view_wport[0] = device_width;
//view_hport[0] = device_height;

//display_set_gui_size(ceil(global.View_Width), ceil(global.View_Height));
//surface_resize(application_surface, view_wport[0], view_hport[0]);

////Add camera guide
//if !instance_exists(o_CameraGuide) {instance_create_layer(room_width*0.5,room_height - (global.View_Height*0.5), "GUI_Layer", o_CameraGuide);}
