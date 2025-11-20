draw_sprite_ext(spr_InventorySlot,DisplaySprIndex,x,y,.75,.75,0,c_white,1);

draw_set_halign(fa_left);
draw_set_font(ToolTipFont);
draw_text(x+200,y-80,string(ToolTipDesc));