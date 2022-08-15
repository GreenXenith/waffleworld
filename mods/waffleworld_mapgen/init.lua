local MODNAME = minetest.get_current_modname()
local MODPATH = minetest.get_modpath(MODNAME)

dofile(MODPATH .. "/liquids.lua")

minetest.register_alias("mapgen_stone", "waffles:waffle_stack")

minetest.register_alias("mapgen_water_source", MODNAME .. ":syrup_source")
minetest.register_alias("mapgen_lava_source", MODNAME .. ":butter_source")

minetest.set_mapgen_setting("mgv7_spflags", "nomountains,ridges,floatlands,caverns", true)

--                                                    offset, scale, spread, seed, octaves, persistence, lacunarity, flags,
minetest.set_mapgen_setting("mgv7_np_terrain_base"    , "0.0, 24.0, (120,120,120), 89712, 1, 0.5, 1.0, defaults", true)
minetest.set_mapgen_setting("mgv7_np_terrain_alt"     , "3.0, 2.0, (36,36,36), 89712, 2, 10.0, 10.0, defaults", true)
minetest.set_mapgen_setting("mgv7_np_terrain_persist" , "0.6, 3.0, (200,200,200), 539, 3, 0.6, 2.0, defaults", true)
minetest.set_mapgen_setting("mgv7_np_ridge"           , "0.0, 1.0, (100,100,100), 6467, 4, 0.75, 2.0, defaults", true)
minetest.set_mapgen_setting("mgv7_np_ridge_uwater"    , "0.0, 1.2, (300,300,100), 85039, 2, 0.4, 2.0, defaults", true)


-- Not sure what to do with this
-- minetest.register_biome({
--     name = "batter",
--     y_min = 1,
--     y_max = 1,
--     heat_point = 50,
--     humidity_point = 38,
--     node_top = MODNAME .. ":batter",
--     depth_top = 2,
-- })

minetest.register_node(MODNAME .. ":icecream", {
    description = "Ice Cream",
    tiles = {"waffleworld_mapgen_icecream.png"},
    groups = {snappy = 2},
})

minetest.register_biome({
    name = "snow",
    node_top = "waffleworld_mapgen:icecream",
    depth_top = 1,
    y_max = 31000,
    y_min = 10,
    -- heat_point = 20,
    -- humidity_point = 35,
})
