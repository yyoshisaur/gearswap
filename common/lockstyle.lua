local slots = {
    main = 0,
    sub = 1,
    range = 2,
    ammo = 3,
    head = 4,
    body = 5,
    hands = 6,
    legs = 7,
    feet = 8,
    neck = 9,
    waist = 10,
    left_ear = 11,
    right_ear = 12,
    left_ring = 13,
    right_ring =14,
    back = 15,
}

function lockstyle(lock_style_set, lock_style_name)
    local ls_set = {}

    for s, i in pairs(lock_style_set) do
        if type(i) == 'table' and type(i.name) == 'string' then
            ls_set[slots[s]] = {id = gearswap.res.items:with('name', i.name).id}
        else
            ls_set[slots[s]] = {id = gearswap.res.items:with('name', i).id}
        end
    end

    for bag_id in pairs(gearswap.res.bags) do
        for _, v in ipairs(windower.ffxi.get_items(bag_id)) do
            for s, i in pairs(ls_set) do
                if v.id ==  i.id then
                    ls_set[s].slot = v.slot
                    ls_set[s].bag = bag_id
                end
            end
        end
    end

    local p = gearswap.packets.new('outgoing', 0x053)
    p['Type'] = 3
    p['_unknown1'] = 1
    p['Count'] = 0
    for s, i in pairs(ls_set) do
        p['Count'] = p['Count'] + 1
        p['Inventory Index '..p['Count']] = i.slot
        p['Equipment Slot '..p['Count']] = s
        p['Bag '..p['Count']] = i.bag
        p['Item '..p['Count']] = i.id
    end

    gearswap.packets.inject(p)
    gearswap.log('exec lockstyle '..(lock_style_name or ''))
end