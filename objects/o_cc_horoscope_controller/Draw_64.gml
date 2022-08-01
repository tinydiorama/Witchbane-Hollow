if (changeText) {
	changeText = false;
	xx = room_width / 2;
	displaytext = "";
	pos = 1;
} else {
	draw_set_font(font_reg);
	xx = display_get_gui_width() / 2;
	draw_text_transformed(xx - string_width(displaytext) / 2, 30, displaytext, 1, 1, 0);
	
	if ( index == array_length_1d(questions) ) { // Results
		// Check results
		var winner = "";
		var winnerText = "You are the ";
		var winnerKeys = "";
		var winnerDesc = "";
		var winnerSprite = s_spear_tarot;
		if ( spear >= max(compass, lantern, chalice, moon) ) {
			winner = "Spear";
			winnerKeys = "Strength, growth, business, ambition, change, decision-making, determination, fortitude, power";
			winnerDesc = "An inner force and resolve radiates from you, a rock-steady solidity comparable to mountains. You feel at ease when on peaks, the flat plains seem entirely too open. Sometimes you are rigid in your ways, yet, when convinced, you may shift and change direction like the earth below. Intentionality is your promise, ambition and power often lead to the best rewards. The Spear and its strength are within.";
			global.horoscope = "spear";
		} else if ( compass >= max(lantern, chalice, moon) ) {
			winner = "Compass";
			winnerKeys = "Principles, perfectionism, safety/security, responsibiity, commitment, loyalty, intellect, knowledge";
			winnerDesc = "Some lose their way often, twists and turns without guidance. This is not your path, your inner lodestone always seems to lead you to the right place at the right time. There is a curious pull from your mind, sometimes light or heavy, as you weave your decisions into an orderly tapestry. Your mind's magnetic mandate is not without fail, but rings more true than intuition. The Compass keeps the path.";
			winnerSprite = s_compass_tarot;
			global.horoscope = "compass";
		} else if ( lantern >= max(chalice, moon) ) {
			winner = "Lantern";
			winnerKeys = "Optimism, charisma, hope, love, joviality, extroversion, fun, friendliness, empathy, selflessness";
			winnerDesc = "Light and knowledge, darkness and mystery, our world has many pairs. Your radiance is bright and warm, taking you to places known and unknown. The sunlit world is your home, beneath blue skies and green trees. You cannot always live in the sun, there are shadowed and darker paths to be walked. Ambition is double-edged, it can lead you to greatness or to disaster. The Lantern lights the way.";
			winnerSprite = s_lantern_tarot;
			global.horoscope = "lantern";
		} else if ( chalice >= moon ) {
			winner = "Chalice";
			winnerKeys = "Balance, moderation, intuition, mystery, spirituality, calmness, serenity, flow, connection";
			winnerDesc = "Nature always seeks balance, life and death, water and fire. When you were young, you often played with differently weighted toys and built tall precarious towers. Your sense of balance is uncanny, you move through life as though dancing. There is a peculiar mystery about balance, its neutrality and tranquility simply are. As are you, you hold the scales and may fill or empty the cup. The Chalice is yours.";
			winnerSprite = s_chalice_tarot;
			global.horoscope = "chalice";
		} else {
			winner = "Moon";
			winnerKeys = "Creativity, vitality, splendor, art, passion, curiosity, light, moodiness, unpredictability";
			winnerDesc = "There is an ancient majesty to the full moon. It holds the night sky in awe, silver and magnificent. When you see it, your moon-shadow follows you, faint and always present. Even in waning light, your imagination soars skywards, your next creation is that much closer to realization. Celestial inspiration is not without its cost, earthly matters often appear pale and thin as your mood leans towards the heavens. The Moon has risen.";
			winnerSprite = s_moon_tarot;
			global.horoscope = "moon";
		}
		global.horoscope = "compass";
		fulltext = "";
		displaytext = "";
		draw_text_color(210, 50, winnerText + winner, c_white, c_white, c_white, c_white, 1);
		draw_text_ext_transformed_color(210, 65, winnerKeys, 12, 300, 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1);
		//draw_rectangle_color(100, 50, 200, 200, c_white, c_white, c_white, c_white, false);
		draw_sprite(winnerSprite, 0, 100, 50);
		draw_text_ext_transformed_color(210, 100, winnerDesc, 12, 300, 0.6, 0.6, 0, c_white, c_white, c_white, c_white, 1);
		
		draw_sprite(s_ui_caret, 0, 210, 202);
		draw_text_color(220, 200, "Begin your journey", c_white, c_white, c_white, c_white, 1);
	} else {
		for ( var i = 0; i < array_length_1d(answers[index]); i++ ) {
			draw_text(xx - 100, i * string_height(answers[index, i]) + 150, (answers[index, i]));
		}
	
		draw_sprite(s_ui_caret, 0, xx - 110, selected * string_height(answers[index, selected]) + 153);
	}
}