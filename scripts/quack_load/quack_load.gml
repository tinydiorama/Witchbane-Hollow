///@function quack_load(filename or base64 string)
///@arg filename_or_b64str - the quack file or base64 string to load
function quack_load(argument0) {

	/*
		Called by the user to load a quack file, or b64 string, and return it as a ds_map.
		This quack file needs to be passed to quack_start_conversation to find
	*/

	if (file_exists(argument0)) { // try to deal with file
		if (os_browser != browser_not_a_browser) {
			// special browser workaround due to weirdness
			var file = file_text_open_read(argument0);
			var str = ""
			while(! file_text_eof(file)) {
			   str += file_text_readln(file)
			}
			file_text_close(file);
		}
		else {
			// desktop can use buffer functions and also compression
			show_debug_message("QUACK: Loading file " + string(argument0))
			var buff = buffer_load(argument0);
			var str = buffer_read(buff, buffer_text);
			buffer_delete(buff);
		}
	}
	else { // not file, try to decompress as string
		var str = argument0;
	}

	var buff = buffer_base64_decode(str);
	if (buff < 0) {
		show_error("QUACK! Could not load story", true);
	}
	
	var decompress = buffer_decompress(buff);
	if (decompress >= 0) { // successful decompress
		var str = buffer_read(decompress, buffer_text);
		show_debug_message("QUACK: File is compressed+JSON");
		buffer_delete(decompress);
	}
	else { // unsuccessful decompress
		show_debug_message("QUACK: File is not compressed, assuming JSON");
		var str = buffer_read(buff, buffer_text);
	}
	buffer_delete(buff);

	var quack = json_decode(str);
	if (quack < 0) { // unsuccessful json read
		show_error("QUACK! Could not decode quack file", true);	
	}

	return quack;


}
