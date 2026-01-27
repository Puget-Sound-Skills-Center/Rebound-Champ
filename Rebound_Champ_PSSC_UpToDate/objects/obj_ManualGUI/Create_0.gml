/// @description Create buttons
global.ManualActive = true;
TutPage = 0;
audio_play_sound(BookOpening,1,false);
show_debug_message("Create event fired");
var LeftButton = instance_create_layer((global.gui_w/2) - 700,(global.gui_h/2),"UI_Important",obj_ManualGUI_NavButtons);
	LeftButton.NavPurpose = "Left";
var RightButton = instance_create_layer((global.gui_w/2) + 700,(global.gui_h/2),"UI_Important",obj_ManualGUI_NavButtons);
	RightButton.NavPurpose = "Right";
var ExitButton = instance_create_layer((global.gui_w/2) + 700,(global.gui_h/2) - 250,"UI_Important",obj_ManualGUI_NavButtons);
	ExitButton.NavPurpose = "Exit";
