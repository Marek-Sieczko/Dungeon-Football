/// @description Start stage completion actions

// Trigger stage completion
if !(has_collided) {
	
	with (o_GameController) {has_completed = true;}

	instance_destroy(o_BallParent);
}
