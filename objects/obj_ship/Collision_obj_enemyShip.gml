if(immortal == 1) exit;

with(other) {
	switch(sprite_index) {
		case spr_enemyShip: {
			instance_destroy();

			repeat(10) {
				instance_create_layer(x, y, "Instances", obj_debris);
			}
			break;
		}
		case spr_enemyKamikazeShip: {
			var _list = ds_list_create();
			var _num = collision_circle_list(x, y, 50, obj_asteroid, false, true, _list, true);
			if (_num > 0) {
				for (var i = 0; i < _num; ++i;) {
					repeat(10) {
						instance_create_layer(_list[| i].x, _list[| i].y, "Instances", obj_debris);
					}

					audio_play_sound(snd_die, 1, false);
					instance_destroy(_list[| i]);
				}
			}
			ds_list_destroy(_list);
			instance_destroy();
			break;
		}
	}
}

audio_play_sound(snd_die, 1, false);

if(shields > 0) {
	shields--;
	immortal = 1;
	alarm[1] = 2 * room_speed;
	exit;
}

lives--;

if(lives > 0) {
	immortal = 1;
	alarm[1] = 3 * room_speed;
	sprite_index = spr_shipProtection;
}