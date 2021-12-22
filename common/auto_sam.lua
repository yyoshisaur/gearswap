
include('simple_auto')

function init_auto_mode()
    state.AutoMode = M{['description']='Auto Mode', 'Off', 'Engage'}
end

function simple_tick()
    -- windower.add_to_chat(123, tostring(moving))
    -- if check_rune() then return true end
    local current_auto_mode = state.AutoMode.value
    if current_auto_mode == 'Off' then return false end

    if current_auto_mode == 'Engage' then
        if player.status ~= 'Engaged' then return false end
        if check_ability_buff() then return true end
        if check_ws() then return true end
    end
    return false
end

local ability_buff_lists = {
    {name='黙想', id=134},
    -- {name='リタリエーション', id=8},
    -- {name='リストレント', id=9},
}

local hasso = {name='八双', buff='八双', id=138, t='<me>', job='侍', overwrite=30}

function check_ability_buff()
    if not check_can_use_ability() then return false end
    local recasts = windower.ffxi.get_ability_recasts()
    local buffs = player.buff_details

    for i, v in pairs(ability_buff_lists) do
        if recasts[v.id] == 0 then
            windower.chat.input('/ja "'..windower.to_shift_jis(v.name) ..'" <me>')
            tickdelay = os.clock() + 2
            return true
        end
    end

    -- hasso
    if not buffactive[hasso.buff] and recasts[hasso.id] == 0 then
        windower.chat.input('/ja "'..windower.to_shift_jis(hasso.name) ..'" <me>')
        tickdelay = os.clock() + 2
        return true
    else
        for i = 1, #buffs do
            if buffs[i] and buffs[i].name == hasso.buff and 
                buffs[i].duration < hasso.overwrite and
                recasts[hasso.id] == 0 then
                windower.chat.input('/ja "'..windower.to_shift_jis(hasso.name) ..'" <me>')
                tickdelay = os.clock() + 2
                return true
            end
        end
    end
    return false
end

local use_ws = {
    [1] = '祖之太刀・不動',
    [2] = '九之太刀・花車',
    [3] = '十\\二之太刀・照破',
    [4] = '十\\二之太刀・照破',
}
local ws_index = 1
local ws_target_id = 0
function check_ws()
    if not check_can_use_ws() then return false end
    if player.tp > 1000 then
        ws_target_id = windower.ffxi.get_mob_by_target('t').id
        windower.chat.input('/ws "'..windower.to_shift_jis(use_ws[ws_index]) ..'" <t>')
        ws_index = ws_index % #use_ws + 1
        tickdelay = os.clock() + 5
        return true
    end
    return false
end

windower.raw_register_event("action message", function(actor_id, target_id, actor_index, target_index, message_id, param_1, param_2, param_3)
    if message_id == 6 or message_id == 20 then
        if target_id == ws_target_id then
            ws_index = 1
        end
    end
end)
