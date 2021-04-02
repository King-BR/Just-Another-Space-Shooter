/// @description vstick_get_deviation(id)
/// @param id
function vstick_get_deviation(argument0) {
	//returns the deviation of the joystick (fraction from 0 to 1)
	return sqrt(sqr(vstick[argument0,11])+sqr(vstick[argument0,12]));


}
