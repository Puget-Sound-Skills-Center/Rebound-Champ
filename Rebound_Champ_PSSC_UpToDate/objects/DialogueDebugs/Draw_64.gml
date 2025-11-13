draw_text(x,y, string("currently interacting with: " + string(obj_PlayableMirgo.CurrentlyInteracting)));
draw_text(x,y+20, string("Inventory: " + string(global.PlayerInventory)));

draw_text(x,y+50, string("Screen X: " + string(device_mouse_x_to_gui(0))));
draw_text(x,y+70, string("Screen Y: " + string(device_mouse_y_to_gui(0))));

if (instance_exists(InventoryManager)) {
    draw_text(x,y+100, string("TabMode: " + string(InventoryManager.TabMode)));
}

draw_text(x,y+120, string("IsInDialogue: " + string(obj_PlayableMirgo.IsInDialogue)));
draw_text(x,y+140, string("IsInInventory: " + string(obj_PlayableMirgo.IsInInventory)));

if (instance_exists(obj_TooltipManager)) {
    draw_text(x,y+160, string("ToolTipActive: " + string(obj_TooltipManager.ToolTipActive)));
}