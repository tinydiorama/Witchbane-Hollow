draw_set_font(font_reg);
xx = display_get_gui_width() / 2;
draw_text_transformed(xx - string_width(displaytext) / 2, 30, displaytext, 1, 1, 0);