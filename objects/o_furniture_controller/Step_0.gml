if ( !enabled ) {
	exit;
}

index += o_input.down_pressed - o_input.up_pressed;
index = clamp(index, 0, ds_list_size(options) - 1);

var restricted_max = min(max_shown, ds_list_size(options));
view_index += o_input.down_pressed - o_input.up_pressed;
view_index = clamp(view_index, 0, restricted_max - 1);

// Run the option
if ( o_input.action_one_pressed && ds_list_size(options) > 0 ) {
	// do stuff
}