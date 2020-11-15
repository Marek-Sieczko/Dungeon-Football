/// @description Insert description here
// You can write your code in this editor

if (has_collided) {
	
	audio_play_sound(snd_CoinCollected, 1, false);

	instance_create_layer(x, y, "Wall_Layer", o_key_collect);

	switch (o_GameController.current_keys) {
	
		case 0: with(o_GameController) {key_1_collected = true; can_animate_key_1 = true; current_keys++;} break;
		case 1: with(o_GameController) {key_2_collected = true; can_animate_key_3 = true; current_keys++;} break;
		case 2: with(o_GameController) {key_3_collected = true; can_animate_key_5 = true; current_keys++;} break;
	}

	fake_light_remove(static_light);
	instance_destroy(particle_1);
	instance_destroy();
}