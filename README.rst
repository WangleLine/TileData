TileData
=============
TileData is a tiny library for attaching arrays of arbitrary data to tileset assets.

+----------------------------------------+-----------------------------------------------------------------------------------------------+
| tiledata_set                           | | Attaches data to a tileset asset.                                                           |
+========================================+===============================================================================================+
| `tileset_asset`                        | | The asset reference/ID of the tileset you want to set data for.                             |
+----------------------------------------+-----------------------------------------------------------------------------------------------+
| `data_array`                           | | The array of data you want to attach to the tileset asset.                                  |
+----------------------------------------+-----------------------------------------------------------------------------------------------+

+----------------------------------------+-----------------------------------------------------------------------------------------------+
| tiledata_get                           | | Get data previously attached to a tileset via tiledata_set().                               |
+========================================+===============================================================================================+
| `tileset_asset`                        | | The asset reference/ID of the tileset you want to set data for.                             |
+----------------------------------------+-----------------------------------------------------------------------------------------------+
| `data_array`                           | | Only return data for a specific tile, as opposed to the entire data array for this tileset. |
+----------------------------------------+-----------------------------------------------------------------------------------------------+

Example
=======
This repository contains a small example project that shows how the TileData library can be used for attaching footstep material data to a tileset.
