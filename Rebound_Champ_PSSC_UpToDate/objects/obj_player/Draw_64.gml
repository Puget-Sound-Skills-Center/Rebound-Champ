/// @description Stats
//draw_text(x-70,y+100,string("SwingEnabled: " + string(SwingEnabled)))
draw_set_font(DebugFont);
if(Cooldown <= 0) {
	draw_text(x-70,y+120,"")
} else if(Cooldown > 0) {
	draw_text(x-70,y+120,string("Cooldown (" + string(Cooldown)) + ")")
}
