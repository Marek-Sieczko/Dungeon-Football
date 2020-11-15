//Simple movement and collision.
var mx = 0;
var my = 0;

if(keyboard_check(vk_up))
{
image_speed = 1;
sprite_index = spr_cat_up;
my -= Speed;
Light_Rotation = 90;//Update the rotation of a light
}
else if(keyboard_check(vk_down))
{
image_speed = 1;
sprite_index = spr_cat_down;
my += Speed;
Light_Rotation = 270;
}
else if(keyboard_check(vk_left))
{
image_speed = 1;
sprite_index = spr_cat_left;
mx -= Speed;
Light_Rotation = 180;
}
else if(keyboard_check(vk_right))
{
image_speed = 1;
sprite_index = spr_cat_right;
mx += Speed;
Light_Rotation = 0;
}
else
{
image_speed = 0;
}

if(mx != 0 || my != 0)
{
var x1 = x+((sprite_width/2-4)*sign(mx));
var y1 = y+((sprite_height/2-4)*sign(my));

	if(tilemap_get_at_pixel(global.layer_side, x1+mx, y1+my) == 0 && tilemap_get_at_pixel(global.layer_top, x1+mx, y1+my) == 0)
	{
	x += mx;
	y += my;
	Light_X = x;//Update Light_X and Light_Y each step to move the light around.
	Light_Y = y;
	}

}

//Center the camera
var vx = camera_get_view_width(view_camera[0])/2;
var vy = camera_get_view_height(view_camera[0])/2;

vx = clamp(x-vx, 0, room_width-1024);
vy = clamp(y-vy, 0, room_height-768);

camera_set_view_pos(view_camera[0], vx, vy);











