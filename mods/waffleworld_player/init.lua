minetest.register_on_joinplayer(function(player)
	player:set_lighting({shadows = {intensity = 0.16}})
end)
