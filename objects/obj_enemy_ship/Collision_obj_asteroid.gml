audio_play_sound(snd_die, 1, false);
		
switch(sprite_index) {
	case spr_enemy_ship: 
		with(other) {
			instance_destroy();
			repeat(10) {
				instance_create_layer(x, y, "Instances", obj_debris);
			}
			
		}
		break;
	case spr_enemy_kamikaze_ship:
		instance_create_layer(x, y, "Instances", obj_explosion);
		break;
}

instance_destroy();

with(other) {
	
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

	instance_destroy();
}