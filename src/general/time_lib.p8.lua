-- priority: -1

--- Time library.
-- Helper functions for time/frames related things.
-- @section time_lib

--- Converts seconds to frames assuming 30 FPS.
-- @tparam number seconds 
-- @treturn number Seconds
function seconds_to_frames(seconds)
    return flr(seconds*30)
end

--- Converts frames to seconds assuming 30 FPS.
-- @tparam number frames
-- @treturn number Seconds
function frame_to_seconds(frames)
    return ceil(frames/30)    
end

