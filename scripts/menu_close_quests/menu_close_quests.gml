function menu_close_quests() {
	if ( instance_exists(o_quest_list_ui) ) {
		instance_destroy(o_quest_list_ui);
	}
	if ( instance_exists(o_quest_ui) ) {
		instance_destroy(o_quest_ui);
	}

}
