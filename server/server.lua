ESX = exports['es_extended']:getSharedObject()


-- Update checking done very easily!!
--[[
PerformHttpRequest('https://raw.githubusercontent.com/boofiboi/bo-notifications/main/VERSION', function(Error, OnlineVersion, Header)
    OfflineVersion = LoadResourceFile('bo-notifications', 'VERSION')
    if OnlineVersion <= OfflineVersion then -- Else if downloaded version file is the same then we dont need to update. 
    print('^3 [DEBUG]: \x1b[97m You are running the latest version of this script!. \x1b[0m')
    end
    if OnlineVersion > OfflineVersion then
        print('^3 [DEBUG]: \x1b[97m There is a new version of this script available, please update ASAP. \x1b[0m')
    end
end)
--]]


RegisterNetEvent('write')
AddEventHandler('write', function(args)
    -- Code to be executed when the event is triggered
    print(source)
    xPlayer = ESX.GetPlayerFromId(source)
    identifier = xPlayer.getIdentifier()
    firstName = xPlayer.getName()
    lastName = "test"
    print(firstName)
    local id = MySQL.insert.await('INSERT INTO `billing` (identifier, sender, target, label, amount) VALUES (?, ?, ?, ?, ?)', {
        identifier, firstName, lastName, args[1], args[2]
    })
    print('Server event triggered!')
end)