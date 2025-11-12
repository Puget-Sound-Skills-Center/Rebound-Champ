// Handles Global Inventory Variable(s)
global.PlayerInventory = ["", "", "", "", "", "", "", "", "", ""];


// Inventory Slot Functions
function AddToInventory(Item) {
    for (var i = 0; i < array_length(global.PlayerInventory); i++) {
        if (global.PlayerInventory[i] == "") {
            global.PlayerInventory[i] = string(Item);
            break;
        }
    }
	//UpdateSlots();
}

function UpdateSlots () {
	with obj_InventorySlot {
		instance_destroy();	
	}
	if(obj_PlayableMirgo.IsInDialogue == false) {
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

function SummonSlots () {
	for (var inventory_index=0,row=0,column=0; inventory_index<10 ; inventory_index++) {
		
		if (column == 0) {
			var Slot = instance_create_layer(((global.gui_w-1900) + 206*row),global.gui_h-245, "UI_Inventory", obj_InventorySlot);
			Slot.InventoryIndex = WhatItem(inventory_index);
		} else if (column == 1) {
			var Slot = instance_create_layer(((global.gui_w-1900) + 206*row),global.gui_h-50, "UI_Inventory", obj_InventorySlot);
			Slot.InventoryIndex = WhatItem(inventory_index);
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
	ThawPlayer();
}