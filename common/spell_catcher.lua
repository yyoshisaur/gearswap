-- 他者から自身への魔法で装備を着替えるスクリプト
-- アドオンで作っていたものをGearSwapに統合
-- FC=80%では装備変更が間に合わないかもしれません
-- 私の環境ではFC=70%ぐらいで間に合います(各々の環境で要確認)

-- ex. 
-- begin:効果アップ装備などに着替える装備セット、またはコマンド
-- finish:詠唱完了後に着替える装備セット、またはコマンド
-- spell_catcher_detect_spell.phalanx_2.begin = 'gs equip phalanx_equipment_set'
-- spell_catcher_detect_spell.phalanx_2.begin = sets.midcast.phalanx
-- spell_catcher_detect_spell.phalanx_2.finish = 'gs equip idle or engaged set'
spell_catcher_detect_spell = {
    phalanx_2 = {id = 107, begin = nil, finish = nil},
}

spell_catcher_detect_spell_accession = {
    phalanx = {id = 106, begin = nil, finish = nil},
}

local accession_id = 218 -- 女神降臨の章
local accession_player_id = nil

windower.raw_register_event('action', function(act)
    if act.category == 8 then
        if act.targets[1] and act.targets[1].id == windower.ffxi.get_player().id and act.targets[1].actions[1] then
            for k,v in pairs(spell_catcher_detect_spell) do
                if act.targets[1].actions[1].param == v.id then
                    if type(v.begin) == 'string' then
                        windower.send_command(v.begin)
                    elseif type(v.begin) == 'table' then
                        gearswap.equip_sets('equip_command', nil, v.begin)
                    end
                    add_to_chat(160, 'spell_catcher: Begin spell casting ('..k..')')
                end
            end
        elseif act.targets[1] and act.targets[1].id == accession_player_id and act.targets[1].actions[1] then
            for k,v in pairs(spell_catcher_detect_spell_accession) do
                if act.targets[1].actions[1].param == v.id then
                    if type(v.begin) == 'string' then
                        windower.send_command(v.begin)
                    elseif type(v.begin) == 'table' then
                        gearswap.equip_sets('equip_command', nil, v.begin)
                    end
                    add_to_chat(160, 'spell_catcher: Begin spell casting (Accession '..k..')')
                end
            end
        end
    elseif act.category == 4 then
        if act.targets[1] and act.targets[1].id == windower.ffxi.get_player().id then
            for k,v in pairs(spell_catcher_detect_spell) do
                if act.param == v.id then
                    if type(v.finish) == 'string' then
                        windower.send_command(v.finish)
                    elseif type(v.finish) == 'table' then
                        gearswap.equip_sets('equip_command', nil, v.finish)
                    end
                    add_to_chat(160, 'spell_catcher: Finish spell casting ('..k..')')
                end
            end
        elseif act.targets[1] and act.targets[1].id == accession_player_id then
            for k,v in pairs(spell_catcher_detect_spell_accession) do
                if act.param == v.id then
                    if type(v.finish) == 'string' then
                        windower.send_command(v.finish)
                    elseif type(v.finish) == 'table' then
                        gearswap.equip_sets('equip_command', nil, v.finish)
                    end
                    add_to_chat(160, 'spell_catcher: Finish spell casting (Accession '..k..')')
                end
            end
            accession_player_id = nil
        end
    elseif act.category == 6 then
        if act.param == accession_id then
            accession_player_id = act.actor_id
            add_to_chat(160, 'spell_catcher: '..windower.ffxi.get_mob_by_id(accession_player_id).name..' used Accession.')
        end
    end
end)