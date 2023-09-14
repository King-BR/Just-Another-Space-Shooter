audio_play_sound(snd_die, 1, false);

with(other) {
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
	
	instance_destroy();
}