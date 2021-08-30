local MODNAME = minetest.get_current_modname()
local MODPATH = minetest.get_modpath(MODNAME)

dofile(MODPATH .. "/liquids.lua")

minetest.register_alias("mapgen_stone", "waffles:waffle_stack")

minetest.register_alias("mapgen_water_source", MODNAME .. ":syrup_source")
minetest.register_alias("mapgen_lava_source", MODNAME .. ":butter_source")

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
    y_min = 40,
    -- heat_point = 20,
    -- humidity_point = 35,
})
