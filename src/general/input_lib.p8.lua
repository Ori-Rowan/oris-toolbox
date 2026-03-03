-- priority: -1

---Returns direction, point on a circle [0,1) where 0 is right, based on the player input ⬅️⬆️➡️⬇️ for normalized 8d input.
---@returns number direction [0,1)
function get_8d_input()
	-- get dir angle from input
	local dirs,a={0.5,0,nil,0.25,0.375,0.125,0.25,0.75,0.625,0.875,0.75,nil,0.5,0},0
	for i=0,3 do
		a+=btn(i) and 2^i or 0
	end
	return dirs[a]
end

