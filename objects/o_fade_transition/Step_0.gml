if ( alpha != target_image_alpha ) {
	alpha = approach(alpha, target_image_alpha, 0.2);
} else {
	if ( alpha >= 1 ) {
		// 	Go to the next room
		room_goto(next_room);
	}
	// Destroy the transition object
	instance_destroy();
}