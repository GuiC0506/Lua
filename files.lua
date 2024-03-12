local function read_file()
    io.input("lua.txt")
    local content = io.read(4)
    print(content)
end

-- lua try/catch
local success, error = pcall(read_file)
if success then
    print("File setted")
else
    print("Error on reading file: ")
    print(error)
end
