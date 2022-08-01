function get_specimen_data() {
	return json_decode(@'
	{
		"0" : {
			"name"		: "Mottled Mosswort",
			"sprite"    : "s_mottledmosswort",
			"location"  : "Forest Outskirts",
			"horoscope"    : "The Chalice",
			"horoscope_icon" : "chalice",
			"info"		: "Mottled mosswort with a smell that reminds the gatherer of sunshine. It grows near water, preferably fast moving, or else it appears wilted and the leaves are a pale imitation of its true green-white. The leaves may be dried, not in direct sun, to provide dried herbs as a tea or tincture. It provides wakefulness, cleansing, and allays darkness."
		},
		"1" : {
			"name"		: "Stonebrush",
			"sprite"    : "s_stonebrush",
			"location"  : "Town",
			"horoscope"    : "The Spear",
			"horoscope_icon" : "spear",
			"info"		: "Stonebrush has distinct oval-shaped leaves that grow in clusters of three. Despite years of alchemical study, it is unknown why stonebrush only grows over non-living objects. The mature leaves will change color from light to dark green and become hard like metal. When gathered, it may prove useful in different applications."
		},
		"2" : {
			"name"		: "Dusted Toadstool",
			"sprite"    : "s_dustedtoadstool",
			"location"  : "Town",
			"horoscope"    : "The Compass",
			"horoscope_icon" : "Compass",
			"info"		: "Something about toadstools"
		},
		"3" : {
			"name"		: "Sap of Queens",
			"sprite"    : "s_crop3",
			"location"  : "Deep Forest",
			"horoscope"    : "The Compass",
			"horoscope_icon" : "Compass",
			"info"		: "Sap that appears on stuff."
		},
		"4" : {
			"name"		: "Sap of Queens",
			"sprite"    : "s_pumpkin",
			"location"  : "Deep Forest",
			"horoscope"    : "The Compass",
			"horoscope_icon" : "Compass",
			"info"		: "Sap that appears on stuff."
		}
	}');


}
