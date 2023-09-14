instance_destroy();
audio_play_sound(snd_die, 1, false);

with(other) {
	instance_destroy();
	
	if(sprite_index == spr_asteroid_huge || sprite_index == spr_asteroid_huge2) {
		repeat(2) {
			var _new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			_new_asteroid.sprite_index = spr_asteroid_med;
		}
	} else if(sprite_index == spr_asteroid_med) {
		repeat(2) {
			var _new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			_new_asteroid.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}