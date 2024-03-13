local function read_file()
    -- .input() sets default file for reading
    local file = io.input("lua.txt")
    print(io.read("l"))
    print(io.read("l"))
    print(io.read("l"))
    return nil
end

local function via_open_method()
    local file = io.open("beauty_lua.txt", "a+") -- various modes
    if file then
        file:write("Lua is beautiful")
        return file:read()
    end
end

-- lua try/catch
local status_code, result = pcall(read_file)
if status_code then
    print("File setted")
    print(result)
else
    print("Error on reading file: ")
    -- .output() sets default file for writing
    io.output("lua.txt")
    print(result)
end

print("====================")

local status, response = pcall(via_open_method)
if status then
    print(response)
else
    print("error")
end

local content = via_open_method()
print(content)
