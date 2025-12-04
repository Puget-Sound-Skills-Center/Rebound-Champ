draw_sprite_ext(spr_InventorySlot,DisplaySprIndex,x,y,.75,.75,0,c_white,1);

draw_set_color(make_color_rgb(255, 255, 255));
draw_set_halign(fa_left);
draw_set_font(ToolTipFont);
draw_text(x+200,y-90,string("- " + string(ItemSelected) + " -"));
draw_text(x+200,y-50,string(ToolTipDesc));

// Connotation color list
if (Desc_Mood == "Positive") {
	draw_set_color(make_color_rgb(184, 255, 157));
} else if (Desc_Mood == "Neutral") {
	draw_set_color(make_color_rgb(210, 210, 210));
} else if (Desc_Mood == "Negative") {
	draw_set_color(make_color_rgb(221, 123, 123));
}

draw_text(x+200,y+20,string(HelpfulDesc));