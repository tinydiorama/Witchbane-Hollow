function unpause_game() {
	o_game.paused_ = false;
	if ( sprite_exists(o_game.paused_sprite) ) {
		sprite_delete(o_game.paused_sprite);
	}
	instance_activate_all();
	audio_play_sound(a_menu, 5, false);


}
