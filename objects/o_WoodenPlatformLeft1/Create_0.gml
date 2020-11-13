/// @description Set up physics fixtures

var fixture = physics_fixture_create();
physics_fixture_set_polygon_shape(fixture);
physics_fixture_add_point(fixture, 0, 0);
physics_fixture_add_point(fixture, 0+sprite_width, 0);
physics_fixture_add_point(fixture, 0+sprite_width, sprite_height * 0.14);
physics_fixture_add_point(fixture, 0, sprite_height * 0.14);
physics_fixture_set_density(fixture, 0);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_friction(fixture, 0.2);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);

var fixture = physics_fixture_create();
physics_fixture_set_polygon_shape(fixture);
physics_fixture_add_point(fixture, 0, 0);
physics_fixture_add_point(fixture, 0 + sprite_width*0.87, 0);
physics_fixture_add_point(fixture, 0, sprite_height);
physics_fixture_set_density(fixture, 0.0);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_linear_damping(fixture, 0.6);
physics_fixture_set_angular_damping(fixture, 0.6);
physics_fixture_set_friction(fixture, 0.2);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);