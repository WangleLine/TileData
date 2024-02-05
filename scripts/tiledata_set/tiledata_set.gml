/// @description									Attaches data to a tileset asset.
/// @param {Asset.GMTileSet}	tileset_asset		The asset reference/ID of the tileset you want to set data for.
/// @param {Array}				data_array			The array of data you want to attach to the tileset asset.
/// @return {array}
function tiledata_set(tileset_asset,data_array)
{
	// Initiliaze global tiledata arrays
	static initialized = false;
	if initialized == false
	{
		global.tiledata_assets = [];
		global.tiledata_data = [];
		initialized = true;
	}
	
	array_push(global.tiledata_assets,tileset_asset);
	array_push(global.tiledata_data,data_array);
}