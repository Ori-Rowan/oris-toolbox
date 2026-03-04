-- priority: 1
-- tokens: 102

--- Global singleton manager for the event system. Listeners and events do not have a 
-- deterministic order. Do not rely on multiple events/listeners triggering in a 
-- particular sequence. Event props are shared across listeners, so if a handler mutates 
-- props, subsequent listeners will see the changes.
-- @type EventManager
-- @field name
-- @field health
    
EventManager = {
    --- Internal queue for pending events. Events are tables like this:
    -- @field 1 (string) event
    -- @field 2 (table) props
    events = {}, 
    --- A list of active listeners. Listeners are tables like this: 
    -- @field 1 (string) event
    -- @field 2 (function) func
    -- @field 3 (bool) die
    listeners = {} 
}


--- Update function for EventManager.
-- Processes all events by calling listener functions. After processing, the event queue is cleared.
function EventManager:update()
    foreach(self.listeners, function (l)
        foreach(self.events, function (e)
            if l[1] == e[1] then 
                l[2](e[2])
                if (l[3]) del(self.listeners, l)
            end
        end)
    end)
    self.events = {}
end

--- Adds a new listener tied to an event.
-- @tparam string event Name of event to listen to.
-- @tparam function func Handler function that recieves one parameter: props table.
-- @tparam bool die If true, the listener is removed after one trigger.
function EventManager:add_listener(event, func, die)
    add(self.listeners,{event,func,die}) -- 1=event, 2=func, 3=die
end

--- Emits an event with props.
-- @tparam string event Name of the event emitted.
-- @tparam table props Props for handler function.
-- @tparam bool reactive If true, props are passed directly; otherwise a safe copy is used.
function EventManager:emit(event, props, reactive)
    add(self.events, {event, reactive and props or copy_table(props)}) -- 1=event, 2=props
end

--- Resets EventManager state.
-- Clears all listeners and event queue.
-- @function EventManager:clear
function EventManager.clear(_ENV)
    events, listeners  = {}, {}
end
