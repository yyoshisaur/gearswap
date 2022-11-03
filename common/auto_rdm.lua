
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
        if check_spell_buff() then return true end
        if check_ws() then return true end
    end
    return false
end

local ability_buff_lists = {
}

local composure = {
    name='コンポージャー', buff='コンポージャー', id=50, overwrite=60,
}
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

    -- composure
    if not buffactive[composure.buff] and recasts[composure.id] == 0 then
        windower.chat.input('/ja "'..windower.to_shift_jis(composure.name) ..'" <me>')
        tickdelay = os.clock() + 2
        return true
    else
        for i = 1, #buffs do
            if buffs[i] and buffs[i].name == composure.buff and 
                buffs[i].duration < composure.overwrite and
                recasts[composure.id] == 0 then
                windower.chat.input('/ja "'..windower.to_shift_jis(composure.name) ..'" <me>')
                tickdelay = os.clock() + 2
                return true
            end
        end
    end

    return false
end

local spell_buff_lists = {
    {name='アクアベール', buff='アクアベール', id=55, overwrite=30},
    {name='ヘイストII', buff='ヘイスト', id=511, overwrite=30},
    {name='ストライII', buff='マルチアタック', id=895, overwrite=30},
    {name='エンエアロ', buff='エンエアロ', id=102, overwrite=30},
    {name='ファランクスII', buff='ファランクス', id=107, overwrite=30},
    {name='リフレシュII', buff='リフレシュ', id=473, overwrite=30},
    {name='ゲインマイン', buff='MNDアップ', id=491, overwrite=0},
}

local sub_job_spell_lists = {
}
function check_spell_buff()
    if not check_can_use_magic() then return false end
    mode = state.AutoMode.value
    local buffs = player.buff_details
    local recasts = windower.ffxi.get_spell_recasts()
    for i, v in pairs(spell_buff_lists) do
        if not buffactive[v.buff] then
            if recasts[v.id] == 0 then
                windower.chat.input('/ma "'..windower.to_shift_jis(v.name) ..'" <me>')
                tickdelay = os.clock() + 5
                return true
            end
        else 
            for i = 1, #buffs do
                if buffs[i] and buffs[i].name == v.buff then
                    if buffs[i].duration > v.overwrite then
                        break
                    else 
                        if recasts[v.id] == 0 then
                            windower.chat.input('/ma "'..windower.to_shift_jis(v.name) ..'" <me>')
                            tickdelay = os.clock() + 5
                            return true
                        end
                    end
                end
            end
        end
    end

    for i, v in pairs(sub_job_spell_lists) do
        if player.sub_job == v.job then
            if not buffactive[v.buff] then
                if recasts[v.id] == 0 then
                    windower.chat.input('/ma "'..windower.to_shift_jis(v.name) ..'" <me>')
                    tickdelay = os.clock() + 5
                    return true
                end
            else 
                for i = 1, #buffs do
                    if buffs[i] and buffs[i].name == v.buff and
                        buffs[i].duration < v.overwrite and
                        recasts[v.id] == 0 then
    
                        windower.chat.input('/ma "'..windower.to_shift_jis(v.name) ..'" <me>')
                        tickdelay = os.clock() + 5
                        return true
                    end
                end
            end
        end
    end

    return false
end

local use_ws = {
    [1] = 'レッドロータス',
    [2] = 'セラフブレード',
}
local ws_index = 1
local ws_target_id = 0
function check_ws()
    if not check_can_use_ws() then return false end
    if player.tp >= 1000 then
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
