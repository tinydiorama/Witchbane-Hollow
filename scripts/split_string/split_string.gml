///@arg text
///@arg width
function split_string(argument0, argument1){
	var text = argument0;
	var width = argument1;

	var last_space = 1;


	// Count is the count of each character in the page
	var count = 1;
	
	// Loop through each character
	var char = "";
	var str = "";
	var lastspacestr = "";
	var tempsubstring = "";
	var strsplitindex = 1;
	var length = string_length(text);
	while (count <= length ) {
		char = string_char_at(text, count);
		str = str + char;
		var str_width = string_width(str);
		
		// Update the last space
		if ( char == " " ) {
			last_space = count;	
			lastspacestr = lastspacestr + " " + tempsubstring;
			tempsubstring = "";
		} else {
			tempsubstring = tempsubstring + string_char_at(text, count);
		}
		
		// Check the width
		if ( str_width > width || count == length ) {
			// Remove the space
			if ( count == length ) {
				ds_list_add(splitinfo, lastspacestr + " " + tempsubstring);
				return;
			} else {
				ds_list_add(splitinfo, lastspacestr);
			}
			strsplitindex = last_space;
			count = last_space;
			str = "";
			tempsubstring = "";
			lastspacestr = "";
		}
		
		count++;
	}

	return;
}