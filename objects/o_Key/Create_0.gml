/// @description Setup

//Collsion checks
can_collide = true;
has_collided = false;

//Animation variables
collected_animation_time = 0;
current_x_position = x;
current_y_position = y;
current_angle = image_angle;
hover_animation_1 = true;
animation_time_1 = 0;

//Create paricle effect
particle_timer = 0;
particle_1 = instance_create_layer(x, y, "Wall_Layer", o_key_hovering_sparkle);
