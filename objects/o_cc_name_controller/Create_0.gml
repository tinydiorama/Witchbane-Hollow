fulltext = "I see. What is your name?";
displaytext = "";
pos = 1;
fastness = 5;
fastcount = 0;

gridX = 0;
gridY = 0;

letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ  ";

xLetters = 10;
yLetters = 3;

maxLetters = 8;

charCount = 1;
currentName = "";

for (var yy = 0; yy < yLetters; yy++) {
	for ( var xx = 0; xx < xLetters; xx++) {
		if ( charCount <= 28 ) {
			a_letters[xx, yy] = string_char_at(letters, charCount);	
		} else if ( charCount == 29 ) {
			a_letters[xx, yy] = "Bk";	
		} else if ( charCount == 30 ) {
			a_letters[xx, yy] = "OK";	
		}
		charCount++;
	}
}