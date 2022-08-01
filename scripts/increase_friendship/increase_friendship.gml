///@arg item
///@arg amount
function increase_friendship(argument0, argument1) {
	var friend = argument0;
	var amount = argument1;

	// Make sure the game exists
	if ( instance_exists(o_game) ) {
		with ( o_game ) {
			// is the item already in the list
			var friend_score = ds_map_find_value(friendship_scores, friend);
			if ( friend_score != undefined ) { // we found the friend
				friendship_scores[? friend] += amount;
			} else {
				ds_map_add(friendship_scores, friend, amount);
			}
		}
	}


}
