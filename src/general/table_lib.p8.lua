-- priority: -1
-- tokens: 44

--- Table library.
-- Helper functions for tables.
-- @section table_lib

--- Creates non reactive copy of a table.
-- @tparam table t
-- @treturn table
function copy_table(t)
  local c = {}
  for k, v in pairs(t) do
    c[k] = v
  end
  return c
end

-- Source - https://stackoverflow.com/a/33511182
-- Posted by Oka, modified by community. See post 'Timeline' for change history
-- Retrieved 2026-01-28, License - CC BY-SA 3.0
--- Checks if table has a value.
-- @tparam table t
-- @tparam any val
-- @treturn bool
function has_value (t, val)
    for i, v in ipairs(t) do
        if (v == val)  return true
    end
    return false
end

