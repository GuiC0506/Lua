local random = { 5, 1, 3, 13, 11, 15 }

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
print(random[1])

local item = binary_search(random, 11)
print(item)
