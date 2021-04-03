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
			instance_create_layer(x, y, "Instances", obj_explosion);
			instance_destroy();
			exit;
			break;
		}
	}
}

audio_play_sound(snd_die, 1, false);

if(shields > 0) {
	shields--;
	immortal = 1;
	sprite_index = spr_shipProtection;
	alarm[1] = 2 * room_speed;
	exit;
}

lives--;

if(lives > 0) {
	immortal = 1;
	alarm[1] = 3 * room_speed;
	sprite_index = spr_shipProtection;
}