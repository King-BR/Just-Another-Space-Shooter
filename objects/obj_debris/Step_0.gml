image_angle += 0.5;
image_alpha -= 0.01;
if(image_alpha <= 0) {
	instance_destroy();
}