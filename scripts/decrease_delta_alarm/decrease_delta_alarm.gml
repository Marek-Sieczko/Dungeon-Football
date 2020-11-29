// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function decrease_delta_alarm(){
for(var i=0; i<array_length_1d(Alarm); i++){
	//Reduce
	if (Alarm[i] > 0){
		Alarm[i] -= delta;
	}
	//Run
	else if (Alarm[i] <= 0 && Alarm[i] > ALARMINACTIVE){
		Alarm[i] = ALARMINACTIVE;
		event_perform(ev_alarm, i);
	}
}
}