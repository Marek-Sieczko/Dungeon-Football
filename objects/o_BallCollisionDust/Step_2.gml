/// @description Insert description here
// You can write your code in this editor

if (can_create) {
	
	ps = part_system_create();
	part_system_depth(ps, 100);

	//NewEffect Particle Types
	//Effect1
	global.pt_Effect1 = part_type_create();
	part_type_shape(global.pt_Effect1, pt_shape_cloud);
	part_type_size(global.pt_Effect1, 0.5, 1.0, 0.02, 0);
	part_type_scale(global.pt_Effect1, 1, 1);
	part_type_orientation(global.pt_Effect1, 0, 0, 0, 0, 0);
	part_type_color3(global.pt_Effect1, 14737363, 14147281, 14737363);
	part_type_alpha3(global.pt_Effect1, 0, 0.40, 0);
	part_type_blend(global.pt_Effect1, 0);
	part_type_life(global.pt_Effect1, 80, 160);
	part_type_speed(global.pt_Effect1, 0.2, 0.4, 0, 0);
	part_type_direction(global.pt_Effect1, particle_min_direction, particle_max_direction, 0, 0);
	part_type_gravity(global.pt_Effect1, 0.00, 90);
	
	//NewEffect Emitters
	global.pe_Effect1 = part_emitter_create(ps);

	//NewEffect emitter positions. Streaming or Bursting Particles.
	var xp, yp;
	xp = x;
	yp = y;
	part_emitter_region(ps, global.pe_Effect1, xp+0, xp+0, yp+0, yp+0, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(ps, global.pe_Effect1, global.pt_Effect1, particle_amount);

	//Destroying Emitters
	//part_emitter_destroy(ps, global.pe_Effect1);
	
	can_create = false;
}