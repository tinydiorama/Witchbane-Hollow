
selected = 0;

var xx = room_width / 2;
var yy = room_height / 2;

questions = [];
questions[0] = "Starlight casts light on:";
questions[1] = "Walking on a beach and a message bottle has washed ashore.";
questions[2] = "That window was smashed, they see and give chase.";
questions[3] = "Dreams of pyramids, which way to run?";
questions[4] = "Shipwrecked alone with one talismen.";

answers[0, 0] = "Overgrown hillside";
answers[0, 1] = "Snow-capped mountain";
answers[0, 2] = "Unfathomable sea";
answers[0, 3] = "Verdant meadow";

answers[1, 0] = "Words of power, moving earth";
answers[1, 1] = "Faded painting, soft edges";
answers[1, 2] = "Treasure map, hidden riches";
answers[1, 3] = "Ancient diagrams, long lost";

answers[2, 0] = "Many lighted paths ahead";
answers[2, 1] = "Notched arrow, escape route";
answers[2, 2] = "Darkness and mist provide cover";
answers[2, 3] = "Stalwart defiance through scales and shields";

answers[3, 0] = "Archives of forbidden knowledge";
answers[3, 1] = "Mind’s eye with deep pools";
answers[3, 2] = "Earthly gardens and sweet grapes";
answers[3, 3] = "Artist’s hearth and painted splendor";

answers[4, 0] = "Silvered mirror, seeing the unseen";
answers[4, 1] = "Rabbit’s foot, a spot of good luck";
answers[4, 2] = "Flint and steel, the keys to warmth";
answers[4, 3] = "Totem, to keep spirits up";

moon = 0;
spear = 0;
chalice = 0;
lantern = 0;
compass = 0;

index = 0;
changeText = false;

fulltext = questions[0];
displaytext = "";
pos = 1;
fastness = 3;
fastcount = 0;
