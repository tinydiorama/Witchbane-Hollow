function obtain_friends() {
	// Make sure the game exists
	if ( instance_exists(o_game) ) {
		with ( o_game ) {
			for ( var i = 0; i < array_length_1d(friend_keys); i++ ) {
				var key = friend_keys[i];
				ds_list_add(friends, o_data.friends[? key]);
				ds_list_add(friends_discovered, false);
			}
		}
	}


}
