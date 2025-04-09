
// 1 no car
// 0 path 
// 2+ car

start = irandom_range(0,2);
spawning = [1, 1, 1, 1, 1];
pre = [1, 1, 1, 1, 1];

pre[start] = 0;
alarm[0] = spawn_speed + random_set_seed(randomise())