local moveevent = MoveEvent()

function moveevent.onStepIn(creature, item, position, fromPosition)
	if creature:isPlayer() then 
		doRelocate(item:getPosition(),{x = 33194, y = 32853, z = 08})
		creature:getPlayer():setTown(Town("Ankrahmun"))
		Game.sendMagicEffect({x = 33194, y = 32853, z = 08}, 13)
	end
end

moveevent:aid(3107)
moveevent:register()

local moveevent = MoveEvent()

function moveevent.onAddItem(item, tileitem, position)
	doRelocate(item:getPosition(),{x = 33195, y = 32851, z = 06})
	Game.sendMagicEffect({x = 33195, y = 32851, z = 06}, 14)
end

moveevent:aid(3107)
moveevent:tileItem(true)
moveevent:register()