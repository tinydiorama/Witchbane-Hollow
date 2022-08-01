// Swap to a new item
var seed = global.seed + room + x + y;
random_set_seed(seed);
var tempPercentage = 0;
var itemProbability = random_range(0, 10);
for ( var i = 0; i < array_length_1d(randomratios); i++ ) {
	// calculate which item to morph into
	tempPercentage += randomratios[i];
	if ( itemProbability <= tempPercentage ) {
		objectToMorph = randomitems[i];
		break;
	}
}

if ( objectToMorph == false ) {
	objectToMorph = randomitems[array_length_1d(randomratios) - 1];
}

if ( objectToMorph == -1 ) {
	instance_destroy();
} else {
	instance_create_layer(x, y, layer, objectToMorph);
	instance_destroy();
}