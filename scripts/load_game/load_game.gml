function load_game() {
	var saved_room = v_save_load("room", "r_home_outside");
				//show_debug_message((v_save_load("room",4)));
				//show_debug_message(v_save_load("position",i_game_start));
	var xposition = v_save_load("xposition", 0);
	var yposition = v_save_load("yposition", 0);
	global.player_species = v_save_load("species", 0);
	global.player_color = v_save_load("color", 0);
	global.player_name = v_save_load("name", "Tir");
	global.horoscope = v_save_load("horoscope", "spear");
	global.seed = v_save_load("seed", 0);
	global.player_energy = v_save_load("energy", 100);
	global.player_energy_max = v_save_load("energy_max", 100);
	global.day = v_save_load("day", 0);
	o_game.geneviedaytoreturn = v_save_load("geneviedaytoreturn", 0);
	
	random_set_seed(global.seed);
	ds_map_read(o_game.picked_items, v_save_load("pickeditems", ""));
	
	ds_list_read(o_game.items, v_save_load("items", ""));
	ds_list_read(o_game.item_number, v_save_load("itemnumbers", ""));
	
	ds_list_read(o_game.friends_discovered, v_save_load("friends_discovered", ""));
	ds_map_read(o_game.friendship_scores, v_save_load("friendship_scores", ""));
	
	ds_list_read(o_game.quests, v_save_load("quests", ""));
	/*var gamequeststates = o_game.quest_states;
	var state_length = v_save_load("quest_state_length", 0);
	for ( var i = 0; i < state_length; i++ ) {
		var tempList = ds_list_create();
		var tempRead = v_save_load("quest_states_" + string(i), "");
		ds_list_read(tempList, v_save_load("quest_states_" + string(i), ""));
		ds_list_add( o_game.quest_states, tempList);
		ds_list_mark_as_list(o_game.quest_states, i);
	}*/
	ds_list_read(o_game.quest_states, v_save_load("quest_states", ""));
	ds_list_read(o_game.quests_done, v_save_load("quests_done", ""));
	ds_list_read(o_game.quests_done_states, v_save_load("quests_done_states", ""));
	
	ds_list_read(o_game.umbrae, v_save_load("umbrae", ""));
	ds_list_read(o_game.curios, v_save_load("curios", ""));
	ds_list_read(o_game.genesia, v_save_load("genesia", ""));
	ds_list_read(o_game.impresiums, v_save_load("impresiums", ""));
	ds_list_read(o_game.ferrotypes, v_save_load("ferrotypes", ""));
	ds_list_read(o_game.aconitums, v_save_load("aconitums", ""));
	
	o_game.totalgrimoire_collect = v_save_load("totalgrimoirecollect", 0);
	
	instance_activate_object(o_player);
	if ( instance_exists(o_player) ) {
		o_player.persistent = true;
	} else {
		instance_create_layer(x, y, "Instances", o_player);
		o_player.persistent = true;
	}
	unpause_game();
	var r = asset_get_index(saved_room);
    if ( r != -1 ) {
        room_goto(r);
	}

	o_player.x = xposition;
	o_player.y = yposition;

}
