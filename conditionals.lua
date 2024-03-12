-- if statment only executes if condition is true

if false or nil or true then
    print("churros here") end

-- only false and nil represents false in lua
if false or nil then
    print("churros")
end

--[[

true and true: true
true and false: false
false and true: false
false and false: false

true or true: true
true or false: true
false or true: true
false or false: true

--]]

local name = "churros"
local his_age = 7

-- "is different" operator
if name ~= "shoyuou" and his_age < 10 then
    print("Condition satisfied")
end

if name == "churros" then
    print("His name is churros")
end

-- negation operator
-- inverts the boolean value

--[[
    not true = false
    not false = true
--]]
if not (his_age > 18) then
    print("His name is not churros")
end


if name == "churross" then
    print("name is equal to churros")
elseif name == "churrosss" then
    print("anything")
else
    print("name is not equal to churros")
end












