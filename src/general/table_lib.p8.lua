-- priority: -1

---Creates non reactive copy of a table.
---@param table t
---@return table
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

function has_value (t, val)
    for i, v in ipairs(t) do
        if v == val then
            return true
        end
    end

    return false
end

