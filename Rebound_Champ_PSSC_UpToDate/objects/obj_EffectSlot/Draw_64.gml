// Draw at center of the screen (camera view)
draw_sprite_ext(spr_StatusEffects_STATIC,EffectIndex,x,y,.75,.75,0,c_white,1);
draw_set_font(ToolTipFont);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x+124,y-60,string(EffectPotency));
