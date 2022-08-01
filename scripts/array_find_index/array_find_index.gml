///@arg value
///@arg array
function array_find_index(argument0, argument1) {

	var _value = argument0;
	var _array = argument1;

	// Look for value
	for ( var i = 0; i < array_length_1d(_array); i++ ) {
		if ( _array[i] == _value ) {
			return i;	
		}
	}

	return -1;


}
