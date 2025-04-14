if(timer) {

	var spawn = irandom_range(0,4);
	timer = false 
	for(var i = 0; i < 5; i++) {
		if(i == spawn) {
			instance_create_layer(i*200 + x, y+ irandom_range(-120,120), "Instances", powerup)
		}
	}
}