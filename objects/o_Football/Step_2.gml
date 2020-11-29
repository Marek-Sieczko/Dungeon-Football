/// @description Make light track the ball
	
Light_X = x;
Light_Y = y;

if (place_meeting(x+phy_speed_x, y+phy_speed_y, o_LevelPieceParent)) {
	
   if (hit_play) {

	  var sound_volume = phy_speed/20;
	  sound_volume = clamp(sound_volume, 0.7, 1.0);
	  audio_sound_gain(snd_FootballCollide, sound_volume, 0)
	  
	  var sound_pitch = -phy_speed/60;
	  sound_pitch = clamp(sound_pitch, 0.8, 1.0);
	  audio_sound_pitch(snd_FootballCollide, sound_pitch);
	  
      audio_play_sound(snd_FootballCollide, 10, false);
      hit_play = false;
   }
}
else {
	
   hit_play = true;
}