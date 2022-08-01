/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

/// @description Insert description here
// You can write your code in this editor
show_debug_message(o_player.y);
show_debug_message(y);

var checkx = x;
var checky = y;
with ( o_player ) {
	if ( x >= checkx - 2 && x <= checkx + 2 && y >= checky && y <= checky + 16) {
		global.player_energy = global.player_energy_max;
		global.day++;
		randomize();
		global.seed = random_get_seed();
		ds_map_clear(o_game.picked_items);
	}
}