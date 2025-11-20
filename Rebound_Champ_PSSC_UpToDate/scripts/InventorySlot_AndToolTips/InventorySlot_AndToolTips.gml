//global.ToolTipID = "";

function CallToolTip(WhatSlot) {
	show_debug_message("ToolTip Function called");
	with obj_TooltipManager {
		DisplaySprIndex = WhatSlot.InventoryIndex;
		IsDisplaying = true;
	}
}