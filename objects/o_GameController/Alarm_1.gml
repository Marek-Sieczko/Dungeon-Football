/// @description Level end actions

if (milliseconds <= current_gold_time) {

	if !(current_gold_time_attained) {selected_struct.gold_time_attained = true;}
	if !(current_silver_time_attained) {selected_struct.silver_time_attained = true;}
	if !(current_bronze_time_attained) {selected_struct.bronze_time_attained = true;}
}
else if (milliseconds <= current_silver_time) && (milliseconds > current_gold_time) {
	
	if !(current_silver_time_attained) {selected_struct.silver_time_attained = true;}
	if !(current_bronze_time_attained) {selected_struct.bronze_time_attained = true;}
}
else if (milliseconds <= current_bronze_time)  && (milliseconds > current_silver_time){
	
	if !(current_bronze_time_attained) {selected_struct.bronze_time_attained = true;}
}

if (milliseconds < current_best_time) {
	
	selected_struct.best_time = milliseconds;
}

if !(next_level_lock_state) {
	
	next_level_selected_struct.level_unlocked = true;
}

save_level_data();
room_goto(rm_Main_Menu);