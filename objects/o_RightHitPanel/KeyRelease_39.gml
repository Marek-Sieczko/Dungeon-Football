/// @description Released right key

with(o_BallParent) {
	
	power_applied = other.current_power_level;
	hit_type = "right";
	hit = true;
}

o_GameController.can_time = true;
audio_play_sound(snd_FootballTap, 1, false);
current_power_timer = 0;
current_power_level = 0;
can_increase = true;
