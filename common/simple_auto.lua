tickdelay = os.clock() + 5
windower.register_event('prerender', function()
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