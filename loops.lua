local arr = {}

for i=0, 10, 1 do
    local random = math.random(1, 10)
    table.insert(arr, random)
end

print("==============")

-- it starts at 1. I am shocked
for i=1, #arr do
end

local counter = 0
while true do
    counter = counter + 1
    if counter == 9 then
        break
    end
end

-- runs at least once, like "do while"
-- if until logic is always false, then it turns into a infinite loop
local user_input
local incrementer = 0
repeat
    io.write("Type anything: ")
    user_input = io.read()
    incrementer = incrementer + 1
until incrementer > 2
