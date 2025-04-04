
// 0 no car
// 2 path 
// 1 car

start = irandom_range(0,2);
spawning = [0, 0, 0, 0];
pre = [0, 0, 0, 0];

pre[start] = 2;
alarm[0] = spawn_speed + random_set_seed(randomise())