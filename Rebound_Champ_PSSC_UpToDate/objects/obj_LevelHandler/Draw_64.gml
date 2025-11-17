draw_set_halign(fa_left);
draw_set_font(MainInventory_FontALT);
draw_text(x,y,"Mirgo");

draw_set_font(MiscInventory_Font);
draw_text(x,y+65,string("LV(" + string(CurrentLevel) + ") (" + string(CurrentEXP) + "/" + string(EXP_Required) + ")"));
draw_text(x,y+110,string("UTokens: " + string(UTokens)));
draw_text(x,y+155,string("Skill Points: " + string(Skill_Points)));


