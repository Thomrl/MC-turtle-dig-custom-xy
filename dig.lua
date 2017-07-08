function intro()  
    print("How far are we going boss?")
    dist = tonumber(read()) -- turns the input into a number
    --dist = input
    print("How many rows?")
    rows = tonumber(read())
    --rows = input
    bk = dist*1
    start()
end
function start()
    turtle.select(16)
    turtle.refuel()
    turtle.select(1)
    mine()
end
function mine()
    --function back()
    --  for i=bk,1,-1 do
    --      turtle.back()
    --  end
    --end
    function nextRow()
        turtle.turnRight()
        turtle.forward()
        turtle.turnLeft()
    end
    function mining()
        for i=dist,1,-1 do
            turtle.dig()
            turtle.forward()
            turtle.digUp()
        end
    end
    function back()
        for b=bk,1,-1 do
            turtle.back()
        end
    end
    for d=rows,1,-1 do
        nextRow()
        mining()
        back()
    end
end
intro()
