-- priority: -2

printh("["..time().."][INFO]: logging start", _CONFIG.oris_toolbox.log_dir,  _CONFIG.oris_toolbox.log_clear_on_start)

---Saves log file based on _CONFIG.oris_toolbox.log_dir.
---@param string msg
---@param string level="INFO"
function log(msg, level)
    level = level or "INFO"
    log_text= "["..time().."]["..level.."]: "..msg
    printh(log_text, _CONFIG.oris_toolbox.log_dir)    
end

