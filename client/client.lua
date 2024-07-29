RegisterCommand("writetomysql", function(source, args, rawCommand)
    -- Parse the arguments
    local playerName = GetPlayerName(source)

    TriggerServerEvent("write",args)
end)