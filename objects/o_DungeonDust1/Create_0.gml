//Generated for GMS2 in Geon FX v1.2.3
//Put this code in Create event

//NewEffect Particle System
ps = part_system_create();
part_system_depth(ps, -1);

//NewEffect Particle Types
//Effect1
global.pt_Effect1 = part_type_create();
part_type_shape(global.pt_Effect1, pt_shape_flare);
part_type_size(global.pt_Effect1, 0.05, 0.3, 0, 0);
part_type_scale(global.pt_Effect1, 1, 1);
part_type_orientation(global.pt_Effect1, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Effect1, 15526823, 15526823, 16646012);
part_type_alpha3(global.pt_Effect1, 0, 0.54, 0);
part_type_blend(global.pt_Effect1, 0);
part_type_life(global.pt_Effect1, 80, 180);
part_type_speed(global.pt_Effect1, 0.3, 1.2, 0, 0);
part_type_direction(global.pt_Effect1, 0, 360, 0, 0);
part_type_gravity(global.pt_Effect1, 0, 0);

//NewEffect Emitters
global.pe_Effect1 = part_emitter_create(ps);

//NewEffect emitter positions. Streaming or Bursting Particles.
var xp, yp;
xp = x;
yp = y;
part_emitter_region(ps, global.pe_Effect1, xp-room_width, xp+room_width, yp-room_height, yp+room_height, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Effect1, global.pt_Effect1, 2);

//Destroying Emitters
//part_emitter_destroy(ps, global.pe_Effect1);