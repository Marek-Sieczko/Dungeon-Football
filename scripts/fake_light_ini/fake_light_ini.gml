///@description Initializes a light source

///@param target
///@param light_sprite
///@param light_xscale
///@param light_yscale
///@param light_color
///@param Flickering

function fake_light_ini(argument0, argument1, argument2, argument3, argument4, argument5) {

	with(argument0) {
		
		light_sprite = argument1; //sprite to use (Always use white sprite with gradient for best result.)
		light_xscale = argument2; // Xscale factor of the sprite.
		light_yscale = argument3; // Yscale factor of the sprite.
		light_color = argument4; // The light color. (Black is no color.)
		light_flick = argument5; //Flickering. That affects the size of BOTH Xscale and Yscale. 1 is no flick. Less than 1 flick inside, more than 1 flick outside.
		light_range = fake_light_max_range(light_sprite, light_xscale, light_yscale, light_flick); //See inside scipt for description
		light_x = x;//Position, can be updated in step event.
		light_y = y;//Position, can be updated in step event.
		light_active = 1;//Set to 0 to turn off a light source.
		light_rotation = 0;//Rotate the Light's sprite.
	}

	with(obj_light_ctrl) {
		
		if(ds_list_find_index(light_list, argument0) == -1) {//id don't add itself if already on the list.
		
			ds_list_add(light_list, argument0);
		}
	}
}
