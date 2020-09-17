state.DisplayMode = M(true, 'Display Mode')
function init_job_states(job_bools,job_modes)

    stateList = job_modes
    stateBool = job_bools

    if stateBox then stateBox:destroy() end

    local settings = windower.get_windower_settings()
    local x,y
    
    if settings["ui_x_res"] == 1920 and settings["ui_y_res"] == 1080 then
        x,y = settings["ui_x_res"]-1917, settings["ui_y_res"]-18 -- -285, -18
    else
        x,y = 0, settings["ui_y_res"]-17 -- -285, -18
    end
    
    
    if displayx then x = displayx end
    if displayy then y = displayy end

    local font = displayfont or 'ＭＳ ゴシック'
    local size = displaysize or 12
    local bold = displaybold or true
    local bg = displaybg or 0
    local strokewidth = displaystroke or 2
    local stroketransparancy = displaytransparancy or 192

    stateBox = texts.new()
    stateBox:pos(x,y)
    stateBox:font(font)--Arial
    stateBox:size(size)
    stateBox:bold(bold)
    stateBox:bg_alpha(bg)--128
    stateBox:right_justified(false)
    stateBox:stroke_width(strokewidth)
    stateBox:stroke_transparency(stroketransparancy)

    update_job_states(stateBox)

end

----------------------------------------------------------------------------------------------------
-- Update display
-- Call from state_change(), job_state_change(), etc.
----------------------------------------------------------------------------------------------------
function update_job_states()

    if not state.DisplayMode.value then
        if stateBox then stateBox:hide() end
        return
    end

    -- Define colors for text in the display
    local clr = {
        h='\\cs(255,192,0)', -- Yellow for active booleans and non-default modals
        w='\\cs(255,255,255)', -- White for labels and default modals
        n='\\cs(192,192,192)', -- White for labels and default modals
        s='\\cs(96,96,96)', -- Gray for inactive booleans
        Fire='\\cs(255,80,80)', -- Red For Fire Element
        Ice='\\cs(140,160,255)', -- Light Blue For Ice Element
        Wind='\\cs(110,255,110)', -- Light Green For Wind Element
        Earth='\\cs(220,214,110)', -- Brown/Yellow For Earth Element
        Lightning='\\cs(190,90,190)', -- Purple For Lightning Element
        Water='\\cs(110,110,255)', -- Blue For Water Element
        Light='\\cs(255,255,155)', -- Light Yellow For Light Element
        Dark='\\cs(90,90,90)', -- Dark Grey For Dark Element
    }
    if state.DisplayColors then
        clr = state.DisplayColors
    end

    local spc = ' '


    stateBox:clear()
    stateBox:append('   ')

    for i,n in pairs(stateList) do
        state_value = state[n.mode].current or ''
        if state[n.mode].current == '' then
            state_value = 'None'
        end
        stateBox:append(string.format("%s"..n.label..':%s'..state_value.."%s", clr.w, clr.h, clr.n))
        stateBox:append(spc)
    end

    for i,n in pairs(stateBool) do
        stateBox:append(string.format("%s"..n.label..':%s'..state[n.mode].current.."%s", clr.w, clr.h, clr.n))
        stateBox:append(spc)
    end
    
    stateBox:update(info)
    stateBox:show()

end

----------------------------------------------------------------------------------------------------
-- Clean up display objects
-- Call from file_unload(), user_unload(), etc.
----------------------------------------------------------------------------------------------------
function clear_job_states()
    if stateBox then stateBox:destroy() end
end


windower.raw_register_event('outgoing chunk', function(id, data)
    if id == 0x00D and stateBox then
        stateBox:hide()
    end
end)

windower.raw_register_event('incoming chunk', function(id, data)
    if id == 0x00A and stateBox and state.DisplayMode.value then
        stateBox:show()
    end
end)
