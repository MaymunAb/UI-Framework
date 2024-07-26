local function tween(object, twINFO, goal)
	if object and twINFO and goal then
		local ts = game:GetService("TweenService")
		local tween = ts:Create(object,twINFO,goal)
		if ts and tween and goal then
			return tween
		end
	end
end
