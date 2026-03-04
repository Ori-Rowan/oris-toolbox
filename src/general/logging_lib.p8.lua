-- priority: -2

--- Logging library.
-- Helper functions for custom file logging. Output file can be modified via 
-- global _CONFIG.oris_toolbox.log_dir. If _CONFIG.oris_toolbox.log_clear_on_star
-- is true, log file gets cleared on cartrige start.
-- @section logging_lib

printh("["..time().."][INFO]: logging start", _CONFIG.oris_toolbox.log_dir,  _CONFIG.oris_toolbox.log_clear_on_start)
    
--- Logs entry into the log file.
-- Entry has the format "[time][level]msg"
-- @tparam string msg 
-- @tparam string level Default "INFO"
function log(msg, level)
    level = level or "INFO"
    log_text= "["..time().."]["..level.."]: "..msg
    printh(log_text, _CONFIG.oris_toolbox.log_dir)    
end

