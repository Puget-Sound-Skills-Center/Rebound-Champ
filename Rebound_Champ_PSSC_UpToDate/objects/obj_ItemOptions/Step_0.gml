var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if (point_in_rectangle(mx, my, x1, y1, x2, y2)) {
	if (mouse_check_button_pressed(mb_left)) {
		if (Confirmation == false) {
			PurposeDisplay = "Are you sure?"
			Confirmation = true;
		} else {
			if (Purpose == "Use") {
				if (global.PlayerInventoryCharges[obj_TooltipManager.InvSlotSelected] > 1) {
					UseItem(obj_TooltipManager.ItemSelected) // REALLY IMPORTANT YOU USE THE EXACT NAME OF THE ITEM.
					global.PlayerInventoryCharges[obj_TooltipManager.InvSlotSelected] -= 1;
				} else {
					global.PlayerInventory[obj_TooltipManager.InvSlotSelected] = "";
					global.PlayerInventoryCharges[obj_TooltipManager.InvSlotSelected] = 0;
					UpdateSlots();
					with obj_TooltipManager {
						IsDisplaying = false;	
					}
					with obj_ItemOptions {
						instance_destroy();	
					}
				}
			} else if (Purpose == "Delete") {
				// Find the id of a specific slot and change that inventory of specific index to "";
				global.PlayerInventory[obj_TooltipManager.InvSlotSelected] = "";
				UpdateSlots();
				with obj_TooltipManager {
					IsDisplaying = false;	
				}
				with obj_ItemOptions {
					instance_destroy();	
				}
			}
		}
	}
}
