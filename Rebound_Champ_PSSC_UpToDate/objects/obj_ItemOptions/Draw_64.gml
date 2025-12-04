draw_set_halign(fa_center);
draw_set_font(OptionsFont);
draw_set_color(c_white);

if (Purpose = "Use") {
	draw_sprite_ext(spr_BoxOption,0,x,y,.3,.25,0,c_white,1);
	draw_text(x,y-13,PurposeDisplay);
}
if (Purpose = "Delete") {
	draw_sprite_ext(spr_BoxOption,0,x,y,.3,.25,0,c_white,1);
	draw_text(x,y-13,PurposeDisplay);
}