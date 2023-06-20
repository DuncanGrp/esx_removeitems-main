-- Registering an event for player respawn
AddEventHandler('esx:onPlayerSpawn', function(playerId)
    -- Getting the player's source
    local playerPed = GetPlayerPed(playerId)
    
    -- Checking if the player's Ped is valid
    if DoesEntityExist(playerPed) then
        -- Removing all items from the player's inventory
        TriggerEvent('esx:removeAllInventoryItems', playerId)
    end
end)
