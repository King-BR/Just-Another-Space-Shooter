/// @description vstick_set_x(id,x);
/// @param id
/// @param x
function vstick_set_x(argument0, argument1) {
	//set the x position for a virtual joystick
	vstick[argument0,3]=argument1;


}
