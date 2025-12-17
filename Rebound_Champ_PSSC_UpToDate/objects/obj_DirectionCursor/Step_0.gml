var dir = point_direction(obj_PlayerHeart.x, obj_PlayerHeart.y, mouse_x, mouse_y);
image_angle = dir;

var dist = point_distance(obj_PlayerHeart.x,obj_PlayerHeart.y,mouse_x,mouse_y);
var max_dist = 125;
if (dist > max_dist) {
	dist = max_dist;	
}

x = obj_PlayerHeart.x + lengthdir_x(dist, dir);
y = obj_PlayerHeart.y + lengthdir_y(dist, dir);