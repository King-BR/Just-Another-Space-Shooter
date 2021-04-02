switch(other.sprite_index) {
	case spr_powerLive: {
		lives++;
		break;
	}
	case spr_powerShield: {
		shields++;
		break;
	}
	default:
	case spr_powerRandom: {
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