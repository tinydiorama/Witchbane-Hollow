function quest_option_view_ui() {
	var quest_index = index;
	// Find the item
	quest = ds_list_find_value(activeList, quest_index);
	//if ( item != undefined && item[? "effect"] != "no_effect" ) {

	child = instance_create_layer(x + width + 4, y, "Instances", o_quest_ui);
	child.parent = id;
	enabled = false;
	child.activeList = activeList;
	child.activeListStates = activeListStates;
	child.create_quest = true;
	
	//} 


}
