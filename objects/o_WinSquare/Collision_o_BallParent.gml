/// @description Insert description here
// You can write your code in this editor

if !(has_collided) {
	
	with (o_GameController) {
	
		can_time = false;
		can_restart = true;
	}
	instance_destroy(o_BallParent);
	has_collided = true;
}