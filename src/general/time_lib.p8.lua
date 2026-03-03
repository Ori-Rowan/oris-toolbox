-- priority: -1

---Returns number of frames for given seconds assuming 30 FPS.
---@param number seconds
---@param number frames
function seconds_to_frames(seconds)
    return flr(seconds*30)
end

---Returns number of seconds for given frames assuming 30 FPS.
---@param number frames
---@param number seconds
function frame_to_seconds(frames)
    return ceil(frames/30)    
end

