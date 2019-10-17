function get_sets()
    set_language('japanese')
    
    sets.precast = {}
    sets.precast.ws = {}
    sets.precast.ability = {}
    sets.midcast = {}
    sets.aftercast = {}

    sets.maneuvers = S{'ファイアマニューバ','アイスマニューバ', 'ウィンドマニューバ', 'アースマニューバ', 'サンダーマニューバ', 'ウォータマニューバ', 'ライトマニューバ', 'ダークマニューバ',}

    sets.precast.ability.maneuvers_high_strain = {
        main={ name="ミッドナイト", augments={'Pet: Attack+25','Pet: Accuracy+25','Pet: Damage taken -3%',}},
        body="ＫＧファルセト+1",
        hands="ＦＯダスタナ+3",
        neck="バフーンカラー",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.precast.ability.maneuvers_mid_strain = {
        -- main={ name="ミッドナイト", augments={'Pet: Attack+25','Pet: Accuracy+25','Pet: Damage taken -3%',}},
        body="ＫＧファルセト+1",
        hands="ＦＯダスタナ+3",
        neck="バフーンカラー",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.precast.ability.maneuvers_low_strain = {
        -- main={ name="ミッドナイト", augments={'Pet: Attack+25','Pet: Accuracy+25','Pet: Damage taken -3%',}},
        -- body="ＫＧファルセト+1",
        --  hands="ＦＯダスタナ+2",
        neck="バフーンカラー",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.precast.ability.maneuvers_status = {
        main={ name="ミッドナイト", augments={'Pet: Attack+25','Pet: Accuracy+25','Pet: Damage taken -3%',}},
        hands="ＦＯダスタナ+3",
        right_ear="ブラーナピアス",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.precast.ability.maneuvers = sets.precast.ability.maneuvers_mid_strain

    sets.precast.ability['リペアー'] = {
        feet="ＦＯバブーシュ+3",
        left_ear="ギニョルピアス",
        right_ear="プラティクピアス",
    }
    
    sets.precast.ability['オーバードライヴ'] = {body={ name="ＰＩトベ+3", augments={'Enhances "Overdrive" effect',}},}

    sets.midcast.ws_tp = {
        feet={ name="那伽脚絆", augments={'Pet: HP+100','Pet: Accuracy+25','Pet: Attack+25',}},
        back={ name="デスパースマント", augments={'STR+1','DEX+3','Pet: TP Bonus+500',}},
    }

    sets.aftercast.idle_melee = {
        main={ name="オータス", augments={'Accuracy+70','Pet: Accuracy+70','Pet: Haste+10%',}},
        range="Ｐ．ストリンガー+1",
        ammo="ルブリカント+3",
        head={ name="羅王頭成兜改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        body={ name="羅王闘着改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        hands={ name="羅王篠篭手改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        legs={ name="羅王板佩楯改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        feet={ name="羅王篠脛当改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        neck="ロリケートトルク+1",
        waist="クルスカサッシュ+1",
        left_ear="ライムアイスピアス",
        right_ear="ハンドラーピアス+1",
        left_ring="守りの指輪",
        right_ring="オーバーベアリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.aftercast.idle_tank = {
        main="ニャフロンアダーガ",
        range="Ｐ．ストリンガー+1",
        ammo="ルブリカント+3",
        head={ name="羅王頭成兜改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        body={ name="羅王闘着改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        hands={ name="羅王篠篭手改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        legs={ name="羅王板佩楯改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        feet={ name="羅王篠脛当改", augments={'Pet: HP+125','Pet: Accuracy+20','Pet: Damage taken -4%',}},
        neck="ロリケートトルク+1",
        waist="イーサベルト",
        left_ear="ライムアイスピアス",
        right_ear="ハンドラーピアス+1",
        left_ring="守りの指輪",
        right_ring="オーバーベアリング",
        back={ name="ビスシアスマント", augments={'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20','Accuracy+20 Attack+20','Pet: Accuracy+10 Pet: Rng. Acc.+10','Pet: "Regen"+10','System: 1 ID: 1247 Val: 4',}},
    }

    sets.aftercast.idle = sets.aftercast.idle_melee
    sets.aftercast.idle_speed = set_combine(sets.aftercast.idle, {right_ring="シュネデックリング",})

    -- マクロのブック, セット変更
    send_command('input /macro book 3; wait 0.5; input /macro set 1')

end

function precast(spell)
    local set_equip = nil

    -- windower.add_to_chat(123, spell.name)
    -- windower.add_to_chat(123, spell.type)

    if spell.type == 'PetCommand' then
        if sets.maneuvers:contains(spell.name) then
            set_equip = sets.precast.ability.maneuvers
        end
    elseif spell.type == 'JobAbility' then
        if sets.precast.ability[spell.name] then
            set_equip = sets.precast.ability[spell.name]
        end
    end

    if set_equip then
        equip(set_equip)
    end
end

function midcast(spell)
    local set_equip = nil
end

function aftercast(spell)
    local set_equip = nil
    
    -- if player.status == 'Engaged' then
    --     set_equip = sets.aftercast.idle
    -- else
    --     set_equip = sets.aftercast.idle
    -- end
    
    if pet.status == 'Engaged' then
        set_equip = sets.aftercast.idle
    else
        set_equip = sets.aftercast.idle_speed
    end

    if set_equip then
        equip(set_equip)
    end
end

function status_change(new, old)
    local set_equip = nil
    
    -- if new == 'Idle' then
    --     set_equip = sets.aftercast.idle
    -- elseif new == 'Engaged' then
    --     set_equip = sets.aftercast.melee
    -- end
    
    if pet.status == 'Engaged' then
        set_equip = sets.aftercast.idle
    else
        set_equip = sets.aftercast.idle_speed
    end

    if set_equip then
        equip(set_equip)
    end
end

function pet_midcast(spell)
    -- windower.add_to_chat(123, spell.name)
    -- windower.add_to_chat(123, spell.type)
    -- windower.add_to_chat(123, pet.tp)

    local set_equip = nil

    -- if spell.type == 'MonsterSkill' then
    --     set_equip = sets.midcast.ws_tp
    -- end

    if set_equip then
        equip(set_equip)
    end
end

function pet_aftercast(spell)
    local set_equip = nil
    
    -- if player.status == 'Engaged' then
    --     set_equip = sets.aftercast.idle
    -- else
    --     set_equip = sets.aftercast.idle
    -- end
    
    if pet.status == 'Engaged' then
        set_equip = sets.aftercast.idle
    else
        set_equip = sets.aftercast.idle_speed
    end

    if set_equip then
        equip(set_equip)
    end
end

function pet_status_change(new, old)
    local set_equip = nil
    -- windower.add_to_chat(122, 'old='..old)
    if old == 'Engaged' then
        set_equip = sets.aftercast.idle_speed
    else
        set_equip = sets.aftercast.idle
    end

    if set_equip then
        equip(set_equip)
    end
end

local is_auto_maneuvers = false
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
local auto_maneuvers = {}
function self_command(command)
    local args = command:split(' ')
    if args[1] == 'am' then
        if args[2] == 'off' then
            is_auto_maneuvers = false
            windower.add_to_chat(122,'Auto Maneuvers off')
        else
            local maneuver_1, maneuver_2, maneuver_3 = nil
            if args[2] then
                maneuver_1 = windower.convert_auto_trans(args[2])
            else
                windower.add_to_chat(122,'No Maneuver 1 given.')
                return
            end

            if args[3] then
                maneuver_2 = windower.convert_auto_trans(args[3])
            else
                windower.add_to_chat(122,'No Maneuver 2 given.')
                return
            end

            if args[4] then
                maneuver_3 = windower.convert_auto_trans(args[4])
            else
                windower.add_to_chat(122,'No Maneuver 3 given.')
                return
            end
            set_maneuvers(maneuver_1, maneuver_2, maneuver_3)
        end
    elseif args[1] == 'melee' then
        sets.aftercast.idle = sets.aftercast.idle_melee
        sets.aftercast.idle_speed = set_combine(sets.aftercast.idle, {right_ring="シュネデックリング",})
        equip(sets.aftercast.idle)
        windower.add_to_chat(122,'---> オートマトン MELEE')
    elseif args[1] == 'tank' then
        sets.aftercast.idle = sets.aftercast.idle_tank
        sets.aftercast.idle_speed = set_combine(sets.aftercast.idle, {right_ring="シュネデックリング",})
        equip(sets.aftercast.idle)
        windower.add_to_chat(122,'---> オートマトン TANK')
    elseif args[1] == 'mane' then
        if args[2] == 'high' then
            sets.precast.ability.maneuvers = sets.precast.ability.maneuvers_high_strain
            windower.add_to_chat(122,'---> マニューバ　オーバーロード確率 -100%')
        elseif args[2] == 'mid' then
            sets.precast.ability.maneuvers = sets.precast.ability.maneuvers_mid_strain
            windower.add_to_chat(122,'---> マニューバ　オーバーロード確率 -60%')
        elseif args[2] == 'low' then
            sets.precast.ability.maneuvers = sets.precast.ability.maneuvers_low_strain
            windower.add_to_chat(122,'---> マニューバ　オーバーロード確率 -15%')
        elseif args[2] == 'status' then
            sets.precast.ability.maneuvers = set_combine(sets.precast.ability.maneuvers, sets.precast.ability.maneuvers_status)
            windower.add_to_chat(122,'---> マニューバ　ステータス + 10')
        else
            sets.precast.ability.maneuvers = sets.precast.ability.maneuvers_mid_strain
            windower.add_to_chat(122,'---> マニューバ　オーバーロード確率 -60%')
        end
    elseif args[1] == 'idle' then
        if pet.status == 'Engaged' then
            equip(sets.aftercast.idle)
            windower.add_to_chat(122,'---> オートマトン IDLE')
        else
            equip(sets.aftercast.idle_speed)
            windower.add_to_chat(122,'---> オートマトン SPEED')
        end
    end
end

update_time = 0
update_interval = 1
-- windower.register_event('prerender', function()
--     local curr = os.clock()
--     if curr > frame_time + update_interval then
--         frame_time = curr
--         exec_maneuver()
--     end
-- end)

windower.register_event('time change', function(new, old)
    local curr = os.clock()
    if curr > update_time + update_interval then
        update_time = curr
        if not buffactive['アムネジア'] then
            exec_maneuver()
        end
    end
end)

function set_maneuvers(maneuver_1, maneuver_2, maneuver_3)
    -- auto_maneuvers[1] = maneuver_1
    -- auto_maneuvers[2] = maneuver_2
    -- auto_maneuvers[3] = maneuver_3

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

    if  auto_maneuvers[1] and auto_maneuvers[2] and  auto_maneuvers[3] then
        is_auto_maneuvers = true
        windower.add_to_chat(122,'M1: '..auto_maneuvers[1].name..', M2: '..auto_maneuvers[2].name..', M3: '..auto_maneuvers[3].name)
    else
        windower.add_to_chat(122,'Invalid Maneuvers.')
        is_auto_maneuvers = false
    end

end

local maneuver_time = 60

function exec_maneuver()
    local os_time = os.time()
    local buffs = player.buff_details
    local recasts = windower.ffxi.get_ability_recasts()

    
    if not pet.isvalid then
        maneuver_time = 60
        return
    end

    for i = 1, #buffs do
        if sets.maneuvers:contains(buffs[i].name) then
            local buff_time = math.floor(buffs[i].time - os_time)
            if buff_time > maneuver_time then
                maneuver_time = buff_time
                -- windower.add_to_chat(122, 'UPDATE MANUEVER TIME: '..maneuver_time..' sec ('..math.floor(maneuver_time*0.2)..' sec)')
                break
            end
        end
    end

    if is_auto_maneuvers then

        local maneuvers_exists = {[1] = false, [2] = false, [3] = false}

        -- Chcek exists manevers in buffs
        for i = #buffs, 1, -1 do
            if buffs[i].name == auto_maneuvers[1].name and not maneuvers_exists[1] then
                maneuvers_exists[1] = true
            elseif buffs[i].name == auto_maneuvers[2].name and not maneuvers_exists[2] then
                maneuvers_exists[2] = true
            elseif buffs[i].name == auto_maneuvers[3].name and not maneuvers_exists[3] then
                maneuvers_exists[3] = true
            end
        end

        for i, exists in ipairs(maneuvers_exists) do
            if not exists then
                if recasts[210] == 0 then
                    -- windower.add_to_chat(122, 'NEW MANUEVER: '..auto_maneuvers[i].name)
                    send_command('input /pet '..windower.to_shift_jis(auto_maneuvers[i].name)..' <me>;')
                end
                return
            end
        end

        -- Check updates manevers
        for i = #buffs, 1, -1 do
            local buff_time = buffs[i].time - os_time
            if buffs[i].name == auto_maneuvers[1].name then
                if buff_time < maneuver_time * 0.2 then
                    if recasts[210] == 0 then
                        -- windower.add_to_chat(122, 'UPDATE MANUEVER: '..auto_maneuvers[1].name)
                        send_command('input /pet '..windower.to_shift_jis(auto_maneuvers[1].name)..' <me>;')
                    end
                    return
                end
            elseif buffs[i].name == auto_maneuvers[2].name then
                if buff_time < maneuver_time * 0.2 then
                    if recasts[210] == 0 then
                        -- windower.add_to_chat(122, 'UPDATE MANUEVER: '..auto_maneuvers[2].name)
                        send_command('input /pet '..windower.to_shift_jis(auto_maneuvers[2].name)..' <me>;')
                    end
                    return
                end
            elseif buffs[i].name == auto_maneuvers[3].name then
                if buff_time < maneuver_time * 0.2 then
                    if recasts[210] == 0 then
                        -- windower.add_to_chat(122, 'UPDATE MANUEVER: '..auto_maneuvers[3].name)
                        send_command('input /pet '..windower.to_shift_jis(auto_maneuvers[3].name)..' <me>;')
                    end
                    return
                end
            end
        end
    end
end

-- local exec_maneuver_index = 1
-- local maneuver_time = 60
-- local maneuver_count = 0
-- function exec_maneuver2()
--     local os_time = os.time()
--     local buffs = player.buff_details
--     local recasts = windower.ffxi.get_ability_recasts()

--     for i = 1, #buffs do
--         if sets.maneuvers:contains(buffs[i].name) then
--             local buff_time = buffs[i].time - os_time
--             if buff_time > maneuver_time then
--                 maneuver_time = buff_time
--                 windower.add_to_chat(122, 'UPDATE MANUEVER TIME: '..maneuver_time)
--                 break
--             end
--         end
--     end

--     if is_auto_maneuvers then
        
--         if not pet.isvalid then
--             exec_maneuver_index = 1
--             maneuver_time = 60
--             maneuver_count = 0
--             return
--         end

--         for i = #buffs, 1, -1 do
--             local buff_time = buffs[i].time - os_time

--             if buffs[i].name == auto_maneuvers[exec_maneuver_index].name then
--                 if buff_time < maneuver_time * 0.2 then
--                     if recasts[210] == 0 then
--                         windower.add_to_chat(122, 'UPDATE MANUEVER: '..auto_maneuvers[exec_maneuver_index].name)
--                         send_command('input /pet '..windower.to_shift_jis(auto_maneuvers[exec_maneuver_index].name)..' <me>;')
--                         exec_maneuver_index = exec_maneuver_index + 1
--                         if exec_maneuver_index > 3 then exec_maneuver_index = 1 end
--                         return
--                     end
--                 end

--                 if maneuver_count == 3 then
--                     return
--                 end

--             end
--         end

--         if recasts[210] == 0 then
--             windower.add_to_chat(122, 'NEW MANUEVER: '..auto_maneuvers[exec_maneuver_index].name)
--             send_command('input /pet '..windower.to_shift_jis(auto_maneuvers[exec_maneuver_index].name)..' <me>;')
--             maneuver_count = maneuver_count + 1
--             if maneuver_count > 3 then maneuver_count = 3 end
--             exec_maneuver_index = exec_maneuver_index + 1
--             if exec_maneuver_index > 3 then exec_maneuver_index = 1 end
--         end
--     end
-- end

windower.register_event('zone change', function()
    is_auto_maneuvers = false
    maneuver_time = 60
end)

    -- player.buffdetails name time buff date
    -- local os_time = os.time()
    -- for i, buff in pairs(player.buff_details) do

    --     buff_time = buff.time - os_time
    --     local second = math.floor( buff_time % 60 )
    --     local minute = math.floor( buff_time / 60 )
    --     -- windower.add_to_chat(122, buff.name..' '..minute..'m '..second..'s')

    --     -- for j, b in pairs(buff.buff) do
    --     --     windower.add_to_chat(123, j..b)
    --     -- end

    --     -- for k, d in pairs(buff.date) do
    --     --     windower.add_to_chat(124, k..d)
    --     -- end
    -- end