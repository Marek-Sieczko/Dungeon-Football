
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);

if(!surface_exists(surf_light))
{
surf_light = surface_create(vw, vh);
}

surface_set_target(surf_light);

draw_clear_alpha(c_black, blackness_value); //The opacity of the darkness is set here.

//That part will loops through all objects listed on the list.
var size = ds_list_size(light_list);
var x1, y1;
var count = 0;
var light;
var flick = 0;

repeat(size)
{
light = ds_list_find_value(light_list, count);

    with(light)
    {
        if(Light_Active == 1 && fake_light_is_on_view(view_camera[0], Light_Range))
        {
        x1 = Light_X-camera_get_view_x(view_camera[0]);
        y1 = Light_Y-camera_get_view_y(view_camera[0]);
        flick = choose(1, 1, 1, 1, 1, 1, Light_Flick); //You can add or remove some "1".
        gpu_set_blendmode(bm_subtract); //Punch a gradient hole
        draw_sprite_ext(Light_Sprite, 0, x1, y1, Light_Xscale*flick, Light_Yscale*flick, Light_Rotation, c_black, 1);
        gpu_set_blendmode(bm_add); //Add some color
        draw_sprite_ext(Light_Sprite, 0, x1, y1, Light_Xscale*flick, Light_Yscale*flick, Light_Rotation, Light_Color, 0.5); //Crank the last argument to increase color opacity.
        }
    }
    
count++;
}





gpu_set_blendmode(bm_normal);//Return to normal.

surface_reset_target();//Always reset target!

draw_surface_ext(surf_light, vx, vy, 1, 1, 0, c_white, blackness_value);

////Debug
//draw_set_color(c_white);
//draw_set_valign(fa_top);
//draw_set_halign(fa_left);

//draw_text(vx+2, vy+2, "FPS:"+string(fps));
//draw_text(vx+2, vy+18, "FPS_REAL:"+string(fps_real));
//draw_text(vx+2, vy+34, "R:restart");
//draw_text(vx+2, vy+50, "Space: on/off red lights");
//draw_text(vx+2, vy+66, "'P': removes cat's light ,\r'O': adds the cat's light.");