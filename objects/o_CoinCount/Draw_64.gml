/// @description Draw and animate coin/coin text

//Set variables for text
draw_set_font(fnt_LuckiestGuy100);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

//Draw coin
draw_sprite_ext(s_TourneyCoin, 0, tween_coin_x, tween_coin_y, tween_coin_xscale, tween_coin_yscale, 0, coin_colour, tween_coin_alpha);

//Draw coin text
draw_text_ext_transformed_color(tween_total_coins_x, tween_total_coins_y, coin_count, 0, global.View_Width, tween_total_coins_xscale, tween_total_coins_yscale, 0, c_white, c_white, c_white, c_white, tween_total_coins_alpha)

if (can_increase_coins) {
	
	increase_coins_animation_time_1++;
	
	if (increase_coins_animation_time_1 >= 6) {
		
		increase_coins_animation_time_1 = 0;
		can_increase_coins = false;
	}
}