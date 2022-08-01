/// @description Insert description here
// You can write your code in this editor
if ( ! can_pickup_ ) {
	exit;
}
instance_destroy();
pickup_item(o_data.items[? "mottledmosswort"], 1);
//pickup_collectable( o_game.umbrae, 0);
create_message(0, 0, "Mottled Mosswort obtained!");