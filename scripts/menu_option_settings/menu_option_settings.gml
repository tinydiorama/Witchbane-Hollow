function menu_option_settings() {
	child = instance_create_layer(x + width + 4, y, "Instances", o_settings_ui);
	child.parent = id;
	enabled = false;


}
