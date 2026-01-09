draw_set_color(make_color_rgb(255, 255, 255));
draw_set_halign(fa_left);
draw_set_font(ToolTipFont);

draw_text(x,y,string("- " + string(SelectedEffect) + " -"));
