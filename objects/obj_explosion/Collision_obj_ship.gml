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

_list = ds_list_create();
_num = collision_circle_list(x, y, 50, obj_enemyShip, false, true, _list, true);

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

_list = ds_list_create();
_num = collision_circle_list(x, y, 50, obj_powerUp, false, true, _list, true);

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

_list = ds_list_create();
_num = collision_circle_list(x, y, 50, obj_bullet, false, true, _list, true);

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

_list = ds_list_create();
_num = collision_circle_list(x, y, 50, obj_enemyBullet, false, true, _list, true);

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