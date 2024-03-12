local function show_name(name)
    name = name or "churros" -- default parameter approach
    print(name)
    return nil
end

local function multiple_return()
    return 1, 2, 3
end

local function recursion_counter(first, last)
    local count = first + 1

    if count < last then
        return recursion_counter(count, last)
    end

    return count
end

local function return_as_function()
    return (
        function()
            print("A function has been returned")
        end
    )
end

local function rest_parameter(...)
    print(type(...)) -- string
    for key, value in pairs({...}) do
        -- key is the index in the table
        -- value is, obviously, the value
        local formatted = string.format("key: %s -> value: %s", key, value)
        print(formatted)
    end
end

show_name()
local _, y, z = multiple_return()
print(y, z)

local last = recursion_counter(1, 10)
print(last)

local anonymous_function = return_as_function()
anonymous_function()

rest_parameter("churros", 7)
