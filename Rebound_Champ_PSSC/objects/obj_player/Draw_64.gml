/// @description Stats
//draw_text(x-70,y+100,string("SwingEnabled: " + string(SwingEnabled)))

if(Cooldown <= 0) {
	draw_text(x-70,y+120,"")
} else if(Cooldown > 0) {
	draw_text(x-70,y+120,string("Cooldown (" + string(Cooldown)) + ")")
}
