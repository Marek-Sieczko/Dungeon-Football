///@description Setup

// Create the surface to draw all lights.
surface_light = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
light_list = ds_list_create();//The list of all light source id.
blackness_value = 0.8; //The alpha value of the "darkness"

// How to use
/*
When creating a light source you call: fake_light_ini
When removing a light source you call: fake_light_remove (before deleting the instance)
If you want you can easily edit those variables on a light source:
light_x //to move a light on the x axis
light_y //to move a light on the x axis
light_active //to toggle on/off
light_rotation //to rotate a light source
light_color //to change the color of a light source, use c_black for no color

You can also change those variable:
Light_Sprite
light_xscale
light_yscale
light_flick

But if you do so, you need to update the light_range variable using fake_light_max_range
ie:

Light_Sprite = spr_light_circle;
light_xscale = 2;
light_yscale = 2;
light_flick = 0.5;
light_range = fake_light_max_range(Light_Sprite, light_xscale, light_yscale, light_flick);

Or, simply call fake_light_ini(id, spr_light_circle, 3, 3, c_teal, 0.9);

You could also create a custom script that update only certain variable.
