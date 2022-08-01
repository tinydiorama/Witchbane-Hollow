/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if ( global.horoscope == "compass" ) {
	if ( questindex == -1 && quest1complete == -1) { // haven't gotten quest
		show_active_emoji = true;
	} else if ( questindex != -1 && quest1complete == -1 ) {
		var queststates = ds_list_find_value(o_game.quest_states, questindex);
		
		if ( queststates[array_length(queststates) - 1] == 0
			&& get_item_amount(o_data.items[? "mottledmosswort"]) >= 3) { // got the mottled mosswort
			show_active_emoji = true;
		} else if ( queststates[array_length(queststates) - 1] == 1
			&& get_item_amount(o_data.items[? "stonebrush"]) >= 5) { // got the stonebrush
			show_active_emoji = true;
		} else if ( queststates[array_length(queststates) - 1] == 2
			&& get_item_amount(o_data.items[? "dustedtoadstool"]) >= 7) { // got the toadstool
			show_active_emoji = true;		}	
	} 
}