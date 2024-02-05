function tiledata_set(tileset_asset,data_array)
{
	// Initiliaze global tiledata arrays
	static initialized = false;
	if initialized == false
	{
		global.tiledata_asset = [];
		global.tiledata_data = [];
		initialized = true;
	}
	array_push(global.tiledata_asset,tileset_asset);
	array_push(global.tiledata_data,data_array);
}