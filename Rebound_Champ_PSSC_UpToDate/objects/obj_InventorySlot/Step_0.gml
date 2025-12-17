/// @description Inventory tooltips and whatnot

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


if (point_in_rectangle(mx, my, x1, y1, x2, y2)) {
	IsHoveredOn = true;
	if (mouse_check_button_pressed(mb_left)) {
			show_debug_message(string("Inventory Slot#: " + string(InventorySlot))); // What number the slot is
			show_debug_message(string("Inventory Index: " + string(InventoryIndex))); // What the inventory has
			if(InventoryIndex != 0) {
				obj_TooltipManager.InvSlotSelected = id;
				CallToolTip(id);
				ItemOptions();
			} else {
				with obj_TooltipManager {
					IsDisplaying = false;	
				}
				with obj_ItemOptions {
					instance_destroy();	
				}
			}
	}
}