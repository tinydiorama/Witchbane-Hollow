function get_item_data() {
	return json_decode(@'
	{
		"mottledmosswort" : {
			"name"		: "Mottled Mosswort",
			"info"		: "Green-white mosswort with a mildew-like smell that reminds you of sunshine for some reason. It enjoys indirect shade and likes to grow near water sources.",
			"arguments" : [],
			"icon"      : "s_mottledmosswort",
			"script"    : "SQ-Lib-Grimoire-MM",
			"grimoiretype": "umbrae"
		},
		"stonebrush" : {
			"name"		: "Stonebrush",
			"info"		: "Stonebrush is halfway between plant and stone. When young, it grows over stones, buildings, or anything non-living. As it matures, it takes on a stone-like hardness.",
			"arguments" : [],
			"icon"      : "s_stonebrush",
			"script"    : "SQ-Lib-Grimoire-StoneB",
			"grimoiretype": "umbrae"
		},
		"dustedtoadstool" : {
			"name"		: "Dusted Toadstool",
			"info"		: "something about dusted toadstools",
			"arguments" : [],
			"icon"      : "s_dustedtoadstool",
			"script"    : "SQ-Lib-Grimoire-DustedT",
			"grimoiretype": "umbrae"
		}
	}');


}
