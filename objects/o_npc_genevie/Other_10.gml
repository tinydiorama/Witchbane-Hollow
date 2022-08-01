event_inherited();

if ( global.player_energy + energy_dec >= 0 ) {
	adjust_energy(energy_dec);

	if ( global.horoscope == "compass" ) {
		// Quest 1
		if ( questindex == -1 && quest1complete == -1) { // haven't gotten quest
			//if ( questindex == -1 ) { /* haven't gotten her quest yet */
				quack_state = quack_state_new(global.dialogue, "CQ-G-1A", quack_adapter_fc);
				quack_start_conversation(quack_state);
				discover_friend("genevie");
				pickup_quest(o_data.quests[? "intothedeepwoods"]);
				questindex = ds_list_find_index(o_game.quests, o_data.quests[? "intothedeepwoods"]);
				var gameStates = o_game.quest_states;
			//} // else if ( o_game.quest_states(questindex)
		} else if ( questindex != -1 && quest1complete == -1 ) {
			var queststates = ds_list_find_value(o_game.quest_states, questindex);
		
			if ( queststates[array_length(queststates) - 1] == 0
				&& get_item_amount(o_data.items[? "mottledmosswort"]) < 3) { // haven't gotten mottled mosswort
				quack_state = quack_state_new(global.dialogue, "CQ-G-1A-I" + string(dialogpick), quack_adapter_fc);
				quack_start_conversation(quack_state);
			} else if ( queststates[array_length(queststates) - 1] == 0
				&& get_item_amount(o_data.items[? "mottledmosswort"]) >= 3) { // got the mottled mosswort
				quack_state = quack_state_new(global.dialogue, "CQ-G-1B", quack_adapter_fc);
				quack_start_conversation(quack_state);
				update_quest_state(o_data.quests[? "intothedeepwoods"], 1);
				use_item(o_data.items[? "mottledmosswort"], 3);
			} else if ( queststates[array_length(queststates) - 1] == 1
				&& get_item_amount(o_data.items[? "stonebrush"]) < 5) { // haven't gotten stonebrush
				quack_state = quack_state_new(global.dialogue, "CQ-G-1B-I" + string(dialogpick), quack_adapter_fc);
				quack_start_conversation(quack_state);
			} else if ( queststates[array_length(queststates) - 1] == 1
				&& get_item_amount(o_data.items[? "stonebrush"]) >= 5) { // got the stonebrush
				quack_state = quack_state_new(global.dialogue, "CQ-G-1C", quack_adapter_fc);
				quack_start_conversation(quack_state);
				update_quest_state(o_data.quests[? "intothedeepwoods"], 2);
				use_item(o_data.items[? "stonebrush"], 5);
			} else if ( queststates[array_length(queststates) - 1] == 2
				&& get_item_amount(o_data.items[? "dustedtoadstool"]) < 7) { // haven't gotten toadstool
				quack_state = quack_state_new(global.dialogue, "CQ-G-1C-I" + string(dialogpick), quack_adapter_fc);
				quack_start_conversation(quack_state);
			} else if ( queststates[array_length(queststates) - 1] == 2
				&& get_item_amount(o_data.items[? "dustedtoadstool"]) >= 7) { // got the toadstool
				quack_state = quack_state_new(global.dialogue, "CQ-G-1D", quack_adapter_fc);
				quack_start_conversation(quack_state);
				update_quest_state(o_data.quests[? "intothedeepwoods"], 3);
				complete_quest(o_data.quests[? "intothedeepwoods"]);
				use_item(o_data.items[? "dustedtoadstool"], 7);
				o_game.geneviedaytoreturn = round(random_range(2, 4));
				quest1complete = ds_list_find_index(o_game.quests_done, o_data.quests[? "intothedeepwoods"]);
			}	
		} 
		
		if ( quest1complete != -1 ) {
			// Quest 2
			if ( quest2 == -1 && quest2complete == -1 
				&& o_game.geneviedaytoreturn > global.day ) { // genevie told you to return but it's not time yet
			
			} else if ( quest2 == -1 && quest2complete == -1 
				&& o_game.geneviedaytoreturn <= global.day ) { // genevie told you to return and you can get quest 2
			
			} else if ( quest2 != -1 && quest2complete == -1 ) { // obtained quest 2 but it's not done yet
			
			}
		}
	}
}