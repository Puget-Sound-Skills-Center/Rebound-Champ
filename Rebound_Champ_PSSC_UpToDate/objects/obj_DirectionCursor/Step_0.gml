var dir = point_direction(obj_dummy.x, obj_dummy.y, mouse_x, mouse_y);
image_angle = dir;

var dist = point_distance(obj_dummy.x,obj_dummy.y,mouse_x,mouse_y);
var max_dist = 100;
if (dist > max_dist) {
	dist = max_dist;	
}

x = obj_dummy.x + lengthdir_x(dist, dir);
y = obj_dummy.y + lengthdir_x(dist, dir);