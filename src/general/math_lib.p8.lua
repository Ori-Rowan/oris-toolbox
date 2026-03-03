-- priority: -1

---Returns the number of digits infront of decimal point of a given number.
---@param number num
---@return number digits
function get_digits(num)
    num = abs(flr(num))
    if (num < 10) return 1

    local digits = 0
    while num > 0 do
        num = flr(num / 10)
        digits += 1
    end
    return digits
end

