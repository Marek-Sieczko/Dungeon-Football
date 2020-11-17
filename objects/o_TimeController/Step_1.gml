/// @description Actions

delta = (delta_time/1000000) * 60;

for (var i = 0; i < array_length_1d(Alarm); ++i) {
    
	if (Alarm[i] > 0) {
		
		Alarm[i] -= delta;
	}
	else if (Alarm[i] <= 0 && Alarm[i] > ALARMINACTIVE) {
		
		Alarm[i] = ALARMINACTIVE;
		event_perform(ev_alarm, i);
	}
}
