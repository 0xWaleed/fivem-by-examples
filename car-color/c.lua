print('Hello world from client')


function change_color_to_chrome()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn()
    SetVehicleColours(vehicle, 120, 120)
end

RegisterCommand('chrome', change_color_to_chrome)


function change_color()
    -- body
end