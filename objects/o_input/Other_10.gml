/// @description Get Input
right_ = keyboard_check(vk_right);
left_ = keyboard_check(vk_left);
up_ = keyboard_check(vk_up);
down_ = keyboard_check(vk_down);

// Menu navigation input
up_pressed = keyboard_check_pressed(vk_up);
right_pressed = keyboard_check_pressed(vk_right);
left_pressed = keyboard_check_pressed(vk_left);
down_pressed = keyboard_check_pressed(vk_down);

// Mouse input
mouse_down = device_mouse_check_button_pressed(0, mb_left);
mouse_up = device_mouse_check_button_released(0, mb_left);
wheel_up = mouse_wheel_up();
wheel_down = mouse_wheel_down();

if ( gamepad_is_connected(0) ) {
    gamepad_set_axis_deadzone(0, 0.5);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(0, 0.1);    // Set the "threshold" for the triggers
	right_ = (gamepad_axis_value(0, gp_axislh) >= 0.5);
	left_ = (gamepad_axis_value(0, gp_axislh) <= -0.5);
	up_ = (gamepad_axis_value(0, gp_axislv) >= 0.5);
	down_ = (gamepad_axis_value(0, gp_axislv) <= -0.5);
}

action_one_pressed = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter);

right_bumper_pressed = keyboard_check_pressed(ord("2"));
left_bumper_pressed = keyboard_check_pressed(ord("1"));
if ( gamepad_is_connected(0) ) {
	action_one_pressed = gamepad_button_check_pressed(0, gp_face1);	
	right_bumper_pressed = gamepad_button_check_pressed(0, gp_shoulderl) || gamepad_button_check_pressed(0, gp_shoulderlb);
	left_bumper_pressed = gamepad_button_check_pressed(0, gp_shoulderr) || gamepad_button_check_pressed(0, gp_shoulderb);
}
if ( room != r_title && room != r_character_creation && room != r_character_name) {
	pause_pressed = keyboard_check_pressed(vk_tab);
}