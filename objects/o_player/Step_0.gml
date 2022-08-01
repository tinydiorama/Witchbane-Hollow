if(instance_exists(obj_textbox)) exit;

image_speed = 0;

depth = -y;

var right_key, left_key, up_key, down_key;

event_user(state_);
sprite_index = sprite_[state_, direction_facing_];