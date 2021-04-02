/// @description vstick_get_xaxis(id) 
/// @param id
function vstick_get_xaxis(argument0) {
	//returns the x-axis value for a virtual joystick
	//ranges from -1 <-> 1
	return vstick[argument0,0];


}
