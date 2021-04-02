/// @description vstick_get_yaxis(id) 
/// @param id
function vstick_get_yaxis(argument0) {
	//returns the y-axis value for a virtual joystick
	//ranges from -1 <-> 1 (with 1 being the bottom-most area, just like GM)
	return vstick[argument0,1];


}
