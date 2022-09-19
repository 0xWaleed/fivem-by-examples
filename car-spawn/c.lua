function get_my_location()
    local ped = PlayerPedId()
    local location = GetEntityCoords(ped)
    return location
end

function spawn_vehicle(modelName, x, y, z)
    local hash = GetHashKey(modelName)
    RequestModel(hash)
    repeat Wait(10) until HasModelLoaded(hash)
    local vehicle = CreateVehicle(hash, x, y, z, 0, true, true)
    return vehicle
end

function spawn_vehicle_command_wrapper(modelName)
    return function()
        local loc = get_my_location()
        spawn_vehicle(modelName, loc.x, loc.y, loc.z)
    end
end

local allVehicles = GetAllVehicleModels()

for _, modelName in ipairs(allVehicles) do
    local commandName = 'car:' .. modelName
    RegisterCommand(commandName, spawn_vehicle_command_wrapper(model))
end