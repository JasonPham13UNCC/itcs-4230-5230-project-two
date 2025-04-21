// Emit from rocket's tail
var offset = point_direction(0, 0, hspeed, vspeed);
var px = x - lengthdir_x(8, offset);
var py = y - lengthdir_y(8, offset);

// Use 0 for rectangle shape and linear distribution
part_emitter_region(part_sys, emitter, px, px, py, py, 0, 0); // 0 = rectangle, 0 = linear
part_emitter_burst(part_sys, emitter, smoke, 1);

part_emitter_region(part_sys, emitter, px, px, py, py, 0, 0);
part_emitter_burst(part_sys, emitter, fire, 2);
