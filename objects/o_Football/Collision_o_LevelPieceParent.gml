/// @description Actions on collision

if phy_speed > 4 {
	
	var ball_dust_1 = instance_create_layer(phy_collision_x, phy_collision_y, "Wall_Layer", o_BallCollisionDust);
	
	ball_direction = -point_direction(0, 0, phy_speed_x, phy_speed_y);
	
	with(ball_dust_1) {
	
		particle_amount = other.phy_speed/10;
		particle_min_direction = other.ball_direction-45;	
		particle_max_direction = other.ball_direction+45;	
	}

}

