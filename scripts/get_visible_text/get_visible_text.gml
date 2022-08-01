///@arg pause_time
function get_visible_text(argument0) {
	var pause_time = argument0;
	var new_string = string_copy(text[text_page], 1, text_count);

	if ( string_length(new_string) > string_length(text_visible) ) {
		var last_char = string_char_at(new_string, text_count);
	
		if ( array_find_index(last_char, [".", ",", "!", "?"]) != -1 && text_count < string_length(text[text_page]) ) {
			alarm[0] = pause_time;
		}
	
		// Set the visible text
		text_visible = new_string;
	}


}
