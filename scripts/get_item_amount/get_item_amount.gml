///@arg item_index
function get_item_amount(argument0) {
	var item = argument0;
	
	with ( o_game ) {
		var item_index = ds_list_find_index(items, item);

		if ( instance_exists(o_game) ) {
			with ( o_game ) {
				// Find the item
				if ( ds_list_find_value(items, item_index) != undefined ) {
					var item_amount = item_number[| item_index];
					return item_amount;
				} else {
					return -1;
				}
			}
		}
	}	


}
