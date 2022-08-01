///@arg item
///@arg list
function pickup_furniture(argument0, argument1) {
	var item = argument0;
	var furniturelist = argument1;

	// Make sure the game exists
	if ( instance_exists(o_game) ) {
		if ( furniturelist == "outdoor" ) {
			with ( o_game ) {
				// is the item already in the list
				var item_index = ds_list_find_index(furniture_outdoor, item);
				if ( item_index != -1 ) { // we found an item
					// do nothing
				} else {
					ds_list_add(furniture_outdoor, item);
				}
			}
		}
	}


}
