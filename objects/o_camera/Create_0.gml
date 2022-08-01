target_ = o_player;
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);
scale_ = view_wport[0] / width_;
initialset = true;

if ( instance_exists(target_) ) {
	x = target_.x;
	y = target_.y - 8;

	camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);	
}