/// @description Insert description here
// You can write your code in this editor

can_collide = true;
has_collided = false;

collected_animation_time = 0;
current_position = y;

//Create paricle effect
particle_timer = 0;
particle_1 = instance_create_layer(x, y, "Wall_Layer", o_key_hovering_sparkle);