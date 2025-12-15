var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (point_in_rectangle(mx, my, x1, y1, x2, y2)) {
	if (mouse_check_button_pressed(mb_left)) {
		if (Confirmation == false) {
			PurposeDisplay = "Are you sure?"
			Confirmation = true;
		} else {
			if (Purpose == "Use") {
			UseItem(obj_TooltipManager.ItemSelected) // REALLY IMPORTANT YOU USE THE EXACT NAME OF THE ITEM.	
			} else if (Purpose == "Delete") {
				
			}
		}
	}
}
