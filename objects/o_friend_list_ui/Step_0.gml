//if ( o_input.down_pressed || o_input.up_pressed ) { // if lb or rb buttons are pressed on controller
if ( o_input.up_pressed || o_input.down_pressed ) {
	index += o_input.down_pressed - o_input.up_pressed;
	index = clamp(index, 0, ds_list_size(options) - 1);

	var restricted_max = min(max_shown, ds_list_size(options));
	view_index += o_input.down_pressed - o_input.up_pressed;
	view_index = clamp(view_index, 0, restricted_max - 1);
	// Run the option
		
	if ( instance_exists(o_friend_ui) ) {
		instance_destroy(o_friend_ui);
	}
	var option = options[| index];
	script_execute(option[? "script"]);
}

// Exit the options list
if ( o_input.pause_pressed ) {
	instance_destroy();
}