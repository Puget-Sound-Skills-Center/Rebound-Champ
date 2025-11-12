draw_text(x,y, string("currently interacting with: " + string(obj_PlayableMirgo.CurrentlyInteracting)));
draw_text(x,y+20, string("Inventory: " + string(global.PlayerInventory)));

draw_text(x,y+50, string("Screen X: " + string(device_mouse_x_to_gui(0))));
draw_text(x,y+70, string("Screen Y: " + string(device_mouse_y_to_gui(0))));

if (instance_exists(InventoryManager)) {
    draw_text(x,y+100, string("TabMode: " + string(InventoryManager.TabMode)));
}