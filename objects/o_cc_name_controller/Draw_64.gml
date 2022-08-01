draw_set_font(font_reg);
xx = display_get_gui_width() / 2;
draw_text_transformed(xx - string_width(displaytext) / 2, 30, displaytext, 1, 1, 0);

draw_set_font(font_reg);
fontSize = font_get_size(font_reg);
buffer = ceil(fontSize / 2);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(display_get_gui_width() / 2 - string_width(currentName) / 2, room_height / 2, currentName);

#region DRAW LETTERS

startY = room_width / 2 + 20;
startX = room_width / 2 - 10;
var charCount = 1;

for (var yy = 0; yy < yLetters; yy++) {
	for ( var xx = 0; xx < xLetters; xx++) {
		var letter = a_letters[xx, yy];
		var drawX = startX + (xx * (fontSize * 2));
		var drawY = startY + (yy * (fontSize + buffer));
		
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		draw_text(drawX, drawY, letter);
		
		if ( xx == gridX && yy == gridY) {
			draw_sprite(s_ui_caret, 0, drawX - sprite_get_width(s_ui_caret), drawY);
		}
		charCount++;
	}
}
#endregion