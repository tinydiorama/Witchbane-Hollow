fulltext = "Hello. Who are you?";
displaytext = "";
pos = 1;
fastness = 5;
fastcount = 0;

arrows_create = true;
species_index = 0;
color_index = 0;
selectedx = 0;
selectedy = 0;

var xx = room_width / 2;
var yy = room_height / 2;
character = instance_create_layer(xx, yy, "Instances", o_character_creation);
left_species = instance_create_layer(xx - 20, yy - 20, "Instances", o_customize_arrow);
left_species.image_xscale = -1;
right_species = instance_create_layer(xx + 20, yy - 20, "Instances", o_customize_arrow);
right_species.leftright = 1;
left_color = instance_create_layer(xx - 20, yy, "Instances", o_customize_arrow);
right_color = instance_create_layer(xx + 20, yy, "Instances", o_customize_arrow);
left_color.image_xscale = -1;
left_color.type = 1;
right_color.type = 1;
right_color.leftright = 1;
done_button = instance_create_layer(xx, yy + 30, "Instances", o_cc_done);
selected_instance = left_species;