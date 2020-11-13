/// @description Draw light

if !(surface_exists(lighting_surface)) {
	
	lighting_surface = surface_create(room_width, room_height);
}

surface_set_target(lighting_surface);

draw_clear_alpha(c_black, 0.6);

with(o_Lighting_Cutout) {
	
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
	
	gpu_set_blendmode(bm_normal);
}

surface_reset_target();

draw_surface(lighting_surface, 0, 0)