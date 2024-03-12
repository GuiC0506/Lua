local name = "churros"
local fullname = name .. " augusto"
local to_string = tostring(10)
print(type(to_string), to_string)
print(type(name))
print("fullname: " .. fullname)
print(#name)

-- escape characters
print("I love \"" .. "Churros" .. "\"")
print("skipping a line \n\tand goes here with a tab")
print("Breaking this text right here\vand going here")

-- ASCII
print(string.char(65))
print(string.byte("A"))
print(string.byte(name, 0, string.len(name)))

-- string methods

local lowercase = string.lower(name)
local uppercase = string.upper(name)
local substring = string.sub(name, 0, 3)
local length0, length1 = #name, string.len(name)
local repeat_string = string.rep(name, 3, " - ")
local formatted_string = string.format("Dog name: %10s", name)
local starts_at, ends_at = string.find(name, "urros") -- returns position
local r_occurency = string.match(name, "r") -- returns string
local replace = string.gsub(name, "urros", "URROS")

print(lowercase)
print(uppercase)
print(substring)
print(length0, length1)
print(repeat_string)
print(formatted_string)
print(starts_at, ends_at)
print(r_occurency)
print(replace)
