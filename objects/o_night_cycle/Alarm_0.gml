/// @description Day cycle
if ( alpha < alphaMax ) {
	alpha += 0.01;
	alarm[0] = 1;
} else if ( alpha >= alphaMax ) {
	alarm[1] = room_speed * night_length;	
}