/// @description Check for input from user

//Check mouse position relative to GUI
_mouse_x = device_mouse_x_to_gui(0);
_mouse_y = device_mouse_y_to_gui(0);

//Check for win
if current_keys == total_keys {
	
	with(o_ExitDoor) {
		can_move = true;
	}
	current_keys = 0;
}

//Restart game
if (can_restart) {
	
	alarm[1] = 180;
	can_restart = false;
}

///Swipe Action Individualy
if (device_mouse_check_button_pressed(0, mb_left))
    {
    Swipe = true;
    MouseXStart = mouse_x;
    MouseYStart = mouse_y;
    }

if (Swipe = true) {
	
MouseX = mouse_x;
MouseY = mouse_y;
SwipeTime++;
PD = point_direction(MouseXStart, MouseYStart, MouseX, MouseY);

    if (device_mouse_check_button_released(0, mb_left)) {
		
	    Swipe = false;
	    SwipeSpeed = point_distance(MouseXStart, MouseYStart, MouseX, MouseY) / SwipeTime;
	    SwipeTime = 0;
 
        if ((PD > 45) and (PD < 135)) //Up
        and (SwipeSpeed > 4.5) {
			
			with(o_BallParent) {
	
				power_applied = -5;
				hit_type = "vertical";
				hit = true;
			}
        } else
        
		if ((PD > 225) and (PD < 315)) //Down
        and (SwipeSpeed > 4.5) {
			
	         with(o_BallParent) {
	
				power_applied = 15;
				hit_type = "vertical";
				hit = true;
			}
        }
    }
}