///@description Draw light

// Get view coordinates
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

// Create surface at vire coordinates
if(!surface_exists(surface_light)) {
	
	surface_light = surface_create(vw, vh);
}

surface_set_target(surface_light);

// Draw blackness to the screen (canvas to be punched through)
draw_clear_alpha(c_black, blackness_value); //The opacity of the darkness is set here.

var size = ds_list_size(light_list);
var x1, y1;
var count = 0;
var light;
//var flick = 0;

repeat(size) { // Check DS list as many times as there are lights in the room
	
	light = ds_list_find_value(light_list, count); // Place light IDs into a variable

    with(light) {

		
        if(light_active == 1 && fake_light_is_on_view(view_camera[0], light_range)) {
			
	        x1 = light_x-camera_get_view_x(view_camera[0]);
	        y1 = light_y-camera_get_view_y(view_camera[0]);
	       // flick = choose(1, 1, 1, 1, 1, 1, light_flick); //You can add or remove some "1".
			
	        gpu_set_blendmode(bm_subtract); //Punch a gradient hole
	        draw_sprite_ext(light_sprite, 0, x1, y1, light_xscale, light_yscale, light_rotation, c_black, 1);
	        gpu_set_blendmode(bm_zero); //Add some color
	        draw_sprite_ext(light_sprite, 0, x1, y1, light_xscale, light_yscale, light_rotation, light_color, 0.5); //Crank the last argument to increase color opacity.
        }
    } 
	count++;
}

gpu_set_blendmode(bm_normal);//Return to normal.
surface_reset_target();//Always reset target!

draw_surface_ext(surface_light, vx, vy, 1, 1, 0, c_white, blackness_value);
