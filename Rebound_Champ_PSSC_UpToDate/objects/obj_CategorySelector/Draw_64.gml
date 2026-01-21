draw_set_halign(fa_center);
draw_set_font(MainInventory_Font);
draw_set_color(c_white);
if (WhatMode = "Inventory") {
	draw_sprite_ext(spr_BoxCategory,Category_Img,x,y,.4,.3,0,c_white,1);
	draw_text(x,y-13,TextDisplay);
}
if (WhatMode = "Stats") {
	draw_sprite_ext(spr_BoxCategory,Category_Img,x,y,.4,.3,0,c_white,1);
	draw_text(x,y-13,TextDisplay);
}
if (WhatMode = "Skills") {
	draw_sprite_ext(spr_BoxCategory,Category_Img,x,y,.4,.3,0,c_white,1);
	draw_text(x,y-13,TextDisplay);
}
if (WhatMode = "Help" && InventoryManager.UsedManual == true) {
	draw_sprite_ext(spr_BoxCategory,Category_Img,x,y,.4,.3,0,c_white,1);
	draw_text(x,y-13,"Manual (?)");
}