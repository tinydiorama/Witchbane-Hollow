event_inherited();

gardenseed = -1;
seedData = o_game.allgenesia;

random_set_seed(global.seed);
identifier = string(room) + "-" + string(x) + "-" + string(y); // The unique identifier again

gamePlantStatus = o_game.plant_status;
// look for the planter in the game's plant status
if ( ds_list_size(gamePlantStatus) == 0 ) {
	plantstatus = ds_map_create();
	ds_map_add(plantstatus, "identifier", identifier);
	ds_map_add(plantstatus, "seed", -1);
	ds_map_add(plantstatus, "day", global.day);
} else {
	var foundPlant = false;
	for ( var i = 0; i < ds_list_size(gamePlantStatus); i++ ) {
		var currStatus = gamePlantStatus[| i];
		if ( currStatus.identifier == identifier ) {
			plantstatus = gamePlantStatus[| i];
			foundPlant = true;
			break;
		}
	}
	if ( foundPlant == false ) {
		plantstatus = ds_map_create();
		ds_map_add(plantstatus, "identifier", identifier);
		ds_map_add(plantstatus, "seed", -1);
		ds_map_add(plantstatus, "day", global.day);
	}
}
plantstatus = -1;

energy_dec = -2;

detection_radius = 15;
detection_radius_x = 15;
detection_radius_y = 15;

quack_state = quack_state_new(global.dialogue, "No-Energy", quack_adapter_fc);