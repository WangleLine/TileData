/// @description									Get data previously attached to a tileset via tiledata_set().
/// @param {Asset.GMTileSet}	tileset_asset		The asset reference/ID of the tileset you want to get data for.
/// @param {Real}				only_specific_tile	Only return data for a specific tile, as opposed to the entire data array for this tileset.
/// @return {array}
function tiledata_get(tileset_asset,only_specific_tile=undefined)
{
	// Loop through all array entries to find array index of this tileset asset
	var length = array_length(global.tiledata_assets);
	var index = undefined;
	for(var i=0;i<length;i++)
	{
		if global.tiledata_assets[i] == tileset_asset
		{
			index = i;
			break;
		}
	}
	
	// Error: No data found for tileset asset
	if index == undefined
	{
		show_debug_message("TileData: No data found for this tileset asset");
		return undefined;
	}
	
	// Fetch data array from global data
	var data = global.tiledata_data[index];
	
	// Return data for specific tile
	if only_specific_tile != undefined
	{
		return data[only_specific_tile];
	}
	
	// Return entire array of tile data for this tileset
	return data;
}