/// @description Insert description here
// You can write your code in this editor

if (has_collided) {
	
	instance_destroy();
	
	//y = ease_out_sine(collected_animation_time, y, -10, 30);
	//image_alpha = ease_linear(collected_animation_time, 1, -1, 30);
	//collected_animation_time++;
	
	//if (collected_animation_time >= 30) {
		
	//	var random_coin_width = random_range(global.View_Width*0.1, global.View_Width*0.9);
	//	var random_coin_height = random_range(global.View_Height*0.3, -global.View_Height*0.5);
	//	instance_create_layer(random_coin_width, random_coin_height, "User_Layer_1", o_Coin);
		
	//	instance_destroy();
	//}
}

particle_timer++;

if (particle_timer mod 10 == 0) {
	
	particle_1 = instance_create_layer(x, y, "Wall_Layer", o_key_hovering_sparkle);
}