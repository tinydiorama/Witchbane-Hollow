function menu_close_items() {
	if ( instance_exists(o_item_list_ui) ) {
		instance_destroy(o_item_list_ui);
	}
}
