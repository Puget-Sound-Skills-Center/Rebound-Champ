var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
// -----------------------------------------------
if (WhatMode == "Inventory") {
	if (point_in_rectangle(mx, my, 8, 406, 245, 479)) {
		if (WhatMode != InventoryManager.TabMode) {
			Category_Img = 1;
			if (mouse_check_button_pressed(mb_left)) {
				InventoryManager.TabMode = "Inventory";
				SwitchToInventory();
				UpdateSlots();
			}
		}
	} else {
		if (WhatMode == InventoryManager.TabMode) {
			Category_Img = 2;
		} else {
			Category_Img = 0;
		}
	}
}

if (WhatMode == "Stats") {
	if (point_in_rectangle(mx, my, 260, 406, 492, 479)) {
		if (WhatMode != InventoryManager.TabMode) {
			Category_Img = 1;
			if (mouse_check_button_pressed(mb_left)) {
				InventoryManager.TabMode = "Stats";
				SwitchToStats();
			}
		}
	} else {
		if (WhatMode == InventoryManager.TabMode) {
			Category_Img = 2;
		} else {
			Category_Img = 0;
		}
	}
}

if (WhatMode == "Skills") {
	if (point_in_rectangle(mx, my, 508, 406, 746, 479)) {
		if (WhatMode != InventoryManager.TabMode) {
			Category_Img = 1;
			if (mouse_check_button_pressed(mb_left)) {
				InventoryManager.TabMode = "Skills";
				SwitchToSkills();
			}
		}
	} else {
		if (WhatMode == InventoryManager.TabMode) {
			Category_Img = 2;
		} else {
			Category_Img = 0;
		}
	}
}

if (WhatMode == "Help") {
	if (point_in_rectangle(mx, my, 8, 329, 244, 402)) {
		if (WhatMode != InventoryManager.TabMode) {
			Category_Img = 1;
			if (mouse_check_button_pressed(mb_left) && global.ManualActive == false) {
				show_debug_message("Clicked Help");
				instance_create_layer(global.gui_w/2,(global.gui_h/2) + 50, "UI_Important", obj_ManualGUI);
			}
		}
	} else {
		if (WhatMode == InventoryManager.TabMode) {
			Category_Img = 2;
		} else {
			Category_Img = 0;
		}
	}
}
// -----------------------------------------------


if (WhatMode == InventoryManager.TabMode) {
	TextDisplay = string(">" + string(WhatMode) + "<");
} else {
	TextDisplay = WhatMode;
}
