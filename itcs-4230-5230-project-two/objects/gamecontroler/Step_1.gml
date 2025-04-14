/*
#macro TS 16

// get tiles in the room

var _w = ceil(room_width / TS);
var _h = ceil(room_height / TS);


//create grid

global.mp_grid = mp_grid_create(0,0, _w, _h, TS, TS);

//add solid instances to gid

//TODO make sure the sold is named
mp_grid_add_instances(global.mp_grid, obj_blue_car, false)