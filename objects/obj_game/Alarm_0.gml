if (room != rm_game) {
	exit;
}

var xx = 0;
var yy = 0;

var r1 = 1;
var r2 = 3;
var time = 4;

if(score >= 800) {
	r1 = 6;
	r2 = 9;
	time = 1;
} else if(score >= 500) {
	r1 = 4;
	r2 = 7;
	time = 2;
} else if(score >= 200) {
	r1 = 2;
	r2 = 5;
	time = 3;
}

repeat(irandom_range(r1, r2)) {
	if (choose(0,1) == 0) {
		xx = choose(0, room_width);
		yy = irandom_range(0, room_height);

	} else {
		xx = irandom_range(0, room_width);
		yy = choose(0, room_height);
	}
	
	instance_create_layer(xx, yy, "instances", obj_asteroid);
}




if(irandom_range(0, r2 * 10) >= 45) {
	if (choose(0,1) == 0) {
		xx = choose(0, room_width);
		yy = irandom_range(0, room_height);

	} else {
		xx = irandom_range(0, room_width);
		yy = choose(0, room_height);
	}

	instance_create_layer(xx, yy, "Instances", obj_enemy_ship);
}

if(irandom_range(0, r2 * 10) >= 48) {
	var margin = 30;
	instance_create_layer(irandom_range(margin, room_width - margin), irandom_range(margin, room_height - margin), "Instances", obj_power_up);
}

alarm[0] = time * room_speed;