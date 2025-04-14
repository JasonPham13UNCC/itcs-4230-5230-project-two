// Flashing starts at 50% screen height, maxes out at 80%
var start_y = display_get_height() * 0.5;
var end_y = display_get_height() * 0.8;

if (y > start_y) {
    shader_set(shd_police);

    // Pass time to the shader
    var u_time = shader_get_uniform(shd_police, "u_time");
    shader_set_uniform_f(u_time, current_time / 1000.0);

    // Compute intensity based on how far between 50% and 80% the player is
    var t = (y - start_y) / (end_y - start_y);
    t = clamp(t, 0, 1); // ensure it's between 0 and 1

    // Pass intensity to the shader
    var u_intensity = shader_get_uniform(shd_police, "u_intensity");
    shader_set_uniform_f(u_intensity, t);

    draw_surface(application_surface, 0, 0);

    shader_reset();
} else {
    draw_surface(application_surface, 0, 0);
}
