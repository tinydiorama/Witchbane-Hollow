global.player_start_position = other.start_;
persistent = true;
var other_room = other.room_;
with (o_game) {
	spawn_room = other_room;
	doTransition = true;
}