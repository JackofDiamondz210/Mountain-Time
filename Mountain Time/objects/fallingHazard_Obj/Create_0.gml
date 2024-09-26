//sets the sprite ddepending on the season we're in
switch room{
	
	case rm_spring_mountain:
		sprite_index = spr_beehive;
		break
	
	case rm_summer_mountain:
		sprite_index = spr_rock;
		break
		
	case rm_fall_mountain:
		sprite_index = spr_acorn;
		break
		
	case rm_winter_mountain:
		sprite_index = spr_icicle;
		break
}

//sets the fall speed
vspeed = 3;