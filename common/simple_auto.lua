tickdelay = os.clock() + 5
windower.raw_register_event('prerender', function()
    if not (os.clock() > tickdelay) then return end

    if simple_tick then
        if simple_tick() then return end
    end
    tickdelay = os.clock() + 0.5

end)

lastlocation = 'fff':pack(0,0,0)
moving = false
wasmoving = false

windower.raw_register_event('outgoing chunk',function(id,data,modified,is_injected,is_blocked)
    if id == 0x015 then
        moving = lastlocation ~= modified:sub(5, 16)
        lastlocation = modified:sub(5, 16)
		wasmoving = moving
    end
end)

function check_can_use_ability()
    if buffactive['アムネジア'] or buffactive['麻痺'] or buffactive['装備変更不可'] or buffactive['石化'] or buffactive['魅了'] or buffactive['インペア'] then 
        return false
    end
    return true
end

function check_can_use_ws()
    if buffactive['アムネジア'] or buffactive['装備変更不可'] or buffactive['石化'] or buffactive['魅了'] or buffactive['インペア'] then 
        return false
    end
    return true
end

function check_can_use_magic()
    if buffactive['静寂'] or buffactive['沈黙'] or buffactive['石化'] or buffactive['魅了'] or buffactive['オメルタ'] then
        return false
    end
    return true
end

function check_doom()
    if buffactive['死の宣告'] then
        return true
    end
    return false
end