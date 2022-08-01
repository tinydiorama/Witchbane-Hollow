function get_quest_data() {
	return json_decode(@'
	{
		"intothedeepwoods" : {
			"name"		: "Into the Deep Forest",
			"location"  : "The Deep Forest",
			"updates"   : ["You met a strange creature named Genevie in the Deep Forest. She has asked you to find 3 Mottled Mosswort.",
							"Genevie has asked you to find five Stonebrush for her. Hopefully this will be worth your time.",
							"Next up is seven Dusted Toadstools. What on earth is she doing with all this stuff?",
							"You fetched some items for Genevie. She seems happy, but told you to come back later for more work."],
			"quest_giver" : "Genevie",
			"quest_complete" : "You solved the quest."
		},
		"bookofspecimens" : {
			"name"		: "Book of Specimens",
			"location"  : "Main Town",
			"updates"   : ["The Librarian has tasked you to fill out your Grimoire with specimens."],
			"quest_giver" : "Librarian",
			"quest_complete" : "You solved the quest."
		},
		"dreamsofknowledge" : {
			"name"		: "Dreams of Knowledge",
			"location"  : "The Deep Forest",
			"updates"   : [" ", 
							"update 2"],
			"quest_giver" : "Marco",
			"quest_complete" : "You solved the quest."
		},
		"quest4" : {
			"name"		: "Quest 4",
			"location"  : "Rito Village",
			"updates"   : ["You have heard the ancient Rito song from Bedoli<QT>s sister, Laissa.\n\n\"The pride of Rito.\"", 
							"update 2"],
			"quest_giver" : "Marco",
			"quest_complete" : "You solved the quest."
		},
		"quest5" : {
			"name"		: "Quest 5",
			"location"  : "Rito Village",
			"updates"   : ["You have heard the ancient Rito song from Bedoli<QT>s sister, Laissa.\n\n\"The pride of Rito.\"", 
							"update 2"],
			"quest_giver" : "Marco",
			"quest_complete" : "You solved the quest."
		},
		"quest6" : {
			"name"		: "Quest 6",
			"location"  : "Rito Village",
			"updates"   : ["You have heard the ancient Rito song from Bedoli<QT>s sister, Laissa.\n\n\"The pride of Rito.\"", 
							"update 2"],
			"quest_giver" : "Marco",
			"quest_complete" : "You solved the quest."
		}
	}');


}
