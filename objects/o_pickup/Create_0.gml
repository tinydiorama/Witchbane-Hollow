event_inherited();
PICKED_UP = 1;
depth = -y;
can_pickup_ = true;
r = 20;
randomize();
active_index = round(random_range(1,4));
counter = 0;
energy_dec = -3;

detection_radius = 15;
detection_radius_x = 15;
detection_radius_y = 15;

quack_state = quack_state_new(global.dialogue, "No-Energy", quack_adapter_fc);

random_set_seed(global.seed);
var identifier = string(room) + "-" + string(x) + "-" + string(y); // The unique identifier again
if(!is_undefined(ds_map_find_value(o_game.picked_items, identifier))){ // Try finding the identifier in the ds map; if not found, it returns undefined
    instance_destroy(); // Destroy the coin as it was in the ds map
}