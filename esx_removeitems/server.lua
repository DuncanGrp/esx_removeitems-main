-- Registering an event for player spawn
AddEventHandler('playerSpawned', function(spawn)
    -- Getting the player's source
    local playerId = source
    local playerPed = GetPlayerPed(playerId)
    
    -- Checking if the player's Ped is valid
    if DoesEntityExist(playerPed) then
        -- Removing all items from the player's inventory
        TriggerEvent('esx:removeAllInventoryItems', playerId)
    end
end)
