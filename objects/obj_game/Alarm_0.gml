if (room != rm_game) {
	exit;
}

var _xx = 0;
var _yy = 0;

var r2 = 3;
var r1 = 1;
var time = 5;

if (score > 200) {
	r2 = ceil(score/100) * 3;
	r1 = ceil(score/100);
}

if (score >= 1000) {
	time = 1
} else if(score >= 800) {
	time = 2;
} else if(score >= 500) {
	time = 3;
} else if(score >= 200) {
	time = 4;
}

if (irandom_range(r1, r2) <= 5 * time) {
	repeat(irandom_range(r1, r2)) {
		if (choose(0,1) == 0) {
			_xx = choose(0, room_width);
			_yy = irandom_range(0, room_height);

		} else {
			_xx = irandom_range(0, room_width);
			_yy = choose(0, room_height);
		}
	
		instance_create_layer(_xx, _yy, "instances", obj_asteroid);
	}
}



if(irandom_range(0, r2 * 10) >= 15 * time) {
	if (choose(0,1) == 0) {
		_xx = choose(0, room_width);
		_yy = irandom_range(0, room_height);

	} else {
		_xx = irandom_range(0, room_width);
		_yy = choose(0, room_height);
	}

	instance_create_layer(_xx, _yy, "Instances", obj_enemy_ship);
}

if(irandom_range(0, r2 * 10) >= 48) {
	var margin = 30;
	instance_create_layer(irandom_range(margin, room_width - margin), irandom_range(margin, room_height - margin), "Instances", obj_power_up);
}

alarm[0] = time * room_speed;