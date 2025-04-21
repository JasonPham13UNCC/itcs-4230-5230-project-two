
alarm[0] = spawn_speed


var first = pre[0];
var second = pre[1];
var third = pre[2];
var forth = pre[3];
var fifth = pre[4];



// check the prevous path and start logic to spawn
spawning[0] = irandom_range(1,5)
spawning[1] = irandom_range(1,5)
spawning[2] = irandom_range(1,5)
spawning[3] = irandom_range(1,5)
spawning[4] = irandom_range(1,5)


// spawn here 
for(var i = 0; i < 5; i++) {
	if(spawning[i] == 5) {
		instance_create_layer(i*225 + x + irandom_range(-50, 50), y+ irandom_range(-200,200), "Instances", obj_pothole)
	} 
	else if (spawning[i] == 4) {
		instance_create_layer(i*225 + x + irandom_range(-50, 50), y+ irandom_range(-200,200), "Instances", obj_water)
	}
	
}



pre = spawning;