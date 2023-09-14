if(immortal == 1) exit;

with(other) {
	switch(sprite_index) {
		case spr_enemy_ship: {
			instance_destroy();

			repeat(10) {
				instance_create_layer(x, y, "Instances", obj_debris);
			}
			break;
		}
		case spr_enemy_kamikaze_ship: {
			instance_create_layer(x, y, "Instances", obj_explosion);
			instance_destroy();
			exit;
			break;
		}
	}
}

audio_play_sound(snd_die, 1, false);

if(_shields > 0) {
	_shields--;
	immortal = 1;
	sprite_index = spr_ship_protection;
	alarm[1] = 2 * room_speed;
	exit;
}

lives--;

if(lives > 0) {
	immortal = 1;
	alarm[1] = 3 * room_speed;
	sprite_index = spr_ship_protection;
}