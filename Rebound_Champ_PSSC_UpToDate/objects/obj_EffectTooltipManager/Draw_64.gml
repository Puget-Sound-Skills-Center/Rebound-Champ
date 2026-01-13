draw_set_color(make_color_rgb(255, 255, 255));
draw_set_halign(fa_left);
draw_set_font(ToolTipFont);

if (SelectedEffect != "") {
	draw_set_color(make_color_rgb(255, 255, 255));
	draw_text(x-30,y-70,string("- " + string(SelectedEffect) + " " + string(PotencyFlair(TT_EffectPotency)) + " -"));
	draw_set_color(make_color_rgb(175, 175, 175));
	draw_text(x-30,y-25,string("(?) " + string(DisplayTooltip)));
	if (EffectConnotation == "Positive") { 
		draw_set_color(make_color_rgb(184, 255, 157));
		draw_text(x-30,y+35,string("* " + string(StatInfo)));	
	} else if (EffectConnotation == "Negative") {
		draw_set_color(make_color_rgb(221, 123, 123));
		draw_text(x-30,y+35,string("* " + string(StatInfo)));
	}
} else {
	draw_text(x-30,y-70,"");
	draw_text(x-30,y-35,"");
	draw_text(x-30,y+35,"");
}
