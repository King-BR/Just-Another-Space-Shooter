with(other) {
	var dir = direction;
	instance_destroy();
}

alarm[0] -= room_speed;
direction = dir;
speed = 0.5;