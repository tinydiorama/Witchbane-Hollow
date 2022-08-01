///@arg text_array
///@arg width
///@arg font
function format_text(argument0, argument1, argument2) {
	var text = argument0;
	var width = argument1;
	var font = argument2;

	// Set the font
	draw_set_font(font);

	// Get the number of pages
	var array_size = array_length_1d(text);
	var last_space = 0;

	// Loop through the pages
	for ( var i = 0; i < array_size; i++ ) {
		// Count is the count of each character in the page
		var count = 0;
	
		// Loop through each character
		var char = string_char_at(text[i], count);
		while (char != "") {
			var str = string_copy(text[i], 1, count);
			var str_width = string_width(str);
		
			// Update the last space
			if ( char == " " ) {
				last_space = count;	
			}
		
			// Check the width
			if ( str_width > width ) {
				// Remove the space
				text[@ i] = string_delete(text[i], last_space, 1);
				text[@ i] = string_insert("\n", text[i], last_space);
			}
		
			count++;
			char = string_char_at(text[@ i], count);
		}
	}

	return text;


}
