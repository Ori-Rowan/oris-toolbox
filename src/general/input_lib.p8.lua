-- priority: -1

--- Input library.
-- Helper functions for advanced player input.
-- @section input_lib


--- Get direction based on the player input ⬅️⬆️➡️⬇️ for normalized 8d input.
-- @treturn angle Combined input direction.
function get_8d_input()
	-- get dir angle from input
	local dirs,a={0.5,0,nil,0.25,0.375,0.125,0.25,0.75,0.625,0.875,0.75,nil,0.5,0},0
	for i=0,3 do
		a+=btn(i) and 2^i or 0
	end
	return dirs[a]
end

