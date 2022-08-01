///@arg size
///@arg horoscope
function get_horoscope_icon(argument0, argument1) {
	var size = argument0;
	var horoscope = argument1;

	switch(horoscope){
		case "lantern":
			return asset_get_index("s_icon_lantern");
			break;
		case "spear":
			return asset_get_index("s_icon_spear");
			break;
		case "torch":
			return asset_get_index("s_icon_torch");
			break;
		case "moon":
			return asset_get_index("s_icon_moon");
			break;
		case "chalice":
			return asset_get_index("s_icon_chalice");
			break;
		case "compass":
			return asset_get_index("s_icon_compass");
			break;
		case "hearth":
			return asset_get_index("s_icon_hearth");
			break;
		default: 
			return asset_get_index("s_icon_spear");
			break;
	}


}
