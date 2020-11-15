///@description Initializes a light source
///@param target
function fake_light_remove(argument0) {

	with(obj_light_ctrl)
	{
	var pos = ds_list_find_index(Light_List, argument0);//id don't remove itself if not on the list.

		if(pos != -1)
		{
		ds_list_delete(Light_List, pos);
		}
	}


}
