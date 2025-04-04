local talkaction = TalkAction("/a")

function talkaction.onSay(player, words, param)
	if not player:getGroup():getAccess() then
		return true
	end

	local steps = tonumber(param)
	if not steps then
		return false
	end

	local position = player:getPosition()
	position:getNextPosition(player:getDirection(), steps)

	position = player:getClosestFreePosition(position, true)
	if position.x == 0 then
		player:sendCancelMessage("You cannot teleport there.")
		return false
	end

	player:teleportTo(position)
	return false
end

talkaction:separator(" ")
talkaction:register()