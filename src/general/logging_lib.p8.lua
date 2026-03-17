-- priority: -2
-- tokens: 38

--- Logging library.
-- Helper functions for custom file logging. Output file can be modified via 
-- global _CONFIG.oris_toolbox.log_dir. If _CONFIG.oris_toolbox.log_clear_on_star
-- is true, log file gets cleared on cartrige start.
-- @section logging_lib

printh("["..time().."][INFO]: logging start", _CONFIG.oris_toolbox.log_dir,  _CONFIG.oris_toolbox.log_clear_on_start)
    
--- Logs entry into the log file.
-- Entry has the format "[time][level]msg"
-- @tparam string m the message to log 
-- @tparam string l level of the log. Default: "INFO"
function log(m, l)
    l = l or "INFO"
    printh("["..time().."]["..l.."]: "..m, _CONFIG.oris_toolbox.log_dir)    
end

