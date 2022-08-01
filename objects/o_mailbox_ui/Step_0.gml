
if ( o_input.up_pressed || o_input.down_pressed ) {
	index += o_input.down_pressed - o_input.up_pressed;
	index = clamp(index, 0, numCount - 1);

	var restricted_max = min(max_shown, numCount);
	view_index += o_input.down_pressed - o_input.up_pressed;
	view_index = clamp(view_index, 0, restricted_max - 1);
	// Run the option
	
	var option = allList[| index];
	if ( index < numNewMail ) {
		var option = options[| index];
	}
}

// Exit the options list
if ( o_input.pause_pressed ) {
	instance_destroy();
}