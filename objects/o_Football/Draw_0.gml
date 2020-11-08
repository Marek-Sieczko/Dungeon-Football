/// @description Draw power bar

if mouse_check_button(mb_any) {
	
	start_x1 = x + lengthdir_x(node_1_length, angle_between); start_y1 = y + lengthdir_y(node_1_length, angle_between);
	start_x2 = x + lengthdir_x(node_2_length, angle_between); start_y2 = y + lengthdir_y(node_2_length, angle_between);
	start_x3 = x + lengthdir_x(node_3_length, angle_between); start_y3 = y + lengthdir_y(node_3_length, angle_between);
	start_x4 = x + lengthdir_x(node_4_length, angle_between); start_y4 = y + lengthdir_y(node_4_length, angle_between);
	start_x5 = x + lengthdir_x(node_5_length, angle_between); start_y5 = y + lengthdir_y(node_5_length, angle_between);
	start_x6 = x + lengthdir_x(node_6_length, angle_between); start_y6 = y + lengthdir_y(node_6_length, angle_between);
	start_x7 = x + lengthdir_x(node_7_length, angle_between); start_y7 = y + lengthdir_y(node_7_length, angle_between);
	start_x8 = x + lengthdir_x(node_8_length, angle_between); start_y8 = y + lengthdir_y(node_8_length, angle_between);
	start_x9 = x + lengthdir_x(node_9_length, angle_between); start_y9 = y + lengthdir_y(node_9_length, angle_between);
	start_x10 = x + lengthdir_x(node_10_length, angle_between); start_y10 = y + lengthdir_y(node_10_length, angle_between);

	
	draw_sprite_ext(s_WhiteNode, 0, start_x1, start_y1, node_1_image_xscale, node_1_image_yscale, angle_between, c_white, node_1_image_alpha);
	draw_sprite_ext(s_WhiteNode, 0, start_x2, start_y2, node_2_image_xscale, node_2_image_yscale, angle_between, c_white, node_2_image_alpha);
	draw_sprite_ext(s_WhiteNode, 0, start_x3, start_y3, node_3_image_xscale, node_3_image_yscale, angle_between, c_white, node_3_image_alpha);
	draw_sprite_ext(s_WhiteNode, 0, start_x4, start_y4, node_4_image_xscale, node_4_image_yscale, angle_between, c_white, node_4_image_alpha);
	draw_sprite_ext(s_WhiteNode, 0, start_x5, start_y5, node_5_image_xscale, node_5_image_yscale, angle_between, c_white, node_5_image_alpha);
	draw_sprite_ext(s_WhiteNode, 0, start_x6, start_y6, node_6_image_xscale, node_6_image_yscale, angle_between, c_white, node_6_image_alpha);
	draw_sprite_ext(s_WhiteNode, 0, start_x7, start_y7, node_7_image_xscale, node_7_image_yscale, angle_between, c_white, node_7_image_alpha);
	draw_sprite_ext(s_WhiteNode, 0, start_x8, start_y8, node_8_image_xscale, node_8_image_yscale, angle_between, c_white, node_8_image_alpha);
	draw_sprite_ext(s_YellowNode, 0, start_x9, start_y9, node_9_image_xscale, node_9_image_yscale, angle_between, c_white, node_9_image_alpha);
	draw_sprite_ext(s_RedNode, 0, start_x10, start_y10, node_10_image_xscale, node_10_image_yscale, angle_between, c_white, node_10_image_alpha);
}
