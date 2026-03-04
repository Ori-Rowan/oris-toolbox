-- priority: -10

--- Ori's Toolbox is a custom module for PICO-8 development.
-- @module oris_toolbox
-- @author Orion

--- Types.
-- Custom type definitions.
-- @section types

--- (table) Type for a 2D Vector.
-- @table vector2D
-- @field x (number)
-- @field y (number)

--- (table) Type for point coordinates in 2D space.
-- @table point
-- @field x (number)
-- @field y (number)

--- (number) Type for angle. Point on a circle [0,1] where 0 is right.
-- @table angle

--- Config.
-- Options for module configuration.
-- @section config

--- @table _CONFIG.oris_toolbox
-- @field log_dir Output directory for custom logging. Default: "/log"
-- @field log_clear_on_start If true, log file clears on cartrige start. Default: true

_CONFIG = _CONFIG or {}

_CONFIG.oris_toolbox = _CONFIG.oris_toolbox or {}

-- set default values for oris_toolbox config
function _CONFIG.oris_toolbox.init(_ENV)
    -- if log file should clear when game runs
    log_clear_on_start = log_clear_on_start ~= false
    -- where the log is stored
    log_dir = log_dir or "/log"
end

_CONFIG.oris_toolbox:init()
