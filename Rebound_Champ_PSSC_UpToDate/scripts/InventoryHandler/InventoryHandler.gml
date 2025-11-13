// Handles Global Inventory Variable(s)
global.PlayerInventory = ["", "", "", "", "", "", "", "", "", ""];
global.BorderCoords = [];


// Inventory Slot Functions
function AddToInventory(Item) {
    for (var i = 0; i < array_length(global.PlayerInventory); i++) {
        if (global.PlayerInventory[i] == "") {
            global.PlayerInventory[i] = string(Item);
            break;
        }
    }
	if(obj_PlayableMirgo.IsInDialogue == false or obj_PlayableMirgo.IsInInventory == true) {
	UpdateSlots();
	}
}

function UpdateSlots () {
	with obj_InventorySlot {
		instance_destroy();	
	}
	if(obj_PlayableMirgo.IsInDialogue == false or obj_PlayableMirgo.IsInInventory == true) {
	SummonSlots();
	}
}

function WhatItem(InventorySlot) {
	if (global.PlayerInventory[InventorySlot] = "") {
		return 0;	
	}
	if (global.PlayerInventory[InventorySlot] = "Handbook") {
		return 1;	
	}
	if (global.PlayerInventory[InventorySlot] = "Gumballs") {
		return 2;	
	}
	if (global.PlayerInventory[InventorySlot] = "Durr") {
		return 3;	
	}
}


function AssignBorders (Index) {
	if (Index == 0) {
		global.BorderCoords = [10,710,192,895];
	}
	if (Index == 1) {
		global.BorderCoords = [214,710,400,895];
	}
	if (Index == 2) {
		global.BorderCoords = [420,710,604,895];
	}
	if (Index == 3) {
		global.BorderCoords = [626,710,810,895];
	}
	if (Index == 4) {
		global.BorderCoords = [830,710,1016,895];
	}
	if (Index == 5) {
		global.BorderCoords = [10,907,192,1090];
	}
	if (Index == 6) {
		global.BorderCoords = [214,907,400,1090];
	}
	if (Index == 7) {
		global.BorderCoords = [420,907,604,1090];
	}
	if (Index == 8) {
		global.BorderCoords = [626,907,810,1090];
	}
	if (Index == 9) {
		global.BorderCoords = [830,907,1016,1090];
	}
}

function SummonSlots () {
	
	for (var inventory_index=0,row=0,column=0; inventory_index<10 ; inventory_index++) {
		
		if (column == 0) {
			var Slot = instance_create_layer(((global.gui_w-1900) + 206*row),global.gui_h-245, "UI_Inventory", obj_InventorySlot);
			Slot.InventoryIndex = WhatItem(inventory_index);
			AssignBorders(inventory_index); // Assign Borders
			Slot.InventorySlot = inventory_index;
			Slot.x1 = global.BorderCoords[0];
			Slot.y1 = global.BorderCoords[1];
			Slot.x2 = global.BorderCoords[2];
			Slot.y2 = global.BorderCoords[3];
		} else if (column == 1) {
			var Slot = instance_create_layer(((global.gui_w-1900) + 206*row),global.gui_h-50, "UI_Inventory", obj_InventorySlot);
			Slot.InventoryIndex = WhatItem(inventory_index);
			AssignBorders(inventory_index); // Assign Borders
			Slot.InventorySlot = inventory_index;
			Slot.x1 = global.BorderCoords[0];
			Slot.y1 = global.BorderCoords[1];
			Slot.x2 = global.BorderCoords[2];
			Slot.y2 = global.BorderCoords[3];
		}
		if (row < 4) {
			row++;	
		} else {
			column++;
			row = 0;
		}
	}
}

// Inventory Functions
function OpenInventory() {
	FreezePlayer();
	instance_create_layer(x,y,"UI_Base",obj_statbox);
	UpdateSlots();
	
	// Create categories
	var Inventory = instance_create_layer(global.gui_w-1780,global.gui_h-605, "UI_Inventory", obj_CategorySelector);
	Inventory.WhatMode = "Inventory";
	var Stats = instance_create_layer(global.gui_w-1530,global.gui_h-605, "UI_Inventory", obj_CategorySelector);
	Stats.WhatMode = "Stats";
	var Skills = instance_create_layer(global.gui_w-1280,global.gui_h-605, "UI_Inventory", obj_CategorySelector);
	Skills.WhatMode = "Skills";
	// Create Manager
	instance_create_layer(global.gui_w-1780,global.gui_h-605, "UI_Base", InventoryManager);
	instance_create_layer(global.gui_w-1780,global.gui_h-605, "UI_Base", obj_TooltipManager);
}

function SwitchToStats() {
	with obj_InventorySlot {
		instance_destroy();	
	}
}

function CloseInventory() {
	with obj_statbox {
		instance_destroy();
	}
	with obj_InventorySlot {
		instance_destroy();	
	}
	with obj_CategorySelector {
		instance_destroy();	
	}
	with InventoryManager {
		instance_destroy();	
	}
	with obj_TooltipManager {
		instance_destroy();	
	}
	ThawPlayer();
}