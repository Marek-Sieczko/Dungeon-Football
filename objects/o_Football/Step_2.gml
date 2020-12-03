/// @description Make light track the ball
	
Light_X = x;
Light_Y = y;

if (place_meeting(x+phy_speed_x, y+phy_speed_y, o_LevelPieceParent)) {
	
   if (hit_play) {
		
		var sound_volume = phy_speed/20;
		sound_volume = clamp(sound_volume, 0.7, 1.0);
		audio_sound_gain(snd_FootballCollide, sound_volume, 0)
	  
		var sound_pitch = -phy_speed/60;
		sound_pitch = clamp(sound_pitch, 0.7, 1.0);
		audio_sound_pitch(snd_FootballCollide, sound_pitch);
	  
	    audio_play_sound(snd_FootballCollide, 10, false);
	    hit_play = false;
   }
}
else {
	
   hit_play = true;
}

if (power_hit) {
	
	trail_timer++

	global.pe_PowerHit = part_emitter_create(global.ParticleSystem);
	var xp, yp;
	xp = x;
	yp = y;
	part_emitter_region(global.ParticleSystem, global.pe_PowerHit, xp-24, xp+24, yp-24, yp+24, ps_shape_ellipse, ps_distr_linear);
	part_emitter_burst(global.ParticleSystem, global.pe_PowerHit, global.pt_PowerHit, 1);

	if (trail_timer >= trail_timer_duration) {
		
		part_emitter_destroy(global.ParticleSystem, global.pt_PowerHit);
		power_hit = false;
		trail_timer = 0;
	
	}
}