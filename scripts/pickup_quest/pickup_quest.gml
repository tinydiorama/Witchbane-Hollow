///@arg item
function pickup_quest(argument0) {
	var quest = argument0;

	// Make sure the game exists
	if ( instance_exists(o_game) ) {
		with ( o_game ) {
			// is the item already in the list
			var quest_index = ds_list_find_index(quests, quest);
			if ( quest_index != -1 ) { // we found the quest
				return;
			} else {
				var questLength = ds_list_size(quests);
				ds_list_add(quests, quest);
				var states = [];
				states[0] = 0;
				ds_list_add(quest_states, states);
			}
		}
	}


}
