if ( fastcount == fastness ) {
	if ( pos <= string_length(fulltext) ) {
	     displaytext = displaytext + string_char_at(fulltext, pos);
		 pos++;
	}
	fastcount = 0;
} else {
	fastcount++;
}


if ( o_input.left_pressed ) {
	if ( gridX == 8 && gridY == 2 ) {
		gridX = 5;
	} else {
		if ( gridX - 1 < 0 ) {
			gridX = xLetters - 1;	
		} else {
			gridX--;	
		}
	}
}
if ( o_input.right_pressed ) {
	if ( gridX == 5 && gridY == 2 ) { // I'm on Z, so jump over to Bk
		gridX = 8;
	} else {
		if ( gridX + 1 >= xLetters ) {
			gridX = 0;	
		} else {
			gridX++;	
		}
	}
}
if ( o_input.up_pressed ) {
	if ( (gridX == 6 || gridX == 7) && gridY == 0 ) {
		gridY = 1;
	} else {
		if ( gridY - 1 < 0 ) {
			gridY = yLetters - 1;	
		} else {
			gridY--;	
		}
	}
}
if ( o_input.down_pressed ) {
	if ( (gridX == 6 || gridX == 7) && gridY == 1 ) {
		gridY = 0;
	} else {
		if ( gridY + 1 >= yLetters ) {
			gridY = 0;	
		} else {
			gridY++;	
		}
	}
}
if ( o_input.action_one_pressed ) {
	var newLetter = a_letters[gridX, gridY];
	letterCount = string_length(currentName);
	if ( newLetter == "Bk") {
		if ( letterCount >= 1 ) {
			currentName = string_delete(currentName, letterCount, 1);	
		}
	} else if ( newLetter != "OK" && letterCount < maxLetters) {
		currentName += newLetter;	
	} else if ( newLetter == "OK" ) {
		global.player_name = currentName;
		room_goto(r_horoscope_quiz);
	}
}