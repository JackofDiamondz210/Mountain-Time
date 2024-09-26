//generates a spawn location
var spawnX = floor(random_range(0,room_width));
//creates hazard object
	//show_debug_message("hazard spawned")
instance_create_layer(spawnX, y, "instances", fallingHazard_Obj);

//sets alarm again
alarm[0] = 120;