if(obj_ball.BallSpeedModifer = 0) {
	draw_text(x,y,string("Current Ball Speed:" + string(BallSpeed) + " +(" + string(obj_ball.BallHitSpeedDecay) + ")"))
} else if (obj_ball.BallSpeedModifer > 0) {
	draw_text(x,y,string("Current Ball Speed:" + string(BallSpeed - obj_ball.BallSpeedModifer)) + " +(" + string(obj_ball.BallHitSpeedDecay) + ")" + "+(" + string(obj_ball.BallSpeedModifer) + ")")
}