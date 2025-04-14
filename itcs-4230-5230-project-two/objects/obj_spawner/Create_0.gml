
// 1 no car
// 0 path 
// 2+ car
global.moreCar = 0
start = irandom_range(0,4);
spawning = [1, 1, 1, 1, 1];
pre = [1, 1, 1, 1, 1];

pre[start] = 0;

alarm[0] = spawn_speed + random_set_seed(randomise())

