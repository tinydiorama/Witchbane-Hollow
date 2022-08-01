function menu_option_friends() {
	child = instance_create_layer(x + width + 4, y, "Instances", o_friend_list_ui);
	child.parent = id;
	enabled = false;


}
