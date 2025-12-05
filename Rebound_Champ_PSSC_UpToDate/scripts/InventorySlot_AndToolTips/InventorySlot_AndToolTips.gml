//global.ToolTipID = "";

function CallToolTip(WhatSlot) {
	show_debug_message("ToolTip Function called");
	with obj_TooltipManager {
		DisplaySprIndex = WhatSlot.InventoryIndex;
		IsDisplaying = true;
	}
}

function ItemOptions() {
	// Clear stuff
	if (instance_exists(obj_ItemOptions)) {
		with obj_ItemOptions {
			instance_destroy();	
		}
	}
	// Create the 2 item options when clicking item in slot
	var opt1 = instance_create_layer(global.gui_w-798,global.gui_h-445, "UI_Inventory", obj_ItemOptions);
	opt1.Purpose = "Use";
	opt1.PurposeDisplay = "Use Item";
	opt1.x1 = 1020;
	opt1.y1 = 573;
	opt1.x2 = 1195;
	opt1.y2 = 630;
	var opt2 = instance_create_layer(global.gui_w-798,global.gui_h-375, "UI_Inventory", obj_ItemOptions);
	opt2.Purpose = "Delete";
	opt2.PurposeDisplay = "Discard Item";
	
}