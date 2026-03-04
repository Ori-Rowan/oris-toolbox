-- priority: -1

--- Text library.
-- Helper functions for strings and custom prints.
-- @section text_lib


--- Prints text centered inside a given width.
-- Automatically wraps words to multiple lines.
-- @tparam string msg Text to print.
-- @tparam number x Left position in pixels.
-- @tparam number y Top position in pixels.
-- @tparam number w Width in pixels.
-- @tparam number col Color of the printed text.
function print_align_center(msg, x, y, w, col)
    local words = split(msg, " ")
    local rows = {}
    local current_row = ""

    for i=1, #words do
        local word = words[i]
        if current_row == "" then
            current_row = word
        else
            -- Check if adding the next word would exceed width
            if  str_width(current_row.." "..word)> w then
                add(rows, current_row)
                current_row = word
            else
                current_row ..= " " .. word
            end
        end
    end

    -- Add the last row if anything is left
    if current_row != "" then
        add(rows, current_row)
    end

    -- Print centered
    for i=1, #rows do
        local row = rows[i]
        print(row, x + (w - str_width(row)) / 2, y + 6 * (i-1), col)
    end
end


--- Get width of a given string in pixels.
-- @tparam sring str 
-- @treturn number
function str_width(str)
    local len = 0
    foreach(str, function (char)
        len += 4
        if (ord(char) >= 128) len+=4
    end)
    return len
end

