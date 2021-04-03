alarm[0] -= room_speed;
direction = other.direction;
speed = 0.5;

with(other) {
	instance_destroy();
}