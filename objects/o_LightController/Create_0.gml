//Create the surface to draw all lights.
surf_light = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));

//The list of all light source id.
light_list = ds_list_create();

blackness_value = 0.95; //The alpha value of the "darkness"

has_paused = false;