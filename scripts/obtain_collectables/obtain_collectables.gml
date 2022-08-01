function obtain_collectables() {
	with ( o_game ) {
		for ( var i = 0; i < ds_map_size(o_data.umbrae); i++ ) {
			var umbraeitem = o_data.umbrae[? string(i)];
			ds_list_add(allumbrae, umbraeitem);
			ds_list_add(umbrae, false);
		}
		for ( var i = 0; i < ds_map_size(o_data.curios); i++ ) {
			var umbraeitem = o_data.curios[? string(i)];
			ds_list_add(allcurios, umbraeitem);
			ds_list_add(curios, false);
		}
		for ( var i = 0; i < ds_map_size(o_data.genesia); i++ ) {
			var umbraeitem = o_data.genesia[? string(i)];
			ds_list_add(allgenesia, umbraeitem);
			ds_list_add(genesia, false);
		}
		for ( var i = 0; i < ds_map_size(o_data.impresiums); i++ ) {
			var umbraeitem = o_data.impresiums[? string(i)];
			ds_list_add(allimpresiums, umbraeitem);
			ds_list_add(impresiums, false);
		}
		for ( var i = 0; i < ds_map_size(o_data.ferrotypes); i++ ) {
			var umbraeitem = o_data.ferrotypes[? string(i)];
			ds_list_add(allferrotypes, umbraeitem);
			ds_list_add(ferrotypes, false);
		}
		for ( var i = 0; i < ds_map_size(o_data.aconitums); i++ ) {
			var umbraeitem = o_data.aconitums[? string(i)];
			ds_list_add(allaconitums, umbraeitem);
			ds_list_add(aconitums, false);
		}
	}
}
