
local Prototype = require( "CoronaPrototype" )
local Creature = Prototype:newClass("Creature")


local Animation = require 'src.animation'

function Creature:initialize(params)
	-- self.model = ...
	-- self.npc_index = ...
	local model = Animation:new(params)
	self.model = model
end


function Creature:move()
end

function Creature:attack()
end

function Creature:dead()
end

function Creature:talk()
end



return Creature






