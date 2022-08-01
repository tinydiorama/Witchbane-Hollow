// Pausing
if ( o_input.pause_pressed && ! dialogrunning ) {
	// unpausing is handled in o_ui_parent
	if ( ! paused_ ) {
		pause_game();
		if ( ! instance_exists(o_menu_ui) ) {
			instance_create_layer(16, 16, "Instances", o_menu_ui);
		}
	}
}