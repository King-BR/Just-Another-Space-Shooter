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
				break;
			}
			default: shields++;
		}
	}
}

with(other) {
	instance_destroy()
}