/// @description Remove a life for each proc hit
if(LifeID = obj_GameStartupStuff.PlayerLives) {
	hspeed = .25
	vspeed = -2
	image_alpha = 1
	image_angle = 0
	image_index = 1
	alarm_set(1,1)	
}