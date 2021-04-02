/// @description vstick_get_direction(id)
/// @param id
function vstick_get_direction(argument0) {
	//get the direction (in degrees) of the joystick. If the joystick is centered,
	//it will keep its value from when the joystick was last used.
	return radtodeg(vstick[argument0,8]);


}
