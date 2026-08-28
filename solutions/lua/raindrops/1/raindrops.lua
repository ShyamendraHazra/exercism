return function(n)
	local rainSound = ""
	if n % 3 == 0 then
		rainSound = rainSound .. "Pling"
	end
	if n % 5 == 0 then
		rainSound = rainSound .. "Plang"
	end
	if n % 7 == 0 then
		rainSound = rainSound .. "Plong"
	end
	if rainSound == "" then
		return tostring(n)
	end

	return rainSound
end
