/// @description Control particles

particle_timer++;

if (particle_timer == 4) && (can_spawn) {
	
	global.pe_TorchFlame = part_emitter_create(global.ParticleSystem);
	global.pe_TorchSpark = part_emitter_create(global.ParticleSystem);

	//NewEffect emitter positions. Streaming or Bursting Particles.
	var xp, yp;
	xp = x;
	yp = y;
	part_emitter_region(global.ParticleSystem, global.pe_TorchFlame, xp+15, xp+19, yp-2, yp+2, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(global.ParticleSystem, global.pe_TorchFlame, global.pt_TorchFlame, 1);
	part_emitter_region(global.ParticleSystem, global.pe_TorchSpark, xp+15, xp+19, yp-2, yp+2, ps_shape_rectangle, ps_distr_linear);
	part_emitter_stream(global.ParticleSystem, global.pe_TorchSpark, global.pt_TorchSpark, 1);
}
