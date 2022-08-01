///@arg amount
function adjust_energy(argument0) {
	global.player_energy = clamp(global.player_energy + argument0, 0, global.player_energy_max);
}