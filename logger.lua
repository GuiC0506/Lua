_G.Logger = {
    show_nothing =
    function()
        print("nothing")
    end
}


-- function has to be global to use as part of the module
function Logger.show_a_number()
    print(math.random(1, 10))
end

Logger.log =
function(message)
    print(message)
end



print("hello from logger module")

return Logger
