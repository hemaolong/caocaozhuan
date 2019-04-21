

local Prototype = require( "CoronaPrototype" )


local Map = Prototype:newClass("Map")

function Map:ininitializeit(params){
	self.row_cnt = params.row_cnt
	self.col_cnt = params.col_cnt
}

function Map:load_npc(npc)
  print("load_npc")
end


function Map:find_npc(grid_index)
	self.npc[grid_index]
end 

function Map:get_pos_by_grid_index(target_grid)
	return 12, 23
end

function Map:move_npc(npc_grid, target_grid)
  local npc = self:find_npc(grid_index)
  local pos_x, pos_y = self:get_pos_by_grid_index(target_grid)
  transition.to( target, { time=400, x=pos_x, y=pos_y, transition=easing.inExpo })
end

function Map:attack_npc(npc_grid, target_grid)
	local attacker = self:find_npc(grid_index)
	local target = self:find_npc(target_grid)

	-- TODO: heml,  validate

end

return Map



