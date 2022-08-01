if ( !enabled ) {
	exit;
}

// Exit the options list
if ( o_input.pause_pressed ) {
	instance_destroy();
}