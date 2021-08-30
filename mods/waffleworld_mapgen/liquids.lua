local MODNAME = minetest.get_current_modname()

local VISCOSITY = 6
local EFFECT_COLOR = {a = 103, r = 73, g = 36, b = 0}

minetest.register_node(MODNAME .. ":syrup_source", {
	description = "Syrup Source",
	drawtype = "liquid",
	waving = 3,
	tiles = {
		{
			name = "waffleworld_mapgen_syrup_source.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "waffleworld_mapgen_syrup_source.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = MODNAME .. ":syrup_flowing",
	liquid_alternative_source = MODNAME .. ":syrup_source",
	liquid_viscosity = VISCOSITY,
	post_effect_color = EFFECT_COLOR,
	groups = {water = 3, liquid = 3, cools_lava = 1},
})

minetest.register_node(MODNAME .. ":syrup_flowing", {
	description = "Flowing Syrup",
	drawtype = "flowingliquid",
	waving = 3,
	tiles = {"waffleworld_mapgen_syrup.png"},
	special_tiles = {
		{
			name = "waffleworld_mapgen_syrup_flowing.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "waffleworld_mapgen_syrup_flowing.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = MODNAME .. ":syrup_flowing",
	liquid_alternative_source = MODNAME .. ":syrup_source",
	liquid_viscosity = VISCOSITY,
	post_effect_color = EFFECT_COLOR,
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
})

-- Todo: Lava (butter), quicksand (batter)
