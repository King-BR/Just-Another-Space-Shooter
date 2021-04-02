/// @description vstick_set_frontsprite(id,sprite)
/// @param id
/// @param sprite
function vstick_set_frontsprite(argument0, argument1) {
	//sets the foreground sprite (usually the stick) for the virtual joystick
	vstick[argument0,14]=argument1;


}
