-- priority: -1

---Returns vector table between coordinate tables.
---@param a table {number x, number y}
---@param b table  {number x, number y}
---@return table {number x, number y}
function get_vector_from_points(a,b)
	return {x=b.x-a.x,y=b.y-a.y}
end

---Returns the magnitued of a given vector table.
---@param v table {number x, number y}
---@return number magnitude
function get_vector_length(v)
	return sqrt(v.x^2+v.y^2)
end

---Returns normilized vector table with magnitured of 1.
---@param v table {number x, number y}
---@return table {number x, number y}
function normalize_vector(v)
    if (get_vector_length(v) == 0) return log('Cannot normalize vector of lenght 0', "WARNING")
	v.x,v.y=v.x/get_vector_length(v),v.y/get_vector_length(v)
end

---Returns normilized vector table from an angle on a circle.
---@param number a [0,1) where 0 means right
---@return table {number x, number y}
function get_vector_from_angle(a)
	return {x=cos(a),y=sin(a)}
end

---Returns angle on a circle interval [0,1) where 0 means right from a given vector table.
---@param table {number x, number y}
---@returns number angle
function get_angle_from_vector(v)
	return atan2(v.x,v.y)
end

