if (room == rm_game) {
	
	if audio_is_playing(msc_song) {
		audio_stop_sound(msc_song);
	}
	
	_time_survived = 0;
	global._powerup_total = 0;
	global._enemies_killed = 0;
	
	if(global.music)audio_play_sound(msc_song, 2, true);
	
	repeat(6) {
		var _xx = choose(irandom_range(0, room_width * 0.3), irandom_range(room_width * 0.7, room_width));
		var _yy = choose(irandom_range(0, room_height * 0.3), irandom_range(room_height * 0.7, room_height));
		instance_create_layer(_xx, _yy, "Instances", obj_asteroid);
    }
	alarm[0] = 60;
}