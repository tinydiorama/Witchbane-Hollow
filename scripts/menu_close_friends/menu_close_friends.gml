function menu_close_friends() {
	if ( instance_exists(o_friend_list_ui) ) {
		instance_destroy(o_friend_list_ui);
	}
	if ( instance_exists(o_friend_ui) ) {
		instance_destroy(o_friend_ui);
	}
}
