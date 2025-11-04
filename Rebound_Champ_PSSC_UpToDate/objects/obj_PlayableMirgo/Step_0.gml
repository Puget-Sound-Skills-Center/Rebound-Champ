/// @description Movement system

var h_input = (keyboard_check(ord("D")) || keyboard_check(vk_right)) - (keyboard_check(ord("A")) || keyboard_check(vk_left));
var v_input = (keyboard_check(ord("S")) || keyboard_check(vk_down)) - (keyboard_check(ord("W")) || keyboard_check(vk_up));

// Normalize diagonal movement
if (h_input != 0 || v_input != 0) {
    var length = sqrt(h_input * h_input + v_input * v_input);
    h_input /= length;
    v_input /= length;
}

// Checks if shift is held
var current_speed = move_speed;
if (keyboard_check(vk_shift)) {
    current_speed = sprint_speed;
}

// Directional sprite switching
if(IsInDialogue = false) {
if (h_input > 0) {
    sprite_index = MirgoRight;
} else if (h_input < 0) {
    sprite_index = MirgoLeft;
} else if (v_input > 0) {
    sprite_index = MirgoFront;
} else if (v_input < 0) {
    sprite_index = MirgoBack;
}
}

// Play animation only when moving
if(IsInDialogue = false) {
if (h_input != 0 || v_input != 0) {
	if (keyboard_check(vk_shift)) {
		image_speed = 1.5; // Sprint animation speed
	} else {
		image_speed = 1; // Normal aniamtion speed
	}
} else {
    image_speed = 0; // stop animation
    image_index = 1; // reset to first frame
}
}

// Apply movement
x += h_input * current_speed;
y += v_input * current_speed;

// ------------- CAMERA SYSTEM -----------------
// Camera variables
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
// Player position
var target_x = x - (camera_get_view_width(cam) / 2);
var target_y = y - (camera_get_view_height(cam) / 2);
// Smooth movement
var lerpVal = 1;
cam_x = lerp(cam_x, target_x, lerpVal);
cam_y = lerp(cam_y, target_y, lerpVal);

camera_set_view_pos(cam, cam_x, cam_y);


