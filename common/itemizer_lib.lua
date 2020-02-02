local delay = 0.5
function get_equip(equips)
    local itemizer_command = ''
    for i, e in ipairs(equips) do
        itemizer_command = itemizer_command..e.get..' '..e.name..' '..e.bag..';wait '..delay..';'
    end
    send_command(itemizer_command)
end

function put_equip(equips)
    local itemizer_command = ''
    for i, e in ipairs(equips) do
        itemizer_command = itemizer_command..e.put..' '..e.name..' '..e.bag..';wait '..delay..';'
    end
    send_command(itemizer_command)
end