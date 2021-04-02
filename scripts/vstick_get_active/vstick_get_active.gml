/// @description vstick_get_active(id)
/// @param id
function vstick_get_active(argument0) {
	//returns whether the virtual joystick is accepting input or not
	return vstick[argument0,5];


}
