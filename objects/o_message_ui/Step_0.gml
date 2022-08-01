// Close the message
if ( o_input.action_one_pressed || o_input.pause_pressed || alarm[0] == 0 ) {
	// Don't let the input propagate
	o_input.action_one_pressed = false;
	o_input.pause_pressed = false;
	fadeOut = true;
}