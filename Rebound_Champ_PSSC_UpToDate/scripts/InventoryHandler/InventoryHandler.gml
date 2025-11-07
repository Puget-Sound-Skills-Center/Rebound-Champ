// Handles Global Inventory Variable(s)
global.PlayerInventory = ["","","","",""];


// Inventory Slot Functions
function AddToInventory (Item) {
		if (global.PlayerInventory[4] = "") {
			array_insert(global.PlayerInventory,0,string(Item));
		}
		UpdateSlots();
}

function UpdateSlots () {
	with obj_InventorySlot {
		instance_destroy();	
	}
	SummonSlots();
}

function SummonSlots () {
	for (var i=0;i<5;i++) {
		var Slot = instance_create_layer(((global.gui_w-1900) + 206*i),global.gui_h-45, "UI_Inventory", obj_InventorySlot);
		if (global.PlayerInventory[i] = "Handbook") {
			Slot.InventoryIndex = 1;	
		}
		if (global.PlayerInventory[i] = "Gumballs") {
			Slot.InventoryIndex = 2;	
		}
		if (global.PlayerInventory[i] = "Durr") {
			Slot.InventoryIndex = 3;	
		}
	}
}

// Inventory Functions
function OpenInventory() {
	FreezePlayer();
	instance_create_layer(x,y,"UI_Base",obj_statbox);
	UpdateSlots();
}

function CloseInventory() {
	with obj_statbox {
		instance_destroy();
	}
	with obj_InventorySlot {
		instance_destroy();	
	}
	ThawPlayer();
}