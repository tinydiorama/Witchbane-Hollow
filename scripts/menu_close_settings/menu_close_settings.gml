function menu_close_settings() {
	if ( instance_exists(o_settings_ui) ) {
		instance_destroy(o_settings_ui);
	}

}
