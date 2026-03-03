-- priority: 1
-- tokens: 102

--- Global manager for event system
-- @classmod EventManager
-- @field events table Internal queue for pending events.
-- @field listeners table A list of active listeners.
EventManager = {
    events = {},
    listeners = {}
}


--- Updates the EventManager.
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
-- @param event string Name of event to listen to.
-- @param func function Handler function. Should have one param table props.
-- @param die boolean If true then listener dies after one trigger.
function EventManager:add_listener(event, func, die)
    add(self.listeners,{event,func,die}) -- 1=event, 2=func, 3=die
end

--- Emits an event with props.
-- @param event string Name of the event emitted.
-- @param props table Props for handler function.
-- @param reactive boolean If true the props will be passed directly otherwise props are passed via safe non-reactive copy.
function EventManager:emit(event, props, reactive)
    add(self.events, {event, reactive and props or copy_table(props)}) -- 1=event, 2=props
end

--- Resets EventManager state.
-- Clears all listeners and event queue.
function EventManager.clear(_ENV)
    events, listeners  = {}, {}
end
