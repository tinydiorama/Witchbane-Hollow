if ( ! itemSelecting && ! itemMenuState && ! finishState ) {
	o_game.dialogrunning = false;
	
	var dirfacing = playerobject.direction_facing_;
	var dr = detection_radius;

	if (point_in_rectangle(playerobject.x, playerobject.y, x-dr, y-dr, x+dr, y+dr)) {
		var questindex = ds_list_find_index(o_game.quests, o_data.quests[? "bookofspecimens"]);
		
		if(myTextbox != noone){ 
			if(!instance_exists(myTextbox)){ myTextbox = noone; exit; }
		} else if(o_input.action_one_pressed) {
		    //Set sprite_index based on point direction
			var showdialog = false;
		    var pd = point_direction(x, y, playerobject.x, playerobject.y);
		    if ( (pd >= 45) && (pd <= 135) && dirfacing == 3) { // object is above player
				showdialog = true;
			} else if ( (pd > 135) && (pd < 225) && dirfacing == 0 ) {
				showdialog = true;
			} else if ( (pd >= 225) && (pd <= 315) && dirfacing == 1 ) {
				showdialog = true;
			} else if ( (pd > 315 || pd < 45) && dirfacing == 2 ) {
				showdialog = true;
			}
			
			if ( showdialog ) {
				if(instance_exists(obj_textbox)){ exit; }	//exit if a textbox already exists
				event_user(0);								//if you need variables to update for text
			}
		}
	//if(point_in_rectangle(playerobject.x, playerobject.y, x-dr, y-dr, x+dr, y+dr)){

	} else {	//if player moves outside of detection radius
		if(myTextbox != noone){
			with(myTextbox) instance_destroy();
			myTextbox = noone;
		}
	}
}

if ( itemMenuState == true ) {
	child = instance_create_layer(x, y, "Instances", o_grid_select);
	child.listToDisplay = itemList;
	child.createGrid = true;
	child.callingParent = id;	
	itemMenuState = false;
	itemSelecting = true;
}

if ( finishState ) {
	global.player_movement = true;
	quack_state = quack_state_new(global.dialogue, selectedItem[? "script"], quack_adapter_fc);
	quack_start_conversation(quack_state);
	grimoireSlot = 0;
	// get the grimoire slot for the item
	for ( var j = 0; j < ds_list_size(grimoireList); j++ ) {
		var grimoirecurr = allgrimoireList[| j];
		if ( grimoirecurr[? "name"] == selectedItem[? "name"] ) {
			grimoireSlot = j;
			break;
		}
	}
	pickup_collectable( grimoireList, grimoireSlot );
	finishState = false;
	ds_list_clear(grimoireCashIn);
	use_item( selectedItem, 1);
	o_game.dialogrunning = false;
	o_game.paused_ = false;
}