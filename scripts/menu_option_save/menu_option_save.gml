function menu_option_save() {
	save_game();
	create_message_at_view_center("Game saved!", 70);
	instance_destroy();


}
