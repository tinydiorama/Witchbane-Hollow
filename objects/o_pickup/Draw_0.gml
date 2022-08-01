if ( counter++ mod 20 == 0 ) {
	active_index++;
	if ( active_index >= 3 ) {
		active_index = 0;	
	}
}
draw_self();
draw_sprite( s_item_sparkly, active_index, x, y - 5);