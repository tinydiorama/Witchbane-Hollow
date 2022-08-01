 function save_game() {
	if ( ! instance_exists(o_game) ) {
		show_error("Save error: Stats object not found.", false);	
	}
	instance_activate_object(o_player);
	if ( ! instance_exists(o_player) ) {
		show_error("Save error: Player object not found.", false);	
	}
	v_save("room", room_get_name(room));
	v_save("xposition", o_player.x);
	v_save("yposition", o_player.y);
	v_save("species", global.player_species);
	v_save("color", global.player_color);
	v_save("name", global.player_name);
	v_save("horoscope", global.horoscope);
	v_save("energy", global.player_energy);
	v_save("energy_max", global.player_energy_max);
	v_save("day", global.day);
	
	v_save("geneviedaytoreturn", o_game.geneviedaytoreturn );
	
	v_save("seed", global.seed);
	v_save("pickeditems", ds_map_write(o_game.picked_items));
	
	v_save("items", ds_list_write(o_game.items));
	v_save("itemnumbers", ds_list_write(o_game.item_number));

	v_save("friends_discovered", ds_list_write(o_game.friends_discovered));
	v_save("friendship_scores", ds_map_write(o_game.friendship_scores));
	
	v_save("quests", ds_list_write(o_game.quests));
	v_save("quest_states", ds_list_write(o_game.quest_states));
	/*var questStates = o_game.quest_states;
	var state_length = ds_list_size(questStates);
	for ( var i = 0; i < state_length; i++ ) {
		v_save("quest_states_" + string(i), ds_list_write(questStates[| i]));
	}
	v_save("quest_state_length", state_length);*/
	v_save("quests_done", ds_list_write(o_game.quests_done));
	v_save("quests_done_states", ds_list_write(o_game.quests_done_states));
	
	v_save("umbrae", ds_list_write(o_game.umbrae));
	v_save("curios", ds_list_write(o_game.curios));
	v_save("genesia", ds_list_write(o_game.genesia));
	v_save("impresiums", ds_list_write(o_game.impresiums));
	v_save("ferrotypes", ds_list_write(o_game.ferrotypes));
	v_save("aconitums", ds_list_write(o_game.aconitums));
	
	v_save("totalgrimoirecollect", o_game.totalgrimoire_collect);

}
