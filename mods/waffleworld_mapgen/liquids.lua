local MODNAME = minetest.get_current_modname()

-- Syrup
local SYRUP_VISCOSITY = 6
local SYRUP_EFFECT_COLOR = {a = 103, r = 73, g = 36, b = 0}

minetest.register_node(MODNAME .. ":syrup_source", {
	description = "Syrup Source",
	drawtype = "liquid",
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
	liquid_viscosity = SYRUP_VISCOSITY,
	post_effect_color = SYRUP_EFFECT_COLOR,
	groups = {water = 3, liquid = 3, cools_lava = 1},
})

minetest.register_node(MODNAME .. ":syrup_flowing", {
	description = "Flowing Syrup",
	drawtype = "flowingliquid",
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
	liquid_viscosity = SYRUP_VISCOSITY,
	post_effect_color = SYRUP_EFFECT_COLOR,
	groups = {water = 3, liquid = 3, not_in_creative_inventory = 1,
		cools_lava = 1},
})

-- Butter
local BUTTER_VISCOSITY = 1
local BUTTER_DAMAGE = 4
local BUTTER_EFFECT_COLOR = {a = 103, r = 219, g = 157, b = 0}

minetest.register_node(MODNAME .. ":butter_source", {
	description = "Butter Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "waffleworld_mapgen_butter_source.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "waffleworld_mapgen_butter_source.png",
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
    light_source = minetest.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = MODNAME .. ":butter_flowing",
	liquid_alternative_source = MODNAME .. ":butter_source",
	liquid_viscosity = BUTTER_VISCOSITY,
    liquid_renewable = false,
    damage_per_second = BUTTER_DAMAGE,
	post_effect_color = BUTTER_EFFECT_COLOR,
	groups = {lava = 3, liquid = 2, igniter = 1},
})

minetest.register_node(MODNAME .. ":butter_flowing", {
	description = "Flowing Butter",
	drawtype = "flowingliquid",
	tiles = {"waffleworld_mapgen_butter.png"},
	special_tiles = {
		{
			name = "waffleworld_mapgen_butter_flowing.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "waffleworld_mapgen_butter_flowing.png",
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
    light_source = minetest.LIGHT_MAX - 1,
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = MODNAME .. ":butter_flowing",
	liquid_alternative_source = MODNAME .. ":butter_source",
	liquid_viscosity = BUTTER_VISCOSITY,
    liquid_renewable = false,
    damage_per_second = BUTTER_DAMAGE,
	post_effect_color = BUTTER_EFFECT_COLOR,
	groups = {lava = 3, liquid = 2, not_in_creative_inventory = 1,
		igniter = 1},
})

-- Batter
local BATTER_VISCOSITY = 8
local BATTER_EFFECT_COLOR = {a = 245, r = 247, g = 217, b = 139}

minetest.register_node(MODNAME .. ":batter", {
	description = "Batter Source",
	drawtype = "glasslike",
	tiles = {
		{
			name = "waffleworld_mapgen_batter_source.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
		{
			name = "waffleworld_mapgen_batter_source.png",
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
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = MODNAME .. ":batter",
	liquid_alternative_source = MODNAME .. ":batter",
	liquid_viscosity = BATTER_VISCOSITY,
    liquid_renewable = false,
	post_effect_color = BATTER_EFFECT_COLOR,
	groups = {liquid = 3},
})
