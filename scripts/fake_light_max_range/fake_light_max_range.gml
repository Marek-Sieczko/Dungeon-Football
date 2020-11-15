///@description That script calculates the maximum range of the light to ensure it's drawn on the screen if it has to be.
///@param sprite
///@param xscale
///@param yscale
///@param flickering
function fake_light_max_range(argument0, argument1, argument2, argument3) {

	var c_sprite = argument0;
	var x_s = argument1;
	var y_s = argument2;
	var flick = argument3;


	return (max(sprite_get_xoffset(c_sprite)*x_s, sprite_get_width(c_sprite)*x_s-sprite_get_xoffset(c_sprite)*x_s, sprite_get_yoffset(c_sprite)*y_s, sprite_get_height(c_sprite)*y_s-sprite_get_yoffset(c_sprite)*y_s))*flick;



}
