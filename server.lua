ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
    data.victim = source
    if data.killedByPlayer then
        local xPlayer = ESX.GetPlayerFromId(data.killerServerId)
        xPlayer.addMoney(Config.money)
    end
    
end)
