local time = os.time({
    -- from 1970 time to x time
    year = 1970,
    month = 1,
    day = 1
})
print(time)

local birth = os.time({
    year = 2004,
    month = 6,
    day = 5
})

local difftime = os.difftime(os.time(), birth)
print(difftime)
print(os.date()) -- get current date
print(os.getenv("HOME")) -- environment variables
os.execute("echo 'executing a command inside my lua file' && whoami")

-- benchmark
local start = os.clock()

for i=1, 1000000 do
    local x = i
end

print(os.clock() - start)
os.exit(0)
