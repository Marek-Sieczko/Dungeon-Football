/// @description Setup

// Create torch flame and set depth under torch
instance_create_layer(x - 18, y-10, "Particles_Background", o_TorchFlame);

alarm[0] = 1; // Create Light

instance_deactivate_object(id);