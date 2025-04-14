function check_for_player(sp){
	
	if(global.mp_grid) {
		obj_player = obj_car
		var _dis = distance_to_object(obj_player) // get distance to player
		// make path toward player
	
	

		var _found_player = mp_grid_path(global.mp_grid, path, x, y, obj_player.x, obj_player.y, choose(0,1));


	
		if _found_player {
			path_start(path, sp, path_action_stop, false);
			
				
			}

	}
}

function collision(obj){
	//set target
	var _tx = x;
	var _ty = y;
	
	
	//move back
	x = xprevious;
	y = yprevious;
	
	var _disx = abs(_tx-x);
	var _disy = abs(_ty-y);
	
	//move as far before hitting solid
	repeat(_disx) {
		if !place_meeting(x + sign(_tx - x), y, obj) x+=sign(_tx-x);
		
	}
	repeat(_disy) {
		if !place_meeting(x, y + sign(_ty - y), obj) y += sign(_ty-y);
		
	}
	
}