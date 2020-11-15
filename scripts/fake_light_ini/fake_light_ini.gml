///@description Initializes a light source
///@param target
///@param Light_Sprite
///@param light_xscale
///@param light_yscale
///@param Light_Color
///@param Flickering
function fake_light_ini(argument0, argument1, argument2, argument3, argument4, argument5) {

	with(argument0)
	{
	Light_Sprite = argument1; //sprite to use (Always use white sprite with gradient for best result.)
	Light_Xscale = argument2; // Xscale factor of the sprite.
	Light_Yscale = argument3; // Yscale factor of the sprite.
	Light_Color = argument4; // The light color. (Black is no color.)
	Light_Flick = argument5; //Flickering. That affects the size of BOTH Xscale and Yscale. 1 is no flick. Less than 1 flick inside, more than 1 flick outside.
	Light_Range = fake_light_max_range(Light_Sprite, Light_Xscale, Light_Yscale, Light_Flick); //See inside scipt for description
	Light_X = x;//Position, can be updated in step event.
	Light_Y = y;//Position, can be updated in step event.
	Light_Active = 1;//Set to 0 to turn off a light source.
	Light_Rotation = 0;//Rotate the Light's sprite.
	}

	with(obj_light_ctrl)
	{
		if(ds_list_find_index(Light_List, argument0) == -1)//id don't add itself if already on the list.
		{
		ds_list_add(Light_List, argument0);
		}
	}


}
