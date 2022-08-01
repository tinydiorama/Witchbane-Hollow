function menu_option_quests() {
	child = instance_create_layer(x + width + 4, y, "Instances", o_quest_list_ui);
	child.parent = id;
	enabled = false;


}
