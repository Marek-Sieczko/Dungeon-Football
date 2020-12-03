/// @description Setup

// Timer to spawn particles
particle_timer = 0;

// Collsion checks
can_collide = true;
has_collided = false;

// Animation variables
collected_animation_time = 0;
current_x_position = x;
current_y_position = y;
current_angle = image_angle;
hover_animation_1 = true;
animation_time_1 = 0;

// Light variables
light_colour = make_color_rgb(250,250,0);
light_radius = 600;

Alarm[0] = 1; // Create light

// Automatically set to be deactivated
instance_deactivate_object(id);

