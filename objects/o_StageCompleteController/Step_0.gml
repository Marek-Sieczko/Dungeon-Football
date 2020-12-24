/// @description Actions

// Control levelling
if (current_xp >= current_level * 10){
	
	current_xp = (current_xp - (current_level * 10));
	current_level++;
	level_up_animation_1 = true;
	
	if (current_level mod 10 == 1) {
		
		shield_rank_icon_flash_alpha = 1;
		current_rank++;
	}
}

// Control shieild flash
if (shield_rank_icon_flash_alpha > 0) {

	shield_rank_icon_flash_alpha -= 0.04 * delta;
}

// Control the size of the xp bar
xp_bar_xscale = (current_xp/current_level*10) / 100;