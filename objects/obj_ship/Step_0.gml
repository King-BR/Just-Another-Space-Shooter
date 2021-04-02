if(global.mobile) {
	direction = vstick_get_direction(1);
	image_angle = vstick_get_direction(1);
	
	if(vstick_check(1)) {
		speed = 5;
	}
	
	if(vstick_check_released(1)) {
		speed = 0;
	}
	
	if(device_mouse_check_button_pressed(0, mb_left)) {
		audio_play_sound(snd_zap, 1, false);
		var inst = instance_create_layer(x, y, "Instances", obj_bullet);
		inst.direction = image_angle;
	}
} else {
	if(keyboard_check(vk_left)) {
		image_angle += 2.5;
	}

	if(keyboard_check(vk_right)) {
		image_angle -= 2.5;
	}

	if(keyboard_check(vk_up)) {
		motion_add(image_angle, 0.05);
	}

	if(keyboard_check(vk_down)) {     
		motion_add(image_angle, -0.05);
	}
	
	if (speed > 5) speed = 5;

	if(keyboard_check(vk_space) && laserCooldown == 0) {
		alarm[0] = room_speed/6;
		laserCooldown = 1;
		audio_play_sound(snd_zap, 1, false);
		var inst = instance_create_layer(x, y, "Instances", obj_bullet);
		inst.direction = image_angle;
	}

	if(keyboard_check(ord("S"))) {
		speed = 0;
	}
}

move_wrap(true, true, sprite_width/2);