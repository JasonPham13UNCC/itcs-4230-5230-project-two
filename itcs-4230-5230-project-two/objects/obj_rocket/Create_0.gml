// Create particle system
part_sys = part_system_create();
part_system_depth(part_sys, 0);

// Create emitter
emitter = part_emitter_create(part_sys);

// Smoke particle
smoke = part_type_create();
part_type_shape(smoke, pt_shape_cloud);
part_type_size(smoke, 0.4, 0.7, 0, 0);
part_type_color2(smoke, c_gray, c_black);
part_type_alpha2(smoke, 0.6, 0);
part_type_speed(smoke, 0.2, 1, 0, 0);
part_type_direction(smoke, 0, 360, 0, 0);
part_type_gravity(smoke, -0.01, 270);
part_type_life(smoke, 30, 50);

// Fire particle
fire = part_type_create();
part_type_shape(fire, pt_shape_flare);
part_type_size(fire, 0.3, 0.6, 0, 0);
part_type_color3(fire, c_yellow, c_orange, c_red);
part_type_alpha2(fire, 1, 0);
part_type_speed(fire, 0.5, 1, 0, 0);
part_type_direction(fire, 0, 360, 0, 0);
part_type_gravity(fire, 0.02, 270);
part_type_life(fire, 15, 25);
