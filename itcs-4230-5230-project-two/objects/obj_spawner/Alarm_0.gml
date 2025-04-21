
alarm[0] = spawn_speed


var first = pre[0];
var second = pre[1];
var third = pre[2];
var forth = pre[3];
var fifth = pre[4];



// check the prevous path and start logic to spawn
spawning[0] = irandom_range(1,5 + global.moreCar)
spawning[1] = irandom_range(1,5 + global.moreCar)
spawning[2] = irandom_range(1,5 + global.moreCar)
spawning[3] = irandom_range(1,5 + global.moreCar)
spawning[4] = irandom_range(1,5 + global.moreCar)

for(var i=0; i < 5; i++) {
	// spawn car to move left
	if(i != 0 and (spawning[i] == 8 or spawning[i] == 9)) {
		spawning[i - 1]	= 0	
	} else if (spawning[i] == 8 or spawning[i] == 9) {
		spawning[i] = 6
	}
	// spawn car to move right
	if(i != 4 and (spawning[i] == 7 or spawning[i] == 10)) {
		spawning[i + 1]	= 0	
	} else if (spawning[i] == 7 or spawning[i] == 10) {
		spawning[i] = 6
	}
}

if(first = 0) {
	var movement = irandom_range(0,1)
	spawning[0] = 1
	spawning[movement] = 0
}
else if(second = 0) {
	var movement = irandom_range(0,2)
	spawning[1] = 1
	spawning[movement] = 0
}
else if(third = 0) {
	var movement = irandom_range(1,3)
	spawning[2] = 1
	spawning[movement] = 0
}
else if(forth = 0) {
	var movement = irandom_range(2,4)
	spawning[3] = 1
	spawning[movement] = 0
}
else if(fifth = 0) {
	var movement = irandom_range(3,4)
	spawning[4] = 1
	spawning[movement] = 0
}

// spawn here 
for(var i = 0; i < 5; i++) {
	
	// spawn car to move left
	if(spawning[i] == 8 or spawning[i] == 9) {
		instance_create_layer(i*225 + x, y+ irandom_range(-120,120), "Instances", obj_move_left_car)
	}
	// spawn car to move right
	else if(spawning[i] == 7 or spawning[i] == 10) {
		instance_create_layer(i*225 + x, y+ irandom_range(-120,120), "Instances", obj_move_right_car)
	} 
	else if(spawning[i] > 3) {
		instance_create_layer(i*225 + x, y+ irandom_range(-120,120), "Instances", obj_blue_car)
	}
}



pre = spawning;