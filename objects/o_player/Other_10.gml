 /// @description Move State
image_speed = 0;
var _animation_speed = 0.6;

if ( global.player_movement == true) {
	
	_x_input =  o_input.right_ - o_input.left_;
	_y_input = o_input.down_ - o_input.up_;
	if ( gamepad_is_connected(0) ) {
		_y_input = o_input.up_ - o_input.down_;
	}
	var _input_direction = point_direction(0, 0, _x_input, _y_input);

	if ( _x_input == 0 && _y_input == 0 ) {
		image_index = 0;
		apply_friction_to_movement_entity();
	} else {
		image_speed = _animation_speed;
		if ( _x_input != 0 ) {
			image_xscale = _x_input;
		} 
		get_direction_facing( _input_direction );
		add_movement_maxspeed( _input_direction, acceleration_, max_speed_);
	}

	if ( state_ != player.talking ) {
		move_movement_entity(0);
	}
}