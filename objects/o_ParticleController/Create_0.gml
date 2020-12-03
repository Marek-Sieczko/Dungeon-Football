/// @description Setup

//Create particle system
global.ParticleSystem = part_system_create();
part_system_depth(global.ParticleSystem, 100);

// Ball collision dust
global.pt_CollisionDust = part_type_create();
part_type_shape(global.pt_CollisionDust, pt_shape_cloud);
part_type_size(global.pt_CollisionDust, 0.5, 1.0, 0.02, 0);
part_type_scale(global.pt_CollisionDust, 1, 1);
part_type_orientation(global.pt_CollisionDust, 0, 0, 0, 0, 0);
part_type_color3(global.pt_CollisionDust, 14737363, 14147281, 14737363);
part_type_alpha3(global.pt_CollisionDust, 0, 0.40, 0);
part_type_blend(global.pt_CollisionDust, 0);
part_type_life(global.pt_CollisionDust, 80, 160);
part_type_speed(global.pt_CollisionDust, 0.2, 0.4, 0, 0);
part_type_direction(global.pt_CollisionDust, 0, 360, 0, 0);
part_type_gravity(global.pt_CollisionDust, 0.00, 90);

// Dungeon fog
global.pt_Fog = part_type_create();
part_type_shape(global.pt_Fog, pt_shape_pixel);
part_type_sprite(global.pt_Fog, s_FogParticle, 1, 0, 0);
part_type_size(global.pt_Fog, 1, 2, 0, 0);
part_type_scale(global.pt_Fog, 1, 1);
part_type_orientation(global.pt_Fog, 0, 360, 0, 0, 0);
part_type_color3(global.pt_Fog, 14737632, 14737632, 14737632);
part_type_alpha3(global.pt_Fog, 0, 0.4, 0);
part_type_blend(global.pt_Fog, 0);
part_type_life(global.pt_Fog, 100, 200);
part_type_speed(global.pt_Fog, 0.1, 0.2, 0, 0);
part_type_direction(global.pt_Fog, 0, 360, 0, 0);
part_type_gravity(global.pt_Fog, 0.01, 180);

// Floating dust
global.pt_FloatingDust = part_type_create();
part_type_shape(global.pt_FloatingDust, pt_shape_flare);
part_type_size(global.pt_FloatingDust, 0.05, 0.3, 0, 0);
part_type_scale(global.pt_FloatingDust, 1, 1);
part_type_orientation(global.pt_FloatingDust, 0, 0, 0, 0, 0);
part_type_color3(global.pt_FloatingDust, 16776955, 16776955, 16776955);
part_type_alpha3(global.pt_FloatingDust, 0, 0.54, 0);
part_type_blend(global.pt_FloatingDust, 1);
part_type_life(global.pt_FloatingDust, 80, 180);
part_type_speed(global.pt_FloatingDust, 0.3, 1.2, 0, 0);
part_type_direction(global.pt_FloatingDust, 0, 360, 0, 0);
part_type_gravity(global.pt_FloatingDust, 0, 0);

// Key collect
global.pt_KeyCollect = part_type_create();
part_type_shape(global.pt_KeyCollect, pt_shape_flare);
part_type_size(global.pt_KeyCollect, 0.50, 0.70, 0, 0);
part_type_scale(global.pt_KeyCollect, 1, 1);
part_type_orientation(global.pt_KeyCollect, 0, 0, 0, 0, 0);
part_type_color3(global.pt_KeyCollect, 524285, 2213887, 313087);
part_type_alpha3(global.pt_KeyCollect, 1, 0.50, 0);
part_type_blend(global.pt_KeyCollect, 1);
part_type_life(global.pt_KeyCollect, 60, 120);
part_type_speed(global.pt_KeyCollect, 8, 14, -0.30, 0);
part_type_direction(global.pt_KeyCollect, 0, 360, 0, 0);
part_type_gravity(global.pt_KeyCollect, 0, 90);

// Key sparkle
global.pt_KeySparkle = part_type_create();
part_type_shape(global.pt_KeySparkle, pt_shape_flare);
part_type_size(global.pt_KeySparkle, 0.20, 0.50, 0, 0);
part_type_scale(global.pt_KeySparkle, 1, 1);
part_type_orientation(global.pt_KeySparkle, 0, 0, 0, 0, 0);
part_type_color3(global.pt_KeySparkle, 320255, 320255, 320255);
part_type_alpha3(global.pt_KeySparkle, 0, 0.50, 0);
part_type_blend(global.pt_KeySparkle, 1);
part_type_life(global.pt_KeySparkle, 80, 80);
part_type_speed(global.pt_KeySparkle, 0.30, 0.60, 0, 0);
part_type_direction(global.pt_KeySparkle, 0, 360, 0, 0);
part_type_gravity(global.pt_KeySparkle, 0, 90);

//Torch flame
global.pt_TorchFlame = part_type_create();
part_type_shape(global.pt_TorchFlame, pt_shape_flare);
part_type_size(global.pt_TorchFlame, 0.20, 0.30, 0, 0);
part_type_scale(global.pt_TorchFlame, 1, 1);
part_type_orientation(global.pt_TorchFlame, 0, 0, 0, 0, 0);
part_type_color3(global.pt_TorchFlame, 65535, 4235519, 255);
part_type_alpha3(global.pt_TorchFlame, 1, 0.47, 0);
part_type_blend(global.pt_TorchFlame, 1);
part_type_life(global.pt_TorchFlame, 80, 80);
part_type_speed(global.pt_TorchFlame, 0.01, 0.02, 0, 0);
part_type_direction(global.pt_TorchFlame, 0, 360, 0, 0);
part_type_gravity(global.pt_TorchFlame, 0.02, 90);
//Torch spark
global.pt_TorchSpark = part_type_create();
part_type_shape(global.pt_TorchSpark, pt_shape_pixel);
part_type_size(global.pt_TorchSpark, 1, 1, 0, 0);
part_type_scale(global.pt_TorchSpark, 1, 1);
part_type_orientation(global.pt_TorchSpark, 0, 0, 0, 0, 0);
part_type_color3(global.pt_TorchSpark, 65535, 4235519, 2749951);
part_type_alpha3(global.pt_TorchSpark, 1, 1, 0.27);
part_type_blend(global.pt_TorchSpark, 0);
part_type_life(global.pt_TorchSpark, 100, 120);
part_type_speed(global.pt_TorchSpark, 0.01, 0.02, 0, 0);
part_type_direction(global.pt_TorchSpark, 0, 360, 0, 0);
part_type_gravity(global.pt_TorchSpark, 0.01, 90);

part_system_depth(global.ParticleSystem, 300);

global.pt_PowerHit = part_type_create();
part_type_shape(global.pt_PowerHit, pt_shape_flare);
part_type_size(global.pt_PowerHit, 0.2, 1.2, 0, 0);
part_type_scale(global.pt_PowerHit, 1, 1);
part_type_orientation(global.pt_PowerHit, 0, 0, 0, 0, 0);
part_type_color3(global.pt_PowerHit, 14155768, 5699327, 64511);
part_type_alpha3(global.pt_PowerHit, 1, 0.51, 0);
part_type_blend(global.pt_PowerHit, 1);
part_type_life(global.pt_PowerHit, 20, 60);
part_type_speed(global.pt_PowerHit, 0, 0, -0.30, 0);
part_type_direction(global.pt_PowerHit, 0, 360, 0, 0);
part_type_gravity(global.pt_PowerHit, 0, 0);
