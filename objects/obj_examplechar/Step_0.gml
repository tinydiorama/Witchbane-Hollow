event_inherited(); //so it will inherit from par_speaker
if (quack_state_get(quack_state, "active") == true) {
	quack_start_conversation(quack_state);
	show_active_emoji = false;
} else {
	o_game.dialogrunning = false;
}
/*

Other code
codecodecode