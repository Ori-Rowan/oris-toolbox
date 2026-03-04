-- priority: -1

--- Entity behaviour.
-- Helper function for entities in a 2D space.
-- @section entity_behaviour

--- Applies movement logic to an entity.
-- @tparam table e Entity table.
-- @tparam number e.spd Number of pixels to move.
-- @tparam angle e.dir Movement direction.
function entity_movement(e)
	local d=get_vector_from_angle(e.dir)
	e.x+=d.x*e.spd
	e.y+=d.y*e.spd
end

