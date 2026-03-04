-- priority: -1

--- Vector library.
-- Helper functions for basic vector manipulation.
-- @section vector_lib

--- Get vector table between coordinate tables.
-- @tparam point a
-- @tparam point b
-- @treturn vector2D
function get_vector_from_points(a,b)
	return {x=b.x-a.x,y=b.y-a.y}
end

--- Get the magnitued of a given vector.
-- @tparam vector2D v
-- @treturn number Magnitude
function get_vector_length(v)
	return sqrt(v.x^2+v.y^2)
end

--- Get normilized vector with magnitude of 1.
-- @tparam vector2D v
-- @treturn vector2D
function normalize_vector(v)
    if (get_vector_length(v) == 0) return log('Cannot normalize vector of lenght 0', "WARNING")
	v.x,v.y=v.x/get_vector_length(v),v.y/get_vector_length(v)
end

--- Get normilized vector from an angle.
-- @tparam angle a 
-- @treturn vector2D
function get_vector_from_angle(a)
	return {x=cos(a),y=sin(a)}
end

--- Get angle from a given vector.
-- @tparam vector2D v
-- @treturn angle
function get_angle_from_vector(v)
	return atan2(v.x,v.y)
end

