///@arg item
///@arg amount
function pickup_item(argument0, argument1) {
	var item = argument0;
	var amount = argument1;

	// Make sure the game exists
	if ( instance_exists(o_game) ) {
		with ( o_game ) {
			// is the item already in the list
			var item_index = ds_list_find_index(items, item);
			if ( item_index != -1 ) { // we found an item
				item_number[| item_index] += amount;
			} else {
				ds_list_add(items, item);
				ds_list_add(item_number, amount);
			}
		}
	}


}
