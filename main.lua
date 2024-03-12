-- a comment

--[[
    A multiline comment
-- ]]

Global_variable = "global"
Churros = "churros"

-- printing text
print("Hello world")
print("Hello " .. "world")

local name = "churros"
local anything = nil
local number = 10

local multiline_string = [[
    A long
    long
    long
    long
    text
]]

print(name)
name = false
print(name)

print(anything)
print(number)
print(multiline_string)
print(nil==false)
print(""==true)
print(type(name))
