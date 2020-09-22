state = state or {}
local update_time = 0
local update_interval = 1
local maneuver_time = 60
local maneuvers = S{'ファイアマニューバ','アイスマニューバ', 'ウィンドマニューバ', 'アースマニューバ', 'サンダーマニューバ', 'ウォータマニューバ', 'ライトマニューバ', 'ダークマニューバ',}
local maneuvers_id = {
    {id=141,en="Fire Maneuver",ja="ファイアマニューバ",command=S{"ファイアマニューバ", "炎"},},
    {id=142,en="Ice Maneuver",ja="アイスマニューバ",command=S{"アイスマニューバ", "氷"},},
    {id=143,en="Wind Maneuver",ja="ウィンドマニューバ",command=S{"ウィンドマニューバ", "風"},},
    {id=144,en="Earth Maneuver",ja="アースマニューバ",command=S{"アースマニューバ", "土"},},
    {id=145,en="Thunder Maneuver",ja="サンダーマニューバ",command=S{"サンダーマニューバ", "雷"},},
    {id=146,en="Water Maneuver",ja="ウォータマニューバ",command=S{"ウォータマニューバ", "水"},},
    {id=147,en="Light Maneuver",ja="ライトマニューバ",command=S{"ライトマニューバ", "光"},},
    {id=148,en="Dark Maneuver",ja="ダークマニューバ",command=S{"ダークマニューバ", "闇"},},
}

state.AutoManuevers = M(false, "AutoManuevers")

windower.register_event('time change', function(new, old)
    local curr = os.clock()
    if curr > update_time + update_interval then
        update_time = curr
        if not buffactive['アムネジア'] and not buffactive['睡眠'] then
            exec_maneuver()
        end
    end
end)

function set_maneuvers(maneuver_1, maneuver_2, maneuver_3)
    auto_maneuvers = {}

    for i, v in ipairs(maneuvers_id) do
        if v.command:contains(maneuver_1) then
            auto_maneuvers[1] = {name=v.ja, id=v.id}
        end

        if v.command:contains(maneuver_2) then
            auto_maneuvers[2] = {name=v.ja, id=v.id}
        end

        if v.command:contains(maneuver_3) then
            auto_maneuvers[3] = {name=v.ja, id=v.id}
        end
    end

    if  auto_maneuvers[1] and auto_maneuvers[2] and auto_maneuvers[3] then
        state.AutoManuevers:set(true)
        windower.add_to_chat(122,'M1: '..auto_maneuvers[1].name..', M2: '..auto_maneuvers[2].name..', M3: '..auto_maneuvers[3].name)
    else
        state.AutoManuevers:set(false)
    end
    if state.DisplayMode.value then update_job_states() end
end

function exec_maneuver()
    local buffs = player.buff_details
    local recasts = windower.ffxi.get_ability_recasts()

    if not pet.isvalid then
        maneuver_time = 60
        return
    end

    for i = 1, #buffs do
        if buffs[i] and maneuvers:contains(buffs[i].name) then
            if buffs[i].duration > maneuver_time then
                maneuver_time = buffs[i].duration
                break
            end
        end
    end

    if not state.AutoManuevers.value then return end

    local maneuvers_exists = {[1] = false, [2] = false, [3] = false}

    -- Chcek exists manevers in buffs
    for i = #buffs, 1, -1 do
        if buffs[i] and buffs[i].name == auto_maneuvers[1].name and not maneuvers_exists[1] then
            maneuvers_exists[1] = true
        elseif buffs[i] and buffs[i].name == auto_maneuvers[2].name and not maneuvers_exists[2] then
            maneuvers_exists[2] = true
        elseif buffs[i] and buffs[i].name == auto_maneuvers[3].name and not maneuvers_exists[3] then
            maneuvers_exists[3] = true
        end
    end

    for i, exists in ipairs(maneuvers_exists) do
        if not exists then
            if recasts[210] == 0 then
                send_command('input /pet '..windower.to_shift_jis(auto_maneuvers[i].name)..' <me>;')
            end
            return
        end
    end

    -- Check updates manevers
    for i = #buffs, 1, -1 do
        if buffs[i] then
            if buffs[i] and buffs[i].name == auto_maneuvers[1].name then
                if buffs[i].duration < maneuver_time * 0.2 then
                    if recasts[210] == 0 then
                        send_command('input /pet '..windower.to_shift_jis(auto_maneuvers[1].name)..' <me>;')
                    end
                    return
                end
            elseif buffs[i] and buffs[i].name == auto_maneuvers[2].name then
                if buffs[i].duration < maneuver_time * 0.2 then
                    if recasts[210] == 0 then
                        send_command('input /pet '..windower.to_shift_jis(auto_maneuvers[2].name)..' <me>;')
                    end
                    return
                end
            elseif buffs[i] and buffs[i].name == auto_maneuvers[3].name then
                if buffs[i].duration < maneuver_time * 0.2 then
                    if recasts[210] == 0 then
                        send_command('input /pet '..windower.to_shift_jis(auto_maneuvers[3].name)..' <me>;')
                    end
                    return
                end
            end
        end
    end
end

windower.register_event('zone change', function()
    state.AutoManuevers:set(false)
    maneuver_time = 60
    if state.DisplayMode.value then update_job_states() end
end)