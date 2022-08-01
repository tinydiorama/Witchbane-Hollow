///@arg friend
function discover_friend(argument0) {
	var friend = argument0;
	// Make sure the game exists
	if ( instance_exists(o_game) ) {
		with ( o_game ) {
			var something = o_data.friends[? friend];
			var pos = ds_list_find_index(friends, something);
			if ( pos != -1 ) {
				ds_list_set(friends_discovered, pos, true);
				return true;
			} else {
				return false;
			}
		}
	}


}
