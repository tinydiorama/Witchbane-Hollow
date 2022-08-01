// Create a surface the size of the current room
// You could also create a surface the size of the current view, but I won't get into that
surf = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

// The following two lines clear the surface
// There is no guarantee that the surface doesn't contain garbage info post-creation
surface_set_target(surf);
draw_clear_alpha(c_black, 0);

// Reset to application surface
surface_reset_target();

alph = 0.2;