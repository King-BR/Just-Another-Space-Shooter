if(immortal == 1) exit;

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