if (keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start: {
			room_goto(rm_game);
			break;
		}
		case rm_win:
		case rm_gameover: {
			game_restart();
			break;
		}
	}
}

if (room == rm_game) {
	if keyboard_check_pressed(ord("P")) {
		paused = !paused;
		
		if (paused == false) {
			audio_sound_gain(msc_song, 1, 0);
			instance_activate_all();
			surface_free(paused_surf);
			paused_surf = -1;
		}
	}

	if (paused == true) {
		alarm[0]++;
		alarm[1]++;
		audio_sound_gain(msc_song, 0.3, 0);
	} else {
		_time_survived++;
	}

	if (score >= 1000) {
		audio_play_sound(snd_win, 1, false);
		room_goto(rm_win);
	}
	
	if (lives <= 0){
		audio_play_sound(snd_lose, 1, false);
		room_goto(rm_gameover);
	}
}