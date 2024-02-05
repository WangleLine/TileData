// Move player to mouse position
x = floor(mouse_x/8)*8;
y = floor(mouse_y/8)*8;

// Tilemap/Tileset stuff
var tilemap_id = layer_tilemap_get_id("Tiles")
var tile = tilemap_get_at_pixel(tilemap_id,mouse_x,mouse_y);

var attached_data = tiledata_get(tilemap_get_tileset(tilemap_id),tile);

// Play different footstep sounds depending on tile material
switch(attached_data)
{
	case materials.dirt:
		audio_play_sound(sfx_example_dirt,1,false);
		break;
		
	case materials.stone:
		audio_play_sound(sfx_example_stone,1,false);
		break;
		
	case materials.wood:
		audio_play_sound(sfx_example_wood,1,false);
		break;
}