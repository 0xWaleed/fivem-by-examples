function print_my_location()
    local ped = PlayerPedId()
    local l = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    print('x: ' .. l.x)
    print('y: ' .. l.y)
    print('z: ' .. l.z)
    print('heading: ' .. heading)
end

RegisterCommand('my-location', print_my_location)


function print_my_car_location()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped)
    local l = GetEntityCoords(vehicle)
    local heading = GetEntityHeading(vehicle)
    print('x: ' .. l.x)
    print('y: ' .. l.y)
    print('z: ' .. l.z)
    print('heading: ' .. heading)
end

RegisterCommand('my-car-location', print_my_car_location)