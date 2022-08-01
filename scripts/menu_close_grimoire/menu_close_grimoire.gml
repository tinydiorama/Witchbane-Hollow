function menu_close_grimoire() {
	if ( instance_exists(o_grimoire_ui) ) {
		instance_destroy(o_grimoire_ui);
	}
}
