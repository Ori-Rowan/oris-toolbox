-- priority: 1

--- Global camera object to handle camera position.
-- @type Camera

Camera = {
    --- (number) Maximum offset for camera shake.
    shake_offset = 2,
    --- (number) Internal timer for camera shake.
    shake_timer = 0,
}

--- Begin camera shaking for amount of frames.
-- @tparam number f Amount of frames to shake for.
function Camera:shake(f)
    self.shake_timer=f
end

--- Update step function.
function Camera:update()
    if (self.shake_timer > 0) self.shake_timer-=1 
end

--- Draw step function.
function Camera:draw()
    if self.shake_timer > 0 then
        camera(self:get_offset(), self:get_offset())
    else
        camera(0,0)
    end
end

--- Get random camera offset.
-- offset is calculated based on Camera.shake_offset.
-- @return number offset
function Camera:get_offset()
    return rnd(self.shake_offset*2) - self.shake_offset
end