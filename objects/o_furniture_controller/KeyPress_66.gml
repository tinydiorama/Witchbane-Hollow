if ( ! furnitureMode ) { // Swap to furniture mode
	furnitureMode = true;
	instance_deactivate_object(o_player);
	audio_play_sound(a_pause, 5, false);
} else { // Swap to gameplay mode
	furnitureMode = false;
	instance_activate_object(o_player);
	audio_play_sound(a_pause, 5, false);
}