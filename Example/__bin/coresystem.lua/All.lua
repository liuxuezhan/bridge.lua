return function(dir)
    dir = dir and dir .. ".CoreSystem." or "CoreSystem."
    local require = require
    local load = function(module) return require(dir .. module) end

    load("Core");
    load("Interfaces")
    load("Exception")
    load("Double")
    load("Int")
    load("String");
    load("Char")
    load("Boolean")
    load("Delegate")
    load("Enum")
    load("TimeSpan")
    load("DateTime")
    load("Object")
    load("Type")
    load("Collections.EqualityComparer")
    load("Collection")
    load("Collections.Interfaces")
    load("Collections.List")
    load("Collections.Dictionary")
    load("Collections.Queue")
    load("Collections.Stack")
    load("Collections.HashSet")
    load("Collections.LinkedList")
    load("Collections.Linq")
    load("Array")
    load("Math")
    load("Text.StringBuilder")
    load("Console")
end
