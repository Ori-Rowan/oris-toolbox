-- priority: -1

---Changes the volume of a given sfx through direct memmory access.
---@param number sfx
---@param number volume [0,7]
function change_sfx_volume(sfx,volume)
    sfx=flr(sfx)
    local v = flr(mid(0,volume,7))
    for i=0,31 do
        local n=0x3200+68*sfx+2*i
        poke2(n,%n&~0b111<<9|v<<9)
    end
end

