-- priority: -1

---Applies movement logic to an entity table with spd (number of units to move) and dir (point on circle [0,1) where 0 is right).
---@param table {number spd, number dir}
function entity_movement(e)
	local d=get_vector_from_angle(e.dir)
	e.x+=d.x*e.spd
	e.y+=d.y*e.spd
end

