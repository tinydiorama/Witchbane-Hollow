function get_furniture_data_outdoor() {
	return json_decode(@'
	{
		"chair" : {
			"name"		: "A Chair",
			"object"    : "o_trashcan",
			"sprite"    : "s_trashcan"
		},
		"table" : {
			"name"		: "The Table",
			"object"    : "o_sandwich_board",
			"sprite"    : "s_sandwich_board"
		}
	}');


}
