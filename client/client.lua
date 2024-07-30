RegisterCommand("bills", function()
    SendNUIMessage({
        type = 'open'
        -- Add any additional data you want to send to the NUI here
    })
    SetNuiFocus(true, true)
end)




RegisterNUICallback("closebills", function(data)
    SetNuiFocus(false, false)
end)