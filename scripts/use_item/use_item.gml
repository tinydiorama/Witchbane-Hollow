///@arg item_index
///@arg amount
function use_item(argument0, argument1) {
	var item = argument0;
	var amount = argument1;
	
	with ( o_game ) {
		var item_index = ds_list_find_index(items, item);

		if ( instance_exists(o_game) ) {
			with ( o_game ) {
				// Find the item
				if ( ds_list_find_value(items, item_index) != undefined ) {
					var item_amount = item_number[| item_index];
					if ( item_amount >= amount ) {
						item_number[| item_index] -= amount;
						if ( item_amount - amount == 0 ) {
							ds_list_delete(item_number, item_index);
							ds_list_delete(items, item_index);
						}
						return true;
					} else {
						return false;
					}
				}
			}
		}
	}	


}
