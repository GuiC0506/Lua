local routine1 = coroutine.create(
    function()
        for i=1, 10 do
            print("Routine 1: " .. i)
            if i == 4 then
                coroutine.yield()
            end
        end
    end
)

local routine2 = coroutine.create(
    function()
        for i=1, 10 do
            print("Routine 2: " .. i)
        end
    end
)

coroutine.resume(routine1)
print(coroutine.status(routine1))
coroutine.resume(routine2)
coroutine.resume(routine1)
print(coroutine.status(routine1))
