///@arg sprite
///@arg x1
///@arg y1
///@arg x2
///@arg y2
function draw_nine_slice(argument0, argument1, argument2, argument3, argument4) {

	var sprite = argument0;
	var x1 = argument1;
	var y1 = argument2;
	var x2 = argument3;
	var y2 = argument4;

	var sw = sprite_get_width(sprite)/3;
	var sh = sprite_get_height(sprite)/3;

	var width = x2 - x1;
	var height = y2 - y1;

	// Top slice
	draw_sprite_part_ext(sprite, 0, 0, 0, sw, sh, x1, y1, 1, 1, c_white, 1); //Top left
	draw_sprite_part_ext(sprite, 0, sw, 0, sw, sh, x1 + sw, y1, (width - sw*2)/sw, 1, c_white, 1); //Top middle
	draw_sprite_part_ext(sprite, 0, sw*2, 0, sw, sh, x2 - sw, y1, 1, 1, c_white, 1); //Top right

	// Middle slice
	draw_sprite_part_ext(sprite, 0, 0, sh, sw, sh, x1, y1 + sh, 1, (height - sh*2)/sh, c_white, 1); //Middle left
	draw_sprite_part_ext(sprite, 0, sw, sh, sw, sh, x1 + sw, y1 + sh, (width - sw*2)/sw, (height - sh*2)/sh, c_white, 1); //Middle middle
	draw_sprite_part_ext(sprite, 0, sw*2, sh, sw, sh, x2 - sw, y1 + sh, 1, (height - sh*2)/sh, c_white, 1); //Middle right

	// Bottom slice
	draw_sprite_part_ext(sprite, 0, 0, sh*2, sw, sh*2, x1, y2 - sh, 1, 1, c_white, 1); //Top left
	draw_sprite_part_ext(sprite, 0, sw, sh*2, sw, sh, x1 + sw, y2 - sh, (width - sw*2)/sw, 1, c_white, 1); //Top middle
	draw_sprite_part_ext(sprite, 0, sw*2, sh*2, sw, sh, x2 - sw, y2 - sh, 1, 1, c_white, 1); //Top right


}
