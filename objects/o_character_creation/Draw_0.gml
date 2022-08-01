if ( global.player_species == 0) {
	if ( global.player_color == 0 ) {
		draw_sprite(s_player_0_run_down, 0, x, y);
	}
	else if ( global.player_color == 1 ) {
	shader_set(character_shader);
		//blue to aqua
		shader_set_uniform_f(shader_get_uniform(character_shader, "rep1"), 25, 118, 219)
		shader_set_uniform_f(shader_get_uniform(character_shader, "new1"), 95, 216, 141)
		draw_sprite(s_player_0_run_down, 0, x, y);	
		shader_reset();
	}
} else if ( global.player_species == 1 ) {
	draw_sprite(s_player_1_run_down, 0, x, y);
} else if ( global.player_species == 2 ) {
	draw_sprite(s_player_2_run_down, 0, x, y);
}