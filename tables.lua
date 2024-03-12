-- like arrays
local random = {}

for i=0, 10 do
    local value = math.random(1, 25);
    table.insert(random, value)
end

table.remove(random, 3)

local function binary_search(sorted_array, item)
    local lower = 1
    local greater = #sorted_array

    while lower <= greater do
        local middle_index = (lower + greater) // 2
        local middle_item = sorted_array[middle_index]

        if middle_item == item then
            return middle_index
        end

        if middle_item > item then
            greater = middle_index - 1
        else
            lower = middle_index + 1
        end

    end

    return -1
end

table.sort(random)

local item = binary_search(random, 11)
print(item)
print(table.concat(random, " - "))

-- like multidimensions arrays
local multi_dimension_table = {
    { 1, 2, 3, 4 },
    { 5, 6, 7, 8 },
    { 9, 10, 11, 12 },
}

-- like hash tables
local hash_table = {
    person1 = {
        name = "churros",
        age = 7
    },

    person2 = {
        name = "Guilherme",
        age = 19
    }
}

print(multi_dimension_table[2][1])
print(hash_table.person1.name)
