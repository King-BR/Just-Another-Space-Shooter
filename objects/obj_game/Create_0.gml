score = 800;
lives = 3;

paused = false;
paused_surf = -1;

device_mouse_dbclick_enable(false);

switch(os_type) {
	case os_ios:
	case os_android: {
		global.mobile = true;
		break;
	}
	default: {
		global.mobile = false;
		break;
	}
}

