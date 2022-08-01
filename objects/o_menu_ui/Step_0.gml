//if ( o_input.down_pressed || o_input.up_pressed ) { // if lb or rb buttons are pressed on controller
if ( o_input.right_bumper_pressed || o_input.left_bumper_pressed ) {
	index += o_input.right_bumper_pressed - o_input.left_bumper_pressed;
	index = clamp(index, 0, ds_list_size(options) - 1);

	var restricted_max = min(max_shown, ds_list_size(options));
	view_index += o_input.right_bumper_pressed - o_input.left_bumper_pressed;
	view_index = clamp(view_index, 0, restricted_max - 1);
	// Run the option
	
	script_execute(closescript);
	var option = options[| index];
	script_execute(option[? "script"]);
	closescript = option[? "closescript"];
}
if ( clicked ) {
	index = mouse_hover_index;
	script_execute(closescript);
	var option = options[| index];
	script_execute(option[? "script"]);
	closescript = option[? "closescript"];
    clicked = false;
}

// Exit the options list
if ( o_input.pause_pressed ) {
	instance_destroy();
}
