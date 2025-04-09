
alarm[0] = spawn_speed


var first = pre[0];
var second = pre[1];
var third = pre[2];
var forth = pre[3];



// check the prevous path and start logic to spawn
spawning[0] = irandom_range(0,1)
spawning[1] = irandom_range(0,1)
spawning[2] = irandom_range(0,1)
spawning[3] = irandom_range(0,1)


if(first = 2) {
	var movement = irandom_range(0,1)
	spawning[0] = 0
	spawning[movement] = 2
}
if(second = 2) {
	var movement = irandom_range(0,2)
	spawning[1] = 0
	spawning[movement] = 2
}
if(third = 2) {
	var movement = irandom_range(1,3)
	spawning[2] = 0
	spawning[movement] = 2
}
if(forth = 2) {
	var movement = irandom_range(2,3)
	spawning[3] = 0
	spawning[movement] = 2
}

// spawn here 
for(var i = 0; i < 4; i++) {
	if(spawning[i] = 1) {
		instance_create_layer(i*100 + x, y, "Instances", obj_blue_car)
	}
	
}



pre = spawning;