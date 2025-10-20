/// @description pos to ball + rot
x = obj_ball.x
y = obj_ball.y
if(obj_ball.CurrentTarget = "Player") {
	image_angle = floor(point_direction(x,y,obj_player.x,obj_player.y))
	direction = image_angle
} 
if (obj_ball.CurrentTarget = "Enemy") {
	image_angle = floor(point_direction(x,y,obj_dummy.x,obj_dummy.y))
	direction = image_angle
}