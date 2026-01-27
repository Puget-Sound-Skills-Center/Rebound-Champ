if(NavPurpose == "Left") {
	//show_debug_message("Left has been made");
	image_index = 1;
	if(obj_ManualGUI.TutPage == 0) {
		image_index = 0;	
	} else {
		image_index = 1;
	}
}
if(NavPurpose == "Right") {
	image_index = 2;	
	if(obj_ManualGUI.TutPage == 1) {
		image_index = 0;	
	} else {
		image_index = 2;
	}
}
if(NavPurpose == "Exit") {
	image_index = 3;	
}



var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (point_in_rectangle(mx, my, 1593, 212, 1715, 332)) { // exit button
	if (mouse_check_button_pressed(mb_left) && image_index != 0) {
		global.ManualActive = false;
		audio_play_sound(BookOpening,1,false);
		with obj_ManualGUI {
			instance_destroy();	
		}
		with obj_ManualGUI_NavButtons {
			instance_destroy();	
		}
		layer_set_visible("UI_Inventory",true);
		layer_set_visible("UI_Base",true);
	}
}

if (point_in_rectangle(mx, my, 192, 463, 316, 585)) { // Left button
	if (mouse_check_button_pressed(mb_left) && image_index != 0) {
		audio_play_sound(pageturning,1,false);
		obj_ManualGUI.TutPage = 0;
	}
}

if (point_in_rectangle(mx, my, 1593, 463, 1715, 585)) { // Right button
	if (mouse_check_button_pressed(mb_left) && image_index != 0) {
		audio_play_sound(pageturning,1,false);
		obj_ManualGUI.TutPage = 1;
	}
}