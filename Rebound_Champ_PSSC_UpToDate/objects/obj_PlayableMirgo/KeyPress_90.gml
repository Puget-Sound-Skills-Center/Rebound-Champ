/// @description Summon InteractionCircle
	
// Position based on direction
if(sprite_index = MirgoBack) {
	instance_create_layer(x,y-25,"UI_Base",obj_InteractionCircle);
}
if(sprite_index = MirgoFront) {
	instance_create_layer(x,y+10,"UI_Base",obj_InteractionCircle);
}
if(sprite_index = MirgoLeft) {
	instance_create_layer(x-20,y,"UI_Base",obj_InteractionCircle);
}
if(sprite_index = MirgoRight) {
	instance_create_layer(x+20,y,"UI_Base",obj_InteractionCircle);
}

