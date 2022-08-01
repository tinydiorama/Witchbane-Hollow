function create_use_option() {
	// Checks to see whether the item is even usable
	if ( instance_exists(parent) ) {
		// check to see if using an item is even a thing
		var item_index = index;
		// Find the item
		item = ds_list_find_value(o_game.items, parent.index);
		if ( item != undefined ) {
			show_message(item[? "effect"]);
			if ( item[? "effect"] == "no_effect" ) {
				return true;
			}
		}
	}
	return false;


}
