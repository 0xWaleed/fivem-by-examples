local currentVehicle = 0

function get_my_location()
    local ped = PlayerPedId()
    local location = GetEntityCoords(ped)
    return location
end

function spawn_vehicle(modelName, x, y, z, heading)
    local hash = GetHashKey(modelName)
    RequestModel(hash)
    repeat Wait(10) until HasModelLoaded(hash)
    local vehicle = CreateVehicle(hash, x, y + 5, z, heading or 0, true, true)
    return vehicle
end

function spawn_vehicle_command_wrapper(modelName)
    return function()
        DeleteVehicle(currentVehicle)
        local loc = get_my_location()
        currentVehicle = spawn_vehicle(modelName, loc.x, loc.y, loc.z)
    end
end

local allVehicles = GetAllVehicleModels()

for _, modelName in ipairs(allVehicles) do
    local commandName = 'car:' .. modelName
    RegisterCommand(commandName, spawn_vehicle_command_wrapper(modelName))
end

function spawn_garage1(player, args)
    local modelName = args[1] or error('Where is modelName?')
    spawn_vehicle(modelName, -1615.2974, 145.3230, 60.429, 327.0)
end


RegisterCommand('garage1', spawn_garage1)