/// @description Actions on collision

//if phy_speed > 4 {
	
//	var ball_dust_1 = instance_create_layer(phy_collision_x, phy_collision_y, "Wall_Layer", o_BallCollisionDust);
	
//	ball_direction = -point_direction(0, 0, phy_speed_x, phy_speed_y);
	
//	with(ball_dust_1) {
	
//		particle_amount = other.phy_speed/10;
//		particle_min_direction = other.ball_direction-45;	
//		particle_max_direction = other.ball_direction+45;	
//	}

//}



	
if (phy_speed > 4) {

	var particle_amount = phy_speed / 10;

	global.pe_CollisionDust = part_emitter_create(global.ParticleSystem);
	var xp, yp;
	xp = phy_collision_x;
	yp = phy_collision_y;
	part_emitter_region(global.ParticleSystem, global.pe_CollisionDust, xp+0, xp+0, yp+0, yp+0, ps_shape_rectangle, ps_distr_linear);
	part_emitter_burst(global.ParticleSystem, global.pe_CollisionDust, global.pt_CollisionDust, particle_amount);
}