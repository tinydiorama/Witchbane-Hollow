function pause_game() {
	o_game.paused_sprite = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
	instance_deactivate_all(true);
	instance_activate_object(o_input);
	audio_play_sound(a_menu, 5, false);


}
