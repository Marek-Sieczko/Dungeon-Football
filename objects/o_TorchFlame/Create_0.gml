/// @description Insert description here
// You can write your code in this editor

//NewEffect Particle System
ps = part_system_create();
part_system_depth(ps, 500);

//NewEffect Particle Types
//Flame
global.pt_Flame = part_type_create();
part_type_shape(global.pt_Flame, pt_shape_flare);
part_type_size(global.pt_Flame, 0.20, 0.30, 0, 0);
part_type_scale(global.pt_Flame, 1, 1);
part_type_orientation(global.pt_Flame, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Flame, 65535, 4235519, 255);
part_type_alpha3(global.pt_Flame, 1, 0.47, 0);
part_type_blend(global.pt_Flame, 1);
part_type_life(global.pt_Flame, 80, 80);
part_type_speed(global.pt_Flame, 0.01, 0.02, 0, 0);
part_type_direction(global.pt_Flame, 0, 360, 0, 0);
part_type_gravity(global.pt_Flame, 0.02, 90);

//Spark
global.pt_Spark = part_type_create();
part_type_shape(global.pt_Spark, pt_shape_pixel);
part_type_size(global.pt_Spark, 1, 1, 0, 0);
part_type_scale(global.pt_Spark, 1, 1);
part_type_orientation(global.pt_Spark, 0, 0, 0, 0, 0);
part_type_color3(global.pt_Spark, 65535, 4235519, 2749951);
part_type_alpha3(global.pt_Spark, 1, 1, 0.27);
part_type_blend(global.pt_Spark, 0);
part_type_life(global.pt_Spark, 100, 120);
part_type_speed(global.pt_Spark, 0.01, 0.02, 0, 0);
part_type_direction(global.pt_Spark, 0, 360, 0, 0);
part_type_gravity(global.pt_Spark, 0.01, 90);

//NewEffect Emitters
global.pe_Flame = part_emitter_create(ps);
global.pe_Spark = part_emitter_create(ps);

//NewEffect emitter positions. Streaming or Bursting Particles.
var xp, yp;
xp = x;
yp = y;
part_emitter_region(ps, global.pe_Flame, xp-2, xp+2, yp-2, yp+2, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Flame, global.pt_Flame, 1);
part_emitter_region(ps, global.pe_Spark, xp-2, xp+2, yp-2, yp+2, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, global.pe_Spark, global.pt_Spark, 1);

//Destroying Emitters
//part_emitter_destroy(ps, global.pe_Flame);
//part_emitter_destroy(ps, global.pe_Spark);