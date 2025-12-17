if (image_alpha > .1) {
	image_alpha = lerp(image_alpha,0,.1);
} else {
	instance_destroy();
}