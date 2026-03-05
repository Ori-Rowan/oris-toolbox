-- priority: -1
-- tokens: 13

--- Input library.
-- Helper functions for advanced player input.
-- @section input_lib


--- Get direction based on the player input ⬅️⬆️➡️⬇️ for normalized 8d input.
-- @treturn ?angle Combined input direction or empty on no input or colliding input (left+right, up+down).
function get_8d_input()
    return tonum(split"0.5,0,,0.25,0.375,0.125,0.25,0.75,0.625,0.875,0.75,,0.5,0"[btn()&0b1111])
end