//if ( outside ) {
	surface_set_target(night_cycle_surf);
	draw_clear(c_black);
	
	// Draw glow
	/*if ( instance_exists(o_bush_1) ) {
		with ( o_bush_1 ) {
			gpu_set_blendmode(bm_src_color);
			draw_sprite_ext(s_glow, 0, x, y, 1, 1, 0, c_white, 1);
			draw_sprite(s_glow, 1, x, y);
			gpu_set_blendmode(bm_normal);
		}
	}*/
	
	surface_reset_target();
	draw_surface_ext(night_cycle_surf, 0, 0, 1, 1, 0, c_white, alpha);
//}