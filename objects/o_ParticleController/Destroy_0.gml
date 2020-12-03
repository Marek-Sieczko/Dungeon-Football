/// @description Cleanup

part_particles_clear(global.ParticleSystem);

part_emitter_destroy(global.ParticleSystem, global.pt_FloatingDust);
part_emitter_destroy(global.ParticleSystem, global.pt_Fog);

part_system_destroy(global.ParticleSystem);

instance_destroy();
