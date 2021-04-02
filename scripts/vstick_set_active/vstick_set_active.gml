/// @description vstick_set_active(id,active)
/// @param id
/// @param active
function vstick_set_active(argument0, argument1) {
	//sets whether the virtual joystick is to accept input or not
	vstick[argument0,5]=argument1;


}
