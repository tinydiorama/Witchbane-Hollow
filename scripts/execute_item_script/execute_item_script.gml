///@arg item_index
function execute_item_script(argument0) {
	var item_index = argument0;

	if ( instance_exists(o_game) ) {
		with ( o_game ) {
			// Find the item
			var item = ds_list_find_value(items, item_index);
			if (item != undefined ) {
				use_item( item, 1);
				if ( item[? "effect"] != "" ) {
					script_execute(asset_get_index(item[? "effect"]), item[? "arguments"]);
				}
			}
		}
	}


}
