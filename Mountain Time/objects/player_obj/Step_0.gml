/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

var moveLeft = keyboard_check(ord("A"));
var moveRight = keyboard_check(ord("D"));
var jump = keyboard_check(vk_space);
var walkSpeed = 2;

var switchSpring = keyboard_check(ord("1"));
var switchSummer = keyboard_check(ord("2"));
var switchFall = keyboard_check(ord("3"));
var switchWinter = keyboard_check(ord("4"));

horizSpeed = (moveRight-moveLeft) * walkSpeed;

vertSpeed += grav;



if(!place_meeting(x+horizSpeed,y, wall_Obj) && !place_meeting(x+horizSpeed, y, boundary_Obj)) {
		x += horizSpeed;
		
		} else {
			var pixelCheck = sign(horizSpeed);
			while (!place_meeting(x+pixelCheck,y, wall_Obj) && !place_meeting(x+pixelCheck,y, boundary_Obj)) {
				x += pixelCheck;
			}
			
			horizSpeed=0;
		}
		
if(!place_meeting(x +horizSpeed, y+vertSpeed, wall_Obj) && !place_meeting(x +horizSpeed, y+vertSpeed, boundary_Obj)) {
		y += vertSpeed;
		} else {
			var pixelCheck = sign(vertSpeed);
			while (!place_meeting(x+ horizSpeed, y + pixelCheck, wall_Obj) && !place_meeting(x+ horizSpeed, y + pixelCheck, boundary_Obj)) {	
			y += pixelCheck;
			}
			vertSpeed=0;
		}


if(jump) {
	if (place_meeting(x,y+1,wall_Obj) || place_meeting(x,y+1,boundary_Obj)) {
		vertSpeed = jumpHeight;
		
	}
}

//1 2 3 4 keys switch between rooms
if (switchSpring){
	//room_goto(R_Spring);	
} if (switchSummer){
	room_goto(R_Summer);	
}
if (switchFall){
	//room_goto(R_Fall);
}
if(switchWinter){
	room_goto(R_Winter);	
}
