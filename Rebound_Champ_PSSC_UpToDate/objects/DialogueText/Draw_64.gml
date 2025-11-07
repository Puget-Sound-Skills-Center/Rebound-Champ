draw_set_halign(fa_left);
draw_set_font(DialogueFont);
if (DialogueType = "OC") {
	draw_text(global.gui_w-1220,global.gui_h-200,DialogueDisplay);
} else if (DialogueType = "System") {
	draw_text(global.gui_w-1490,global.gui_h-238,DialogueDisplay);
}