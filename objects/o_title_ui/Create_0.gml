enum options {
	continue_game,
	new_game,
	credits,
	quit
}

menu_color = make_color_rgb(247, 243, 143);
menu_dark_color = make_color_rgb(126, 127, 81);
option[options.continue_game] = "Continue";
option[options.new_game] = "New game";
option[options.credits] = "Credits";
option[options.quit] = "Quit";

option_length = array_length_1d(option);

index = 0;