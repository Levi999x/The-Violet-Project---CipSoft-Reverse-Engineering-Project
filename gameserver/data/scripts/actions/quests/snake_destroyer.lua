local action = Action()

function action.onUse(player, item, fromPosition, target, toPosition)
	if not target:isItem() then
		return false
	end
	
	if target:getId() == 4861 and player:getStorageValue(293) == 17 then 
		target:transform(4862, 1)
		target:decay()
		player:setStorageValue(299, 1)
		item:remove()
		target:getPosition():sendMagicEffect(7)
		return true
	end
	return false
end

action:id(4846) -- snake destroyer
action:register()
