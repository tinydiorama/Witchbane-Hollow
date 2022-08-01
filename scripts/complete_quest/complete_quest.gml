///@arg quest
function complete_quest(argument0){
	var quest = argument0;

	// Make sure the game exists
	if ( instance_exists(o_game) ) {
		with ( o_game ) {
			// is the item already in the list
			var quest_index = ds_list_find_index(quests, quest);
			if ( quest_index != -1 ) { // we found the quest
				ds_list_add( quests_done, quest);
				var done_states = quest_states[| quest_index];
				ds_list_add( quests_done_states, done_states );
				ds_list_delete( quests, quest_index );
				ds_list_delete( quest_states, quest_index);
				return true;
			} else {
				return false;
			}
		}
	}
}