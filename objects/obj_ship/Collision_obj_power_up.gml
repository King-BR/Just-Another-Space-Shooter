global._powerup_total++;

switch(other.sprite_index) {
	case spr_power_live: {
		lives++;
		break;
	}
	case spr_power_shield: {
		shields++;
		break;
	}
	default:
	case spr_power_random: {
		switch(choose(1,2)) {
			case 1: {
				lives++;
				break;
			}
			case 2: {
				shields++;
				sprite_index = spr_ship_shield;
				break;
			}
			default: {
				shields++;
				sprite_index = spr_ship_shield;
			}
		}
	}
}

with(other) {
	instance_destroy()
}