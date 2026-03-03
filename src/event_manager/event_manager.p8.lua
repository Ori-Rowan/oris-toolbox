-- priority: 1
-- tokens: 102

EventManager = {
    events = {},
    listeners = {}
}

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

function EventManager:add_listener(event, func, die)
    -- assert(type(func) == "function")
    add(self.listeners,{event,func,die}) -- 1=event, 2=func, 3=die
end

function EventManager:emit(event, props, reactive)
    add(self.events, {event, reactive and props or copy_table(props)}) -- 1=event, 2=props
end

function EventManager.clear(_ENV)
    events, listeners  = {}, {}
end
