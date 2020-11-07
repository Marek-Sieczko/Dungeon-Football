/// @description Draw trail and flash

if (flash_alpha > 0) {
	
	gpu_set_blendmode(bm_add);
	shader_set(shd_flash); 
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, dir, c_white, flash_alpha);
	draw_sprite_ext(s_FootballShadow, 0, x, y, 1, 1, 0, c_white, 0.3);
	shader_reset();
}
else {
	
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, dir, c_white, 1);
	draw_sprite_ext(s_FootballShadow, 0, x, y, 1, 1, 0, c_white, 0.3);
}

gpu_set_blendmode(bm_normal);
