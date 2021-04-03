instance_destroy();

with(other) {
	audio_play_sound(snd_die, 1, false);
	
	if(immortal == 1) exit;
	
	if(shields > 0) {
		shields--;
		immortal = 1;
		alarm[1] = 2 * room_speed;
		exit;
	}

	lives--;

	if(lives > 0) {
		immortal = 1;
		sprite_index = spr_shipProtection;
		alarm[1] = 2 * room_speed + 30;
	}
}