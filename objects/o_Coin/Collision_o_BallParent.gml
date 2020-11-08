/// @description Collected Coin

if (can_collide) && !(has_collided){
	
	o_GameController.current_coins++;
	
	instance_create_layer(x, y, "Wall_Layer", o_key_collect);
	
	audio_play_sound(snd_CoinCollected, 1, false);
	
	instance_destroy();
	instance_destroy(particle_1);
	
	has_collided = true;
	can_collide = false;
}