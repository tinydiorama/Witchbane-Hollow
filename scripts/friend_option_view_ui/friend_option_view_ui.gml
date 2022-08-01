function friend_option_view_ui() {
	var friend_index = index;
	// Find the item
	friend = ds_list_find_value(o_game.quests, friend_index);
	//if ( item != undefined && item[? "effect"] != "no_effect" ) {

	child = instance_create_layer(x + width + 4, y, "Instances", o_friend_ui);
	child.parent = id;
	enabled = false;
	
	//} 


}
