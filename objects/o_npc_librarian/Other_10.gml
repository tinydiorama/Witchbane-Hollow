event_inherited();

if ( global.player_energy + energy_dec >= 0 ) {
	adjust_energy(energy_dec);

	var questindex = ds_list_find_index(o_game.quests, o_data.quests[? "bookofspecimens"]);
	if ( questindex == -1 ) { /* haven't gotten her quest yet */
			quack_state = quack_state_new(global.dialogue, "SQ-Lib-1", quack_adapter_fc);
			quack_start_conversation(quack_state);
		
			discover_friend("librarian");
			pickup_quest(o_data.quests[? "bookofspecimens"]);
		//} // else if ( o_game.quest_states(questindex)
	} else {
		var queststates = ds_list_find_value(o_game.quest_states(questindex), questindex);
		if ( queststates[array_length(queststates) - 1] == 0 ) {
			
		}
	}
}