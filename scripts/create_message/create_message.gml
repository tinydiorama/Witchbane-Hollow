///@arg x
///@arg y
///@arg text
function create_message(argument0, argument1, argument2) {
	var xx = argument0;
	var yy = argument1;
	var text = argument2;
	var w = string_width(text);

	// Create the message ui
	var message_ui = instance_create_layer(xx, yy, "Instances", o_message_ui);

	// Update the message ui
	with ( message_ui ) {
		message = text;
		width = w + 12;
		height = string_height_ext(text, -1, w) + 12;
		finaly = gui_height - height * scale;
	}

	return message_ui;


}
