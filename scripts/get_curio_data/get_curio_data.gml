function get_curio_data() {
	return json_decode(@'
	{
		"0" : {
			"name"		: "Curio: Purple Millflower",
			"sprite"    : "s_crop3",
			"location"  : "Deep Forest",
			"horoscope"    : "The Spear",
			"horoscope_icon" : "spear",
			"info"		: "This flower only appears when the moon is a warm white."
		},
		"1" : {
			"name"		: "Curio: Sap of Queens",
			"sprite"    : "s_crop2",
			"location"  : "Deep Forest",
			"horoscope"    : "The Compass",
			"horoscope_icon" : "Compass",
			"info"		: "Sap that appears on stuff."
		},
		"2" : {
			"name"		: "Sap of Queens",
			"sprite"    : "s_pumpkin",
			"location"  : "Deep Forest",
			"horoscope"    : "The Compass",
			"horoscope_icon" : "Compass",
			"info"		: "Sap that appears on stuff."
		}
	}');


}
