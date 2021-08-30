local MODNAME = minetest.get_current_modname()
local MODPATH = minetest.get_modpath(MODNAME)

dofile(MODPATH .. "/liquids.lua")

minetest.register_alias("mapgen_stone", "waffles:waffle_stack")

minetest.register_alias("mapgen_water_source", MODNAME .. ":syrup_source")
