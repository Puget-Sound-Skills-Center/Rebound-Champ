window_set_cursor(cr_none)
if(room != World_Seg1) {
	cursor_sprite = spr_BattleCursor;
} else {
	cursor_sprite = spr_Cursor;
}

show_debug_overlay(true);