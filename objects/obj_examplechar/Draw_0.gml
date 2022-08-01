if ( show_active_emoji && (counter++ mod 30 == 0) ) {
	active_index++;
	if ( active_index >= 3 ) {
		active_index = 0;	
	}
}
if ( show_active_emoji ) {
	draw_sprite( s_questavailable, active_index, x + show_active_yoffset, y - show_active_offset);
}
draw_self();