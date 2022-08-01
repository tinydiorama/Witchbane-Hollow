var _ch = camera_get_view_height(view_camera[0]);
var _cw = camera_get_view_width(view_camera[0]);
var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);
if ( instance_exists(o_player) ) {
	depth = o_player.depth;
}
// Surfaces are volatile 
// Always check that they haven't been destroyed 
if ( ! surface_exists(surf)) {
	// Again, surfaces can be a pain
    // Create a new one if there were issues
    surf = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}

surface_set_target(surf);

// The following three lines set the 'dark' overlay
draw_clear_alpha(c_black, alph);

// Draw circles in the overlay with your different light sources
with (o_player) {
	gpu_set_blendmode(bm_subtract);	
	draw_sprite_ext(s_glow, 0, x - _cx, y - _cy, 0.5, 0.5, 0, c_green, 0.2);
	gpu_set_blendmode(bm_normal);
	//draw_sprite_ext(s_glow, 0, x - _cx + random_range(-1, 1), y - _cy + random_range(-1, 1), 0.5 + random(0.05), 0.5 + random(0.05), 0, c_orange, 0.5);
}
with ( o_dappling ) {
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(s_dappling, image_index, x - _cx, y - _cy, image_xscale, image_yscale, 0, c_green, 1);
	gpu_set_blendmode(bm_normal);
}
with ( o_light ) {
	gpu_set_blendmode(bm_subtract);	
	draw_sprite_ext(s_glow, 0, x - _cx + random_range(-1, 1), y - _cy + random_range(-1, 1), (rad / 128) + random(0.05), (rad / 128) + random(0.05), 0, c_white, lightalph);
	gpu_set_blendmode(bm_normal);
}
surface_reset_target();