/// @description Insert description here
// You can write your code in this editor

var moveLeft = keyboard_check(ord("A"));
var moveRight = keyboard_check(ord("D"));
var jump = keyboard_check(vk_space);
var walkSpeed = 2;

var switchSpring = keyboard_check_released(ord("1"));
var switchSummer = keyboard_check_released(ord("2"));
var switchFall = keyboard_check_released(ord("3"));
var switchWinter = keyboard_check_released(ord("4"));

horizSpeed = (moveRight-moveLeft) * walkSpeed;

vertSpeed += grav;



if(!place_meeting(x+horizSpeed,y, PO_wall) && !place_meeting(x+horizSpeed, y, boundary_Obj)) {
		x += horizSpeed;
		
		} else {
			var pixelCheck = sign(horizSpeed);
			while (!place_meeting(x+pixelCheck,y, PO_wall) && !place_meeting(x+pixelCheck,y, boundary_Obj)) {
				x += pixelCheck;
			}
			
			horizSpeed=0;
		}
		
if(!place_meeting(x +horizSpeed, y+vertSpeed, PO_wall) && !place_meeting(x +horizSpeed, y+vertSpeed, boundary_Obj)) {
		y += vertSpeed;
		} else {
			var pixelCheck = sign(vertSpeed);
			while (!place_meeting(x+ horizSpeed, y + pixelCheck, PO_wall) && !place_meeting(x+ horizSpeed, y + pixelCheck, boundary_Obj)) {	
			y += pixelCheck;
			}
			vertSpeed=0;
		}


if(jump) {
	if (place_meeting(x,y+1, PO_wall) || place_meeting(x,y+1,boundary_Obj)) {
		vertSpeed = jumpHeight;
		
	}
}

//1 2 3 4 keys switch between rooms
if (switchSpring){
	room_goto(rm_spring_mountain);	
} if (switchSummer){
	room_goto(rm_summer_mountain);	
}
if (switchFall){
	room_goto(rm_fall_mountain);
}
if(switchWinter){
	room_goto(rm_winter_mountain);	
}
