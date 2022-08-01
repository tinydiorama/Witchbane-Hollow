///@arg collection
///@arg collectionslot
function pickup_collectable(argument0, argument1) {
	var collection = argument0;
	var slot = argument1;

	// Make sure the game exists
	if ( instance_exists(o_game) ) {
		with ( o_game ) {
			ds_list_set(collection, slot, true);
			totalgrimoire_collect++;
		}
	}


}
