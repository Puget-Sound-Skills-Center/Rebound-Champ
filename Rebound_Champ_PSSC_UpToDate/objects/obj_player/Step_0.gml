if (mouse_x > x) { // Change player Direction depending on mouse position
	image_xscale = 1
} else if (mouse_x < x) {
	image_xscale = -1
}

if (Cooldown = 0) { // Cooldown
	SwingEnabled = true
} else if (Cooldown > 0) {
	SwingEnabled = false
}

EnemyDistance = floor(distance_to_object(obj_dummy))

//Change Tp Gain Modifier
if(EnemyDistance < 250) {
	TPGainModifier = 3
} else if (EnemyDistance < 550) {
		TPGainModifier = 2
	} else if (EnemyDistance < 850) {
			TPGainModifier = 1
		} 
		
// Platformer Movement System

leftKey = keyboard_check(ord("A"))
rightKey = keyboard_check(ord("D"))
jumpKeyPressed = keyboard_check(vk_space)

moveDir = rightKey - leftKey;
xspd = moveDir * moveSpd;

// X Collision
var _subpixel = .5;
if place_meeting(x + xspd, y, obj_Platform) { //Colliding with wall
	var _pixelCheck = _subpixel * sign(xspd);
	while !place_meeting(x + _pixelCheck, y, obj_Platform) {
		x += _pixelCheck
	}
	xspd = 0;
}

// Move X
x += xspd;

// Y Movement 
yspd += grav;

if (yspd > termVel) {
	yspd = termVel	
}

// Jump
if jumpKeyPressed && place_meeting(x, y+1, obj_Platform) {
	yspd = jspd;
}

// Y Collision
var _subpixel = .5;
if place_meeting(x, y + yspd, obj_Platform) { //Colliding with wall
	// Percise wall scooting
	var _pixelCheck = _subpixel * sign(yspd)	
	while !place_meeting(x, y + _pixelCheck, obj_Platform) {
		y += _pixelCheck
	}
	// Wall Collide
	yspd = 0
}

y += yspd;
