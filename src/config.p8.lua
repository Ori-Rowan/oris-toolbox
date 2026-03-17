-- priority: -10

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
