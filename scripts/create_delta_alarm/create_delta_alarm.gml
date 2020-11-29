// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_delta_alarm(){
	global.delta_factor = 1;
#macro delta global.delta_factor

//alarms
#macro ALARMINACTIVE -100

for(var i=0; i<12; i++){
	Alarm[i] = ALARMINACTIVE;
}

//Test
second = 0;
Alarm[0] = 60;


}