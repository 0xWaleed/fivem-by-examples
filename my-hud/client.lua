DisplayRadar(false)

GiveWeaponToPed(PlayerPedId(), `WEAPON_RPG`, 100, false, true)

AddEventHandler('playerSpawned', function()
    GiveWeaponToPed(PlayerPedId(), `WEAPON_RPG`, 100, false, true)
end)

RegisterCommand('add-armour', function(_, args)
    local amount = args[1] or 100
    SetPedArmour(PlayerPedId(), amount)
end)

AddEventHandler('playerSpawned', function()
    local userId = 100
    exports['0xW']:setState('userId', userId)
end)