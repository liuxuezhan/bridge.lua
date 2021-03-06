local System = System
local Collection = System.Collection
local removeAtArray = Collection.removeAtArray
local getArray = Collection.getArray

local Stack = {}

function Stack.__ctor__(this, ...)
    local len = select("#", ...)
    if len == 0 then return end
    local collection = ...
    if type(collection) == "number" then return end
    Collection.insertRangeArray(this, 0, collection)
end

function Stack.getCount(this)
    return #this
end

Stack.clear = Collection.removeArrayAll
Stack.push = Collection.pushArray
Stack.contains = Collection.contains

local function peek(t)
    if #t == 0 then
        throw(InvalidOperationException())
    end
    return getArray(t, #this - 1)
end

Stack.peek = peek

function Stack.pop(this)
    local v = peek(this)
    removeAtArray(t, #this -1)
    return v
end

System.define("System.Stack", function(T) 
    local cls = {
        __inherits__ = { System.IEnumerable_1(T), System.ICollection },
        __genericT__ = T,
    }
    return cls
end, Stack)
