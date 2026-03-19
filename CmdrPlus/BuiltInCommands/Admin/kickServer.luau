-- added kick reason from github.com/evaera/Cmdr/pull/357

local Chat = game:GetService("Chat")

return function(context, players, reason)
	local unfiltered_reason = nil

	if reason then
		unfiltered_reason = reason
		reason = Chat:FilterStringForBroadcastAsync(reason, context.Executor)
	else
		reason = `Kicked by {context.Executor.Name}.`
	end

	if string.find(reason, "#") and not string.find(unfiltered_reason, "#") then
		reason = `Kicked by {context.Executor.Name}.`
	end

	for _, player in pairs(players) do
		player:Kick(reason)
	end

	return (`Kicked %d players, for {reason}`):format(#players)
end
