draw_set_font(DebugFont);
draw_set_color(c_white);
draw_set_halign(fa_center);

draw_text(x,y, "You died lmao");
draw_text(x,y+30, string(DeathFlavorText));

if (ComeBack == true) {
	draw_text(x,y+100, "press [Z] to start over.");	
}