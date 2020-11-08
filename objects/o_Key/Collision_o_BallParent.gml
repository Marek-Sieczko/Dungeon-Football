/// @description Collected Key

if (can_collide) && !(has_collided){
	
	switch (o_GameController.current_keys) {
	    case 0: with(o_GameController) {key_1_collected = true; can_animate_key_1 = true;} break;
		case 1: with(o_GameController) {key_2_collected = true; can_animate_key_3 = true;} break;
		case 2: with(o_GameController) {key_3_collected = true; can_animate_key_5 = true;} break;
	}
	
	o_GameController.current_keys++;
	instance_destroy();
	instance_destroy(particle_1);
	instance_create_layer(x, y, "Wall_Layer", o_key_collect);
	audio_play_sound(snd_CoinCollected, 1, false);
	has_collided = true;
	can_collide = false;
}