window_set_cursor(cr_none)
if(room == BattleRoom) {
	cursor_sprite = spr_BattleCursor;
} else if (room == World_Seg1 || room == Menu){
	cursor_sprite = spr_Cursor;
}

//show_debug_overlay(true);