with(other) {
	if (sprite_index == spr_enemy_kamikaze_ship) {
		instance_create_layer(x, y, "Instances", obj_explosion);
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
	
	instance_destroy();
}

score += 50;
audio_play_sound(snd_die, 1, false);
instance_destroy();