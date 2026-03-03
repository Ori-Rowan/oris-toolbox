-- priority: -10

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