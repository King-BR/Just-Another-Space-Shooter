switch(other.sprite_index) {
	case spr_power_live: {
		lives++;
		break;
	}
	case spr_power_shield: {
		_shields++;
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
				_shields++;
				break;
			}
			default: _shields++;
		}
	}
}

with(other) {
	instance_destroy()
}