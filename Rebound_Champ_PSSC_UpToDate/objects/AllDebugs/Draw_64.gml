draw_text(x,y, string("currently interacting with: " + string(obj_PlayableMirgo.CurrentlyInteracting)));
draw_text(x,y+20, string("Inventory: " + string(global.PlayerInventory)));

draw_text(x+500,y+80, string("Active Status Effects: " + string(global.ActiveStatusEffects)));
draw_text(x+500,y+100, string("Status Effect Potency: " + string(global.ASE_Potency)));


draw_text(x,y+50, string("Screen X: " + string(device_mouse_x_to_gui(0))));
draw_text(x,y+70, string("Screen Y: " + string(device_mouse_y_to_gui(0))));

if (instance_exists(InventoryManager)) {
    draw_text(x,y+100, string("TabMode: " + string(InventoryManager.TabMode)));
}

draw_text(x,y+120, string("IsInDialogue: " + string(obj_PlayableMirgo.IsInDialogue)));
draw_text(x,y+140, string("IsInInventory: " + string(obj_PlayableMirgo.IsInInventory)));
draw_text(x,y+160, string("CanAdvance: " + string(obj_PlayableMirgo.CanAdvance)));
draw_text(x,y+180, string("PostBattlePrompt: " + string(obj_PlayableMirgo.PostBattlePrompt)));
draw_text(x,y+200, string("Dialogue Box Exists: " + string(diaboxExists)));

if (instance_exists(obj_TooltipManager)) {
    draw_text(x,y+240, string("ToolTipActive: " + string(obj_TooltipManager.ToolTipActive)));
	draw_text(x + 500,y+50, string("Inventory ID: " + string(obj_TooltipManager.InvSlotSelected)));
}

draw_text(x,y+260, string("PromptQueue: " + string(global.PromptQueue)));