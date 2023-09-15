switch(room) {
	case rm_game: {
		draw_set_font(fnt_text);
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: ");
		
		var _xx = 80;
		repeat(lives) {
			draw_sprite(spr_heart, spr_heart, _xx, 40);
			_xx += 20;
		}
		
		draw_text(20, 60, "SHIELDS: ");
		var _shields = 0;
		with(obj_ship) {
			_shields = shields;
		}
		
		_xx = 80;
		repeat(_shields) {
			draw_sprite(spr_shield, spr_shield, _xx, 60);
			_xx += 20;
		}
		
		if (paused == true) {
			if (!surface_exists(paused_surf)) {
				if (paused_surf == -1) {
					instance_deactivate_all(true);
				}
				paused_surf = surface_create(room_width, room_height);
				surface_set_target(paused_surf);
				draw_surface(application_surface, 0, 0);
				surface_reset_target();

			} else {
				draw_surface(paused_surf, 0, 0);
				draw_set_alpha(0.5);
				draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
				draw_set_alpha(1);
				draw_set_halign(fa_center);
				draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
				draw_set_halign(fa_left);
			}
		}
		break;
	}
	case rm_start: {
		draw_set_halign(fa_center);
		var _c = c_yellow;
		draw_text_transformed_colour(room_width / 2, room_height / 12,
@"JUST ANOTHER
SPACE SHOOTER", 3, 3, 0, _c, _c, _c, _c, 1);
		draw_text(room_width/2, 220, 
@"Score 1,000 points to win!

UP: speed up
DOWN: slow down
LEFT/RIGHT: change direction
S: stop moving
SPACE: shoot
P: pause/unpause

>> PRESS ENTER TO START <<");
		draw_set_halign(fa_left);
		break;
	}
	case rm_win: {
		draw_set_halign(fa_center);
		var _c = c_lime;
		var _formatted_time_survived = format_time_survived(_time_survived)
		draw_text_transformed_colour(room_width / 2, room_height / 7, "YOU WON!", 3, 3, 0, _c, _c, _c, _c, 1);
		draw_text(room_width / 2, room_height / 5, $"FINAL SCORE: {score}" +
		$"\nENEMIES KILLED: {global._enemies_killed}" + 
		$"\nPOWER UPS COLLECTED: {global._powerup_total}" +
		$"\nTIME SURVIVED: {_formatted_time_survived}");
		draw_text(room_width / 2, room_height / 3, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
	}
	case rm_gameover: {
		draw_set_halign(fa_center);
		var _c = c_red;
		var _formatted_time_survived = format_time_survived(_time_survived)
		draw_text_transformed_colour(room_width / 2, room_height / 7, "GAME OVER", 3, 3, 0, _c, _c, _c, _c, 1);
		draw_text(room_width / 2, room_height / 5, $"FINAL SCORE: {score}" +
		$"\nENEMIES KILLED: {global._enemies_killed}" + 
		$"\nPOWER UPS COLLECTED: {global._powerup_total}" +
		$"\nTIME SURVIVED: {_formatted_time_survived}");
		draw_text(room_width / 2, room_height / 3, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
	}
}