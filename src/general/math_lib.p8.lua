-- priority: -1
-- tokens: 38

--- Math library.
-- Helper functions for numbers.
-- @section math_lib

--- Get digits infront of decimal point of a given number.
-- @tparam number num 
-- @treturn number
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

