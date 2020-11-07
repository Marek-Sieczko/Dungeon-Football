/// @description Setup

//Set amount of coins to draw
coin_count = global.CoinAmount;

//Set variables to control animations in the draw event
tween_coin_x = room_width*0.5 + global.View_Width*0.35;
tween_coin_y = room_width*0.5 - global.View_Height*0.9;
tween_coin_xscale = 1;
tween_coin_yscale = 1;
tween_coin_alpha = 0;
coin_colour = c_white;

tween_total_coins_x = room_width*0.5 + global.View_Width*0.38;
tween_total_coins_y = room_width*0.5 - global.View_Height*0.9;
tween_total_coins_xscale = 1;
tween_total_coins_yscale = 1;
tween_total_coins_alpha = 0;

can_increase_coins = false;
increase_coins_animation_time_1 = 0;
