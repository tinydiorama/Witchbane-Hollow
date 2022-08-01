
o_game.dialogrunning = true;

if ( global.player_energy + energy_dec < 0 ) {
	quack_state = quack_state_new(global.dialogue, "No-Energy", quack_adapter_fc);
	quack_start_conversation(quack_state);
	exit;
}

if(instance_exists(obj_textbox)){ exit; }

if ( global.player_energy + energy_dec >= 0 ) {
	adjust_energy(energy_dec);

	show_debug_message("plant interact");
	var tempCheck = o_game.plant_status;
}