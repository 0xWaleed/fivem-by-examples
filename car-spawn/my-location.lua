function print_my_location()
    local ped = PlayerPedId()
    local l = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    print('x: ' .. l.x)
    print('y: ' .. l.y)
    print('z: ' .. l.z)
    print('heading: ' .. l.heading)
end

RegisterCommand('my-location', print_my_location)