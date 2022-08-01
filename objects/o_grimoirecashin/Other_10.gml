o_game.dialogrunning = true;



var questindex = ds_list_find_index(o_game.quests, o_data.quests[? "bookofspecimens"]);
var questcomplete = ds_list_find_index(o_game.quests_done, o_data.quests[? "bookofspecimens"]);
if ( questindex == -1 && questcomplete == -1 ) { 
	quack_state = quack_state_new(global.dialogue, "SQ-Lib-QuestNotObtained", quack_adapter_fc);
	quack_start_conversation(quack_state);
} else {

	// Put together the list of all items you have that you haven't yet discovered in the grimoire
	for ( var i = 0; i < ds_list_size(itemList); i++ ) {
		var currItem = itemList[| i];
		var itemName = currItem[? "name"];
		var itemType = currItem[? "grimoiretype"];
	
		grimoireList = o_game.aconitums;
		allgrimoireList = o_game.allaconitums;
		if ( itemType == "umbrae" ) {
			grimoireList = o_game.umbrae;
			allgrimoireList = o_game.allumbrae;
		} else if ( itemType == "curios" ) {
			grimoireList = o_game.curios;
			allgrimoireList = o_game.allcurios;
		} else if ( itemType == "genesia" ) {
			grimoireList = o_game.genesia;
			allgrimoireList = o_game.allgenesia;
		} else if ( itemType == "impresiums" ) {
			grimoireList = o_game.impresiums;
			allgrimoireList = o_game.allimpresiums;
		} else if ( itemType == "ferrotypes" ) {
			grimoireList = o_game.ferrotypes;
			allgrimoireList = o_game.allferrotypes;
		} 
	
		// item can only be cashed in if it's not already in one of these lists
		for ( var j = 0; j < ds_list_size(grimoireList); j++ ) {
			var grimoirecurr = allgrimoireList[| j];
			if ( grimoirecurr[? "name"] == itemName ) {
				if ( ! grimoireList[| j] ) { // hasn't been discovered yet
					ds_list_add(grimoireCashIn, currItem);
					grimoireSlot = j;
					break;
				}
			}
		}
	}
	if ( ds_list_size(grimoireCashIn) > 0 ) {
		if ( global.player_energy + energy_dec >= 0 ) {
			adjust_energy(energy_dec);
			itemMenuState = true;
			global.player_movement = false;
		}
	} else {
		quack_state = quack_state_new(global.dialogue, "SQ-Lib-NoGrimoire", quack_adapter_fc);
		quack_start_conversation(quack_state);
	}
}