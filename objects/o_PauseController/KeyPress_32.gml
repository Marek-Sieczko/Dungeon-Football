/// @description Unpause

physics_pause_enable(false);
instance_activate_all();

with (o_GameController) {can_pause = true; can_spawn_particles = true;}

sprite_delete(global.Screenshot);

instance_destroy();