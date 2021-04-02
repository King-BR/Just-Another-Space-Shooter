switch(sprite_index) {
	case spr_enemyShip: 
		with(other) {
			instance_destroy();
			repeat(10) {
				instance_create_layer(x, y, "Instances", obj_debris);
			}
			
		}
		break;
	case spr_enemyKamikazeShip:
		audio_play_sound(snd_die, 1, false);
		instance_create_layer(x, y, "Instances", obj_explosion);
		break;
}

instance_destroy();