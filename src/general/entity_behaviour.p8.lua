-- priority: -1
-- tokens:28

--- Entity behaviour.
-- Helper function for entities in a 2D space.
-- @section entity_behaviour

--- Applies movement logic to an entity.
-- @tparam table e Entity table.
-- @tparam number e.spd Number of pixels to move.
-- @tparam angle e.dir Movement direction.
function entity_movement(e)
  if(e.dir) e.x+=cos(e.dir)*e.spd e.y+=sin(e.dir)*e.spd
end


