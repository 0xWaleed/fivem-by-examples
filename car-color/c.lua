print('Hello world from client')


function change_color_to_chrome()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped)
    SetVehicleColours(vehicle, 120, 120)
end

RegisterCommand('chrome', change_color_to_chrome)


function change_color(player, args)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped)
    -- we should cast the argument to number.
    local color = tonumber(args[1])
    SetVehicleColours(vehicle, color, color)
end

RegisterCommand('set-color', change_color)