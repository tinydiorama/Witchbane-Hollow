
o_game.dialogrunning = true;

if ( global.player_energy + energy_dec < 0 ) {
	quack_state = quack_state_new(global.dialogue, "No-Energy", quack_adapter_fc);
	quack_start_conversation(quack_state);
	exit;
}

if ( ! can_pickup_ ) {
	exit;
}

if(instance_exists(obj_textbox)){ exit; }
if ( global.player_energy + energy_dec >= 0 ) {
	adjust_energy(energy_dec);
	var showdialog = false;
	var dirfacing = o_player.direction_facing_;
	var pd = point_direction(x, y, o_player.x, o_player.y);
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
		var identifier = string(room) + "-" + string(x) + "-" + string(y); // Create unique identifier from room id and x/y position
		ds_map_add(o_game.picked_items, identifier, true);
		event_user(PICKED_UP);
	}
}