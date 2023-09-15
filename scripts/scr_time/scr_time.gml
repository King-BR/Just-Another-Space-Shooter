// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function format_time_survived(_time_survived) {
	var time_sec = floor(_time_survived/60);
	
	var hour = string_format(time_sec div (60 * 60), 2, 0);
	var minute = string_format(time_sec div 60 mod 60,2,0);
	var second = string_format(time_sec mod 60,2,0);
	
	var timestr = string_replace_all(hour + ":" + minute + ":" + second," ","0");
	
	return timestr;
}