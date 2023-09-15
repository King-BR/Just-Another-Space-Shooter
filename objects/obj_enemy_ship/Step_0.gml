if (instance_exists(obj_ship)) {
	var _inst = instance_nearest(x, y, obj_ship);
	
	direction = point_direction(x, y, _inst.x , _inst.y);
	image_angle = direction;

	switch(sprite_index) {
		case spr_enemy_ship: {
			if (laserCooldown == 0) {
				audio_play_sound(snd_zap, 1, false);
				var b = instance_create_layer(x, y, "Instances", obj_enemy_bullet);
				b.direction = image_angle;
				b.image_angle = image_angle
				laserCooldown = 1;
				alarm[0] = room_speed/2;
			}
	
			if (point_distance(x, y, _inst.x, _inst.y) > 200) {
				speed = 2;
				mp_potential_step(_inst.x, _inst.y, speed, false);
			} else {
				speed = 0;
			}
			break;
		}
		case spr_enemy_kamikaze_ship: {
			speed = 3;
			mp_potential_step(_inst.x, _inst.y, speed, false);
			break;
		}
	}
}

move_wrap(true, true, sprite_width/2);
