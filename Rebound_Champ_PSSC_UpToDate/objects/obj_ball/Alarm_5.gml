/// @description Trail Animation
if (BallTrailActive == true) {
	var Ball = instance_create_layer(x,y,"Instances",obj_ball_SFX);
	Ball.image_xscale = image_xscale;
	Ball.image_yscale = image_yscale;
	alarm_set(5,2);
}
