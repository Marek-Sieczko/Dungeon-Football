///@description That script checks if object's light has to be drawn on the view.
///@param view
///@param max_range
function fake_light_is_on_view(argument0, argument1) {

	var t_view = argument0;
	var max_range = argument1;

	var vx = camera_get_view_x(t_view);
	var vy = camera_get_view_y(t_view);
	var vw = camera_get_view_width(t_view);
	var vh = camera_get_view_height(t_view);

	if(x > vx-max_range && x < vx+vw+max_range && y > vy-max_range && y < vy+vh+max_range)
	{
	return true;
	}
	else
	{
	return false;
	}



}
